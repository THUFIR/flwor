xquery version "3.0";

<csv>
{
for $line in db:open("simple")

return <record>{$line}</record>
}
</csv>


