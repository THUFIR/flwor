xquery version "3.0";

for $x in db:open("people.json")

return /xml/record[5]
