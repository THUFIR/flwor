
xquery version "3.0";
declare namespace office="urn:oasis:names:tc:opendocument:xmlns:text:1.0";

<ul>
{
for $foo  in db:open("foo")
return $foo//text()

}
</ul>
