xquery version "3.0";

<csv>
{
for $line in db:open("simple")//text()
return <record>{$line}</record>
}
</csv>
