xquery version "3.0";


for $line in db:open("foo.txt")//text()

for tumbling window $w in $line
    start $s when matches($s, '[a-z]')
    return <group key="$s">{$w}</group>
