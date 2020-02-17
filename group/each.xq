xquery version "3.0";

for $line in db:open("people")
for $index at $count in $line/text/line
return $count
