xquery version "3.0";

<xml>
{
for $line in db:open("people.json")//text()
return
      if (matches($line, "[0-9]"))
      then <data>{$line}</data>
      else <record>{$line}</record>
}
</xml>
