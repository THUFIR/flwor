xquery version "3.0";

for $x in db:open("foo.txt")//text()

return if ($x = "sue")
       then <accessoryNum>{data($x)}</accessoryNum>
       else <otherNum>{data($x)}</otherNum>
