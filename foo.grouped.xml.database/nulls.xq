xquery version "3.0";

let $y := ""

for $x in db:open("foo.txt")/text/line

return if($x = "") then 
		($y)
	else 
		($x)
