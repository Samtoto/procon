// http://qiita.com/Nabetani/items/1c83005a854d2c6cbb69
// http://nabetani.sakura.ne.jp/hena/ord24eliseq/

package main
import (
	"fmt"
	"math"
	"bufio"
	"os"
)

func is_sq(n int) bool{
	x:=int(math.Sqrt(float64(n)))
	return x*x==n
}
func is_cb(n int) bool{
	x:=int(math.Cbrt(float64(n)))
	return x*x*x==n
}
func is_multiple(i int,n int) bool{ return i%n==0 }
func is_le(i int,n int) bool{ return i<=n }

func generate() <-chan int{
	ch := make(chan int)
	go func(){
		i:=1
		for {
			ch <- i
			i++
		}
	}()
	return ch
}

func drop_prev(check func(int)bool,prev <-chan int) <-chan int{
	ch := make(chan int)
	go func(){
		a:=<-prev
		b:=<-prev
		for {
			if !check(b) { ch<-a }
			a=b
			b=<-prev
		}
	}()
	return ch
}

func drop_next(check func(int)bool,prev <-chan int) <-chan int{
	ch := make(chan int)
	go func(){
		a:=<-prev
		b:=<-prev
		ch<-a
		for {
			if !check(a) { ch<-b }
			a=b
			b=<-prev
		}
	}()
	return ch
}

func drop_n(check func(int,int)bool,n int,prev <-chan int) <-chan int{
	ch := make(chan int)
	go func(){
		i:=0
		for {
			i++
			a:=<-prev
			if !check(i,n) { ch<-a }
		}
	}()
	return ch
}

func main(){
	f:=map[int]func(<-chan int)<-chan int{
		'S': func(prev <-chan int)<-chan int{return drop_next(is_sq,prev)},
		's': func(prev <-chan int)<-chan int{return drop_prev(is_sq,prev)},
		'C': func(prev <-chan int)<-chan int{return drop_next(is_cb,prev)},
		'c': func(prev <-chan int)<-chan int{return drop_prev(is_cb,prev)},
		'h': func(prev <-chan int)<-chan int{return drop_n(is_le,100,prev)},
	}
	for i:=2;i<10;i++ {
		j:=i //寿命が短いスコープを作ることで、ラムダ式のキャプチャでバグらないようにする。
		f[j+'0']=func(prev <-chan int)<-chan int{return drop_n(is_multiple,j,prev)}
	}

	sin:=bufio.NewReader(os.Stdin)
	_line,_,_:=sin.ReadLine()
	line:=string(_line)
	for line!="" {
		ch := generate()
		for _,c:=range(line) {
			ch=f[int(c)](ch)
		}
		for i:=0;i<10;i++ {
			if i>0 { fmt.Print(",") }
			a:=<-ch
			fmt.Printf("%d",a)
		}
		fmt.Println()
		_line,_,_=sin.ReadLine()
		line=string(_line)
	}
}