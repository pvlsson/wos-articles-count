// search query on Web of Science (http://isiknowledge.com/wos): (AK=(Politicization) OR TI=(Politicization) OR AB=(Politicization) OR AK=(Politicisation) OR TI=(Politicisation) OR AB=(Politicisation)) AND (AK=(European Integration) OR TI=(European Integration) OR AB=(European Integration) OR AK=(European Union) OR TI=(European Union) OR AB=(European Union) OR AK=(EU) OR TI=(EU) OR AB=(EU))

clear
import delimited "wos_search_policization_eu.csv"
label var year "Publication year"
label var articles_count "Articles related to EU politicization"
twoway (line articles_count year, connect(dot))
