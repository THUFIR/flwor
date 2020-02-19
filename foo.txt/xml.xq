xquery version "3.0";

<xml>
{
for $line in db:open("foo.txt")//text()
return
	<record>
      if (matches($line, "[0-9]"))
      then <data>{$line}</data>
      else <name>{$line}</name>
	</record>
}
</xml>
