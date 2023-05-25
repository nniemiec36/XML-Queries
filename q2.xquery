for $d in distinct-values(doc("JohnLHennessy.xml")//dblpperson[@name="John L. Hennessy"]/r/(article|book|inproceedings)/author[@pid!="h/JohnLHennessy"]/@pid)
let $items := distinct-values(doc("DAPatterson.xml")//dblpperson[@name="David A. Patterson 0001"]/r/(article|book|inproceedings)/author[@pid = $d and @pid != "p/DAPatterson"])
for $a in $items
return <author name="{$a}"/>