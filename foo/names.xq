
xquery version "3.0";
declare namespace office="urn:oasis:names:tc:opendocument:xmlns:text:1.0";

<ul>
{
for $foo  in db:open("foo")
return <li>{$foo//text()[not(matches(., '[0-9]'))]}</li>

}
</ul>

