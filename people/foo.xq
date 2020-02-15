xquery version "3.0";
declare namespace office="urn:oasis:names:tc:opendocument:xmlns:text:1.0";

<ul>
{
for $foo  in db:open("people")//text()[not(matches(., '[0-9]'))]
return

      if (matches($foo, "[0-9]"))
      then <li>{$foo}</li>
      else <name>{$foo}</name>
}
</ul>

