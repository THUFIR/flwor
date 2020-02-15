
xquery version "3.0";
declare namespace office="urn:oasis:names:tc:opendocument:xmlns:text:1.0";

<ul>
{
for $person  in db:open("dummy")
return <li>{data($person)}</li>

}
</ul>
