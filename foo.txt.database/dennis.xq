xquery version "3.0";


for $P in db:open(foo.txt)//text()
where $P[@numerical="true"]
let $PREV := $P/preceding-sibling::person[@numerical="false"][1]
group by $PREV
return <person name="{$PREV}" >  { $P } </person>

