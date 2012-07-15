let $pool := db2-fn:xmlcolumn('PSUDO_DATA.PSUDO_DATA_TABLE')//details[activity_item//date/text()="2012-06-20"]
for $index in 1 to count($pool)
where $index > 1 and
$pool[$index - 1]//activity_item[//date/text()="2012-06-20"]/place = 
$pool[$index]//activity_item[//date/text()="2012-06-20"]/place
return
<pair>
{data($pool[$index - 1]/project_name)}, {data($pool[$index]/project_name)}
</pair>