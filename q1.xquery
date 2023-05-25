for $d in distinct-values(doc("JohnLHennessy.xml")//dblpperson[@name="John L. Hennessy"]/r/(article|book|inproceedings)/author[@pid!="h/JohnLHennessy"])
let $items := doc("JohnLHennessy.xml")//dblpperson/r/(article|book|inproceedings)[author = $d]
order by count($items) descending
return <author name="{$d}" totalPublications ="{count($items)}"/>

