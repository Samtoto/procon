#!/usr/bin/ruby
h=Hash.new{|h,k|h[k]=[]}
$<.drop(1).each{|l|
	x=l.split
	case x[0]
		when 'push'; h[x[1]]<<x[2]
		when 'pop';  puts h[x[1]].pop
		when 'move'; h[x[2]]<<h[x[1]].pop
		when 'quit'; exit
	end
}