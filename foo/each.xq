xquery version "3.0";

for $line in db:open("json_people")

return $line
