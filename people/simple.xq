xquery version "3.0";

<csv>
{
for $line in db:open("simple")//text()
return
      if (matches($line, "[0-9]"))
      then <data>{$line}</data>
      else <record>{$line}</record>
}
</csv>

