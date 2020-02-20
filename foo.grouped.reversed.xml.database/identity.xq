xquery version "3.0";

for $x in db:open("foo.grouped.reversed.xml")

return $x
