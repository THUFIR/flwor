xquery version "3.0";

for $line in db:open("foo.txt")//text()

for tumbling window $w in $line
    start $s when matches($s, '[0-9]')
    return <group key="$s">{$w}</group>
    else
    return <group key="$s">{$w}</group>
