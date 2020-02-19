xquery version "3.0";

for $x in db:open("people.xml")

return $x/xml/record[3]
