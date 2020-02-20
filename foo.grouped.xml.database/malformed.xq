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


<xml>
{
    for tumbling window $person in $input//line
    start $name next $data when matches($name, '^[^0-9]+$') and matches($data, '[0-9]')
    return
        <person>
        {
            <name>{ data($name) }</name>,
            tail($person) ! <data>{data()}</data>

        }
        </person>
}    
</xml>



