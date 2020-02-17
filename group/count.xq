xquery version "3.0";

count(
for $line in db:open("people")
return $line/text/line)
