xquery version "3.0";

for $i in (99 to 199)
for $line in db:open("json_people")
return $line/json/_[$i]
