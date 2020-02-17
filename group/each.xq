xquery version "3.0";

for $line in db:open("people")
return $line
