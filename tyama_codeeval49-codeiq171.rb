#!/usr/bin/ruby
mode=:codeeval49
#mode=:codeiq171
x=[]

if mode==:codeeval49
	h=Hash.new{|h,k|h[k]={}}
	while gets
		a=$_.split
		h[a[-2]][a[-1]]=1
		x<<[a[-1],a[-2]] if h[a[-1]][a[-2]]
	end
else
	while DATA.gets
		a,b=$_.chomp.split('=')
		x<<[a,b]
	end
end

h=[]
x.each{|a,b|
	an=nil;bn=nil
	h.each_with_index{|e,i|
		an=i if e.index(a)
		bn=i if e.index(b)
	}
	if !an&&!bn
		h<<[a,b]
	elsif !an
		h[bn]<<a
	elsif !bn
		h[an]<<b
	elsif an!=bn
		h[an]|=h[bn]
		h.delete_at(bn)
	end
}

if mode==:codeeval49
	puts h.select{|e|e.uniq.size>2}.map{|e|e.sort*', '}.sort
else
	puts h.map{|e|e.sort*'='}.sort
end
=begin
A=B
C=D
B=C
=> A=B=C=D
=end
__END__
Lib=Bettie
Reg=Reggie
Larry=Lawrence
Joann=Johanna
Tessa=Terri
Theodore=Ted
Liza=Lisa
Kenneth=Kenny
Jimbo=Jim
Sadie=Sara
Laurie=Laurence
Jilly=Jill
Lena=Magda
Ham=Abe
Roberta=Bobbie
Franklin=Frank
Mick=Mike
Dominic=Dominique
Billy=William
Louis=Louie
Stephy=Steph
Terry=Tel
Mick=Michael
Allie=Ally
Tommy=Thomas
Mandy=Amy
Jeanie=Yoanna
Kimberly=Kim
Katherine=Kay
Dominique=Dominic
Magdalene=Madeleine
Lex=Lexie
Lyn=Carrie
Timmy=Timothy
Nickie=Niki
Helen=Nell
Ozzie=Oz
Madge=Peg
Kirkus=Kirkwood
Steve=Stevie
Pru=Prue
Pip=Philippa
Prudence=Pru
Alexandra=Alexander
Carmelita=Lita
Ginny=Ginger
Willie=Bill
Elisa=Betty
Pat=Patricia
Lyn=Carol
Robby=Bert
Eleanor=Nell
Janis=Jan
Nicole=Nickie
Rosie=Rose
Micky=Michael
Al=Alexander
Ned=Edward
Fred=Alfie
Florrie=Florence
Deborah=Deb
Magdalene=Magdalena
Ginger=Virginia
Jonnie=Jon
Alfie=Alf
Xander=Sandy
Izzy=Bell
Suzy=Susie
Danny=Daniel
Kathy=Katherine
Jonny=Jonnie
Kim=Kimberly
Victoria=Tor
Deb=Debbie
Lex=Eck
Abraham=Abe
Rose=Rosie
Madge=Maggie
Mary=Polly
Kimmy=Kim
Oswald=Oz
Philippa=Pippa
Len=Leonard
Cary=Carrie
Nicole=Nikki
Janet=Joanne
Artie=Art
Chuck=Chas
Ann=Anne
Allie=Alan
Andy=Drea
Nikki=Nicole
Betty=Bettie
Ron=Ronald
Barbie=Barbara
Nelly=Helen
Prill=Prisca
Beth=Liza
Zebadiah=Zeb
Charlie=Charles
Vickie=Vick
Katherine=Kate
Maddie=Magda
Lawrence=Laurence
Stephen=Stevie
Chas=Chuck
James=Jim
Joseph=Joe
Micky=Mick
Rudy=Rudolfe
Ronnie=Ron
Alec=Alex
Bessie=Bessy
Tory=Tor
Bert=Bob
Barbara=Barb
Tricia=Trish
Janis=Janice
Alfie=Fred
Lou=Louis
Molly=Polly
Sue=Susie
Elisa=Eliza
Andie=Drew
Dominique=Dom
Joe=Joseph
Jan=Janice
Nelly=Nellie
Archy=Archibald
Samantha=Samuel
Kit=Christopher
Artie=Arthur
Niki=Nicki
Jon=Jonnie
Charles=Charlie
Bert=Robby
Maddie=Magdalena
Nellie=Nell
Carmelita=Carmela
Joanna=Jo
Dan=Danny
Petey=Pete
Nici=Niki
Betty=Lib
Topher=Kit
Debbie=Deb
Dick=Rick
Robbie=Bobbie
Kirk=Kirkwood
Polly=Molly
Dorothy=Dot
John=Jackie
Alfred=Alf
Bell=Bella
Dan=Daniel
Jeannie=Jeanie
Joanne=Joann
Jane=Jayne
Alexis=Alex
Sue=Susan
Pru=Prudence
Dave=David
Tory=Vick
Timothy=Timmy
Carrie=Lyn
Ben=Benjamin
Meg=Margaret
Rod=Roddy
Gaby=Gabe
Margaret=Madge
Ron=Ronnie
Steph=Stephy
Lizzie=Liz
Kay=Kat
Flo=Florrie
Philippa=Pippy
Alexandra=Al
Louie=Louis
Sandra=Andra
Sadie=Sarah
Mikey=Mick
Dave=Davy
Andy=Andie
Jannete=Jeannie
Pip=Pippy
Lenny=Lennie
Joanna=Jayne
Dick=Richard
Beth=Bess
Helen=Nellie
Barbie=Barb
Peter=Pete
Jake=Jakey
Jeanny=Jenny
Kathy=Kat
Oswald=Ozzy
Kenny=Ken
Terri=Theresa
Archibald=Archie
Zack=Zach
Zeb=Zebby
Bobby=Bobert
Nicky=Nicholas
Rick=Ritchie
Virginia=Ginny
Janet=Janete
Tel=Terry
Stephanie=Steph
Teddy=Ted
Gabriel=Gaby
Gabriel=Gabe
Kirkus=Kirk
Rudolph=Rudy
Alexis=Alec
Bill=Billy
Kit=Topher
Jayne=Jannete
Tom=Thomas
Topher=Criffer
Ant=Anthony
Carol=Lyn
Jessie=Jessica
Ally=Allie
Trish=Patty
Topher=Christopher
Kenny=Kenneth
Sam=Sammy
Nickie=Nicki
William=Will
Sammy=Sam
Lizzie=Lisa
Nick=Nicky
Andrea=Andie
Jill=Gillian
Henry=Hal
Peg=Peggy
Deborah=Debbie
Ritchie=Rick
Chris=Christopher
Prue=Prudence
Joey=Joe
Willy=Billy
Bell=Isabella
Steve=Stephen
Nikki=Nickie
Joel=Joseph
Ronald=Ronnie
Prisca=Priss
Sammy=Samantha
Peg=Margaret
Anthony=Tony
Lib=Libby
Terence=Tel
Nicholas=Nick
Carolyn=Carol
James=Jimmy
Bill=Will
Rod=Rodney
Nathan=Jon
Jane=Jannette
Jock=Jackie
Joey=Joel
Lawrence=Larry
Bobert=Rob
Betsy=Liza
Lyn=Cary
Priss=Cilla
Tessa=Tess
Dominic=Dom
Rodney=Rod
Ozzie=Ozzy
Lennie=Leonard
Edward=Ed
Amy=Mandy
Anne=Anna
Mike=Micky
Priss=Prisca
Bess=Besse
Rosemary=Rosy
Janette=Jannete
Jannete=Jane
Frank=Franklin
Zach=Zack
Jimbo=Jimmy
Susie=Sue
Ronnie=Ronald
Gabe=Gabriel
Prue=Pru
Eliza=Elisa
Janete=Jannete
Barb=Barbara
Tess=Tessa
Ted=Teddy
Gillian=Jill
Andrea=Andrew
Jess=Jessica
Johanna=Jo
Tim=Timmy
Milly=Millie
Lexie=Sandy
Andra=Sally
Pat=Patty
Hank=Hal
Henry=Hank
Amanda=Amy
Millicent=Millie
Bobert=Bob
Willy=Willie
Polly=Mary
Jenny=Janet
Rob=Robert
Eleanor=Helen
Oz=Ozzy
Jannette=Janette
Fred=Alfred
Hal=Henry
Ed=Edward
Annie=Anna
Kenneth=Ken
Eliza=Elizabeth
Laurie=Larry
Millie=Millicent
Art=Artie
Jeanny=Jeannie
Louis=Lou
Tess=Theresa
Nicole=Niki
Rob=Bobby
Janice=Janis
Eck=Alex
Andrea=Drew
Nicole=Nicola
Katherine=Kathy
Dot=Dottie
Rudolfe=Rudy
Sally=Sandra
Samantha=Sam
Rosie=Rosy
Frank=Frankie
Roberta=Robbie
Carmela=Lita
Tor=Vicky
Reginald=Reg
Rosemary=Rose
Cilla=Priscilla
Danny=Dan
Chas=Charly
Criffer=Kit
Bobbie=Roberta
Reginald=Reggie
Libby=Liz
Florence=Flo
Sarah=Sara
Carol=Carrie
Meg=Maggie
Archibald=Archy
Pip=Pippa
Hal=Hank
Lennie=Lenny
Rob=Robby
Jenny=Jayne
Milly=Millicent
Vicky=Vickie
Bessy=Elisa
Vick=Tor
Laurence=Larry
David=Dave
Isabella=Izzy
Carmela=Carmelita
Dom=Dommy
Rick=Dick
Alec=Al
Kathy=Kate
Lexie=Lex
Charly=Charlie
Kirk=Kirkus
Timothy=Tim
Jim=James
Philippa=Pip
Leonard=Len
Carolyn=Caroline
Jackie=Jack
Priscilla=Priss
Jonathan=Jon
Sandra=Sally
Arthur=Art
Jock=Johnny
Charlie=Charly
Susan=Sue
Rick=Richard
Mike=Mikey
Criffer=Chris
Stephy=Stephanie
Benny=Ben
Alfred=Fred
Joan=Joanna
Davy=David
Tor=Victoria
Nicky=Nick
Kim=Kimmy
Joseph=Joel
Rosy=Rosie
Madge=Margaret
Ant=Tony
Harry=Henry
Besse=Bessie
Bessy=Betsy
Larry=Laurie
Zack=Zachary
Patty=Patricia
John=Jack
Bella=Izzy
Jacob=Jake
Drew=Andy
Amy=Amanda
Lou=Louie
Dottie=Dot
Jack=Jackie
Benjamin=Ben
Jonny=Nathan
Jonny=Jon
Ted=Theodore
Hank=Harry
Flo=Florence
Ben=Benny
Tommy=Tom
Pete=Petey
Magda=Maddie
Magdalene=Maddie
Dominic=Dommy
Johnny=Jock
Sara=Sadie
Archie=Archy
Ed=Ned
Besse=Bess
Millie=Milly
Jess=Jessie
Zeb=Zebadiah
Tel=Terence
Sandy=Lexie
Len=Lennie
Mary=Molly
Michael=Micky
Rudolph=Rudolfe