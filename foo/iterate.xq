xquery version "3.0";

for $i in (1,2,3)
for $line in db:open("json_people")
return $line/json/_[$i]
