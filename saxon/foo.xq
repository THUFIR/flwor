xquery version "3.0";

for $csv in doc("foo.grouped.reversed.xml")

for $p in $csv/xml/person

let $name := $p/name
let $data := $p/data

return 

<record>
{

($name,$data)

}
</record>


