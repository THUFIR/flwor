xquery version "3.0";

for $x in db:open("foo.txt")

return if ($x = 'ACC')
       then <accessoryNum>{data($x)}</accessoryNum>
       else <otherNum>{data($x)}</otherNum>
