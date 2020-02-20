xquery version "3.0";

for $x in db:open("foo.txt")/text/line

return $x
