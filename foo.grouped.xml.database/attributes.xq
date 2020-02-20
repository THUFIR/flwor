xquery version "3.0";

declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization";

declare option output:method 'xml';
declare option output:indent 'yes';

    
for $x in db:open("foo.txt")

return $x




let $items := (1,2,3,4,5,6)
let $new-items := reverse($items)
return
<result>
<items>
{
for $item in $new-items
return <item>{$item}</item>
}
</items>
