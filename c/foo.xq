xquery version "3.0";

declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization";

declare option output:method 'xml';
declare option output:indent 'yes';
    
for $csv in db:open("people.flat.record.xml")

for $p in $csv/xml/record

let $n := $p/name
let $d := $p/data
let $r := reverse($d)

return 

<record>
{

($n,$r)

}
</record>


