xquery version "3.0";

for $x in db:open("foo.grouped.xml")

return $x
