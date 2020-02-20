xquery version "3.0";

declare variable $XML := <xml>
 <person id="1" x="0" numerical="false">people</person>
 <person id="2" x="0" numerical="false">joe</person>
 <person id="3" x="0" numerical="true">phone1</person>
 <person id="4" x="0" numerical="true">phone2</person>
 <person id="5" x="0" numerical="true">phone3</person>
 <person id="6" x="0" numerical="false">sue</person>
 <person id="7" x="0" numerical="true">cell4</person>
 <person id="8" x="0" numerical="true">home5</person>
 <person id="9" x="0" numerical="false">alice</person>
 <person id="10" x="0" numerical="true">atrib6</person>
 <person id="11" x="0" numerical="true">x7</person>
 <person id="12" x="0" numerical="true">y9</person>
 <person id="13" x="0" numerical="true">z10</person>
</xml> ;

for $P in $XML/person
where $P[@numerical="true"]
let $PREV := $P/preceding-sibling::person[@numerical="false"][1]
group by $PREV
return <person name="{$PREV}" >  { $P } </person>


