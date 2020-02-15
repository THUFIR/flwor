xquery version "3.0";
declare namespace office="urn:oasis:names:tc:opendocument:xmlns:text:1.0";

<csv>
{
for $line in db:open("people")//text()
return
      if (matches($line, "[0-9]"))
      then <record>{$line}</record>
      else <data>{$line}</data>
}
</csv>

