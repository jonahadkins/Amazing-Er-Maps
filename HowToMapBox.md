#How To: TileMill/MapBox
#### Turning Your Amazing-er Map Into An Interactive MapBox Map

####**1. Find A Map**
For this example, I found a map showing [US GDP; Split In Half](http://www.reddit.com/r/MapPorn/comments/1y371s/us_gdp_split_in_half_oc_1770x1114/). This map shows urbanized areas of the United States where the combined GDP is half of the rest of the country. While it provides a stark contrast of where the core of US GDP is created, it could be **Amazing-er** if some context was provided (IMO).

####**2. Find The Source Data**
Some basic Googl-ing of GDP led me to the [Dept. of Commerce / Bureau of Economic Analysis](http://www.bea.gov/newsreleases/regional/gdp_metro/gdp_metro_newsrelease.htm) To the right of their page is downloadable reports of their analysis. Choosing the tables only option [gave me this excel file](https://github.com/jonahadkins/Amazing-Er-Maps/blob/master/GDP_By_MSA/gdp_metro0913_bea_dot_gov.xls). The data shows GDP by [Metropolitan Statistical Area](https://www.census.gov/population/metro/) (MSA), which are metro areas containing a core urban area population of 50,000 or more. It also includes a ranking if each MSA. To provide further context, I'm also going to get the [population per MSA](http://www.census.gov/compendia/statab/cats/population/estimates_and_projections--states_metropolitan_areas_cities.html), which I found at the Census Bureau. 


####**3. Obtain/Create GIS Data**
Now that I have the source data, I need to join it up to some GIS data. Both spreadsheets I downloaded list the name of the MSA and the CBSA (Core Based Statistical Area) code for each MSA. I was able to find the [authoritative MSA shapefile](http://www2.census.gov/geo/tiger/TIGER2012/CBSA/) from the Census Bureau.

#####**Data Clean-Up**
Most desktop GIS software can perform any of the following; To join the shapefile with the csv, I had to do quite a bit of clean-up on the MSA Names within the spreadsheets, so they matched up. Once that happened, I was able to join them up to the shapefile. I calcualted a rank by population per MSA to compare against the rank supplied with the GDP info. I exported the [final shapefile](https://github.com/jonahadkins/Amazing-Er-Maps/blob/master/GDP_By_MSA/GDB_By_MSA_2012.zip) with a web mercator projection and then zipped it up for storage on the repo.

####**4. Create An MapBox Map**<br>
#####**Publishing Via TileMill**
With my GDP by MSA shapefile in Tilemill, all it took was a few lines of Carto-CSS to achieve the symbolization I needed for this map.
`#gdbbymsa2012
{line-color:#fff; line-opacity:0.5;
[Pop_Rank <= 20]{polygon-fill:#f48d4d;polygon-opacity:0.5;}
[Pop_Rank >= 20]{polygon-fill:#000;polygon-opacity:0.1;}}`

The majority of the time I spent in TileMill was configuring [the Legend](https://www.mapbox.com/tilemill/docs/guides/advanced-legends/) and the [Pop-Up (Teaser)](https://www.mapbox.com/tilemill/docs/crashcourse/tooltips/). Even if you don't know HTML well, the [crash-course documentation] (https://www.mapbox.com/tilemill/docs/crashcourse/introduction/) MapBox has is great. With those out of the way, I began the upload to my MapBox account. Within TileMill, you can set the title, description, attribution, and most importantly the zoom scales and bounds. For the US, including Alaska and Hawaii, I wanted county level (or so) zoom - which is around zoom level 8. The final export was about 5mb, which is way under the 50mb you get with a free account (Yes!)

#####**Creating A MapBox Project**
Log-in to you MapBox account online, and the export from TileMill should appear in the data section. Select the desired export and choose Create Project. From here you can set up the final elements of your web-map. Under the project tab, you can set the title and description, and you can even set HTML tags in here. On the style tab, choose the basemap style, and you *literally* have limitless options for coloring the basemap using the sliders. When you're done, double check that everything looks good and works, your pop-ups, legend, etc.


####**5. Contribute To This Repo**<br>
To add a new map to this repo:
* Store all files in folder named after the map
* **Must** include data source (pdf, csv, etc - preferred) or link to durable source
* **Must** include GeoJSON of data (small sets) or zipped shapefile (large sets)
* Map project file (TileMill, ArcMap, QGis)
* Link to online map or image of new map
* Add read me to folder including: map name, general location, website found on, website link, source name, source link
* Update the main repo MapTracker csv

####**And You're Done!**<br>
You can view my final version via Mapbox -- [GDP By Metro Statistical Area](https://a.tiles.mapbox.com/v3/jonahadkins.hal8980h/page.html?secure=1#5/38.273/-94.438) And [Population By Metro Statistical Area](https://a.tiles.mapbox.com/v3/jonahadkins.hb0g86h7/page.html?secure=1#5/38.221/-96.680)


If there were any parts of this How-To that were unclear, fuzzy, or *wrong* please comment or holla at me on Twitter [@jonahadkins](https://twitter.com/jonahadkins)

Also, please suggest/comment/ask and contribute, definitely contribute to this repo.
