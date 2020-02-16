xquery version "3.0";

for $line in db:open("blgdfmbljm")

return $line/json/_
