xquery version "3.0";

declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization";

declare option output:method 'xml';
declare option output:indent 'yes';


    
for $csv in doc("foo.grouped.xml")

for $p in $csv/xml/person

let $name := $p/name
let $data := $p/data
let $reverse := reverse($data)

return 

<record>
{

($name,$reverse)

}
</record>


