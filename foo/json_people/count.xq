xquery version "3.0";

count(
for $line in db:open("json_people")
return $line/json/_)

