xquery version "3.0";

declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization";

declare option output:method 'xml';
declare option output:indent 'yes';
    
for $csv in db:open("foo.grouped.xml")

for $p in $csv/xml/person

let $n := $p/name
let $d := $p/data
let $r := reverse($d)

return 

<record>
{

($n,$r)

}
</record>


