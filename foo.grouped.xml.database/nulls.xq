xquery version "3.0";

for $x in db:open("foo.txt")/text/line

return if($x = "")
	then <null_to_delete>{$x}</null_to_delete>
	else <keep>{$x}</keep>

