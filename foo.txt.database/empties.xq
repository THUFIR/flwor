xquery version "3.0";

declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization";

declare option output:method 'xml';
declare option output:indent 'yes';

declare variable $input :=

<text>
  <line>people</line>
  <line>joe</line>
  <line>phone1</line>
  <line>phone2</line>
  <line>phone3</line>
  <line>sue</line>
  <line/>
  <line>cell4</line>
  <line/>
  <line>home5</line>
  <line/>
  <line>ph3</line>
  <line>alice</line>
  <line>atrib6</line>
  <line>x7</line>
  <line>y9</line>
  <line>z10</line>
</text>;

    
for $x in $input

return $x



