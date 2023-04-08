# wos-articles-count
Using the Web of Science data, I export and visualize the number of publications per year for a political science topic.

## Motivation
Looking up the number of recent scholarly articles on a given topic is a common way to assess its academic impact.

## Topic
I have chosed the topic of one of my seminar papers: the politicization of European integration. The core idea behind this topic is that talking about the European institutions has become a political issue. Some political parties nowadays openly advocate Euroscepticism. One of the most well-known scholars talking about the phenomenon of the EU politicization is Liesbet Hooghe.

## Getting the data
The Web of Science is a well-known platform storing citation data from academic journals. The platform is not free to use. However, Freie Universität Berlin's library provides access to the Web of Science Core Collection.

The process of data export looks as follows:
1. Log into university campus network
2. Go to the WOS Advanced Search (https://www.webofscience.com/wos/woscc/advanced-search)
3. Paste the following query[^1] and run search:
`(AK=(Politicization) OR TI=(Politicization) OR AB=(Politicization) OR AK=(Politicisation) OR TI=(Politicisation) OR AB=(Politicisation)) AND (AK=(European Integration) OR TI=(European Integration) OR AB=(European Integration) OR AK=(European Union) OR TI=(European Union) OR AB=(European Union) OR AK=(EU) OR TI=(EU) OR AB=(EU))`
4. Go to Analyze Results, select Publication Years, then export as CSV

## Visualizing the data
The CSV file is a table with two columns: publication year and number of scholarly articles published in that year.

After some minor data cleaning[^2], I visualized the data as a dotted line chart using Stata.

Both the Stata do-file and the exported CSV file are included in the project files.

## Results
The politicization of European integration has shot in popularity since 2019 and remained popular ever since. 2022 shows reduced scholarly interest on the topic. However, the number of yearly publications is still at least 2x higher than pre-2018.

<img width="500" alt="Graph" src="https://user-images.githubusercontent.com/68019108/230740176-122cd309-457e-4da5-8d42-fc90eda555b2.png">



[^1]: Note on WOS Advanced Search Field Tags. My query looks for mentions of "politicization of European integration" in the following fields: AK (author keywords), TI (title), AB (abstract). Searching for keyword mentions in other fields of the paper will likely bias the search with articles devoted to a different topic. Detailed notation can be found here: https://images.webofknowledge.com/images/help/WOS/hs_advanced_fieldtags.html.
[^2]: Using Excel, I renamed columns and added years which had zero published articles. I could prepare a data cleaning script using Python or SQL if I had more time dedicated for this project.
