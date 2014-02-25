#How To: ArcGIS Online
#### Turning Your Amazing-er Map Into An Interactive ArcGIS Online Map

####**1. Find A Map**
For this example, I found a map showing [peanut growing areas in the US](http://mapsontheweb.zoom-maps.com/post/76547930347/peanut-growing-areas-in-the-united-states). Per the title, the outlined areas denote where peanuts are grown. Missing from this map are identifying information, such as labels or county boundaries. The source on the map is shown as *NOAA Climate .gov*. To make this map **Amazing-er**, I'd like to add another level of information, such as the ability to select growing areas, or see labels on this map.

####**2. Find The Source Data**
Google searching US Peanut Growing Areas, led me to a few places, but I ended up at the [National Argricultural Statistics Service](http://www.nass.usda.gov/Quick_Stats/). Through their webform, Quick Stats, I was able to filter through the data. The filters for this export were: <br>
>Census >Crops >Field Crops >Peanuts >Production >Peanuts-Production, Measured In LB >Total<br>

The location was filtered by county geographic area, and I chose the most recent time, which was 2007. The result was table within the site, that had download links. You can see the [cleaned up CSV](https://github.com/jonahadkins/Amazing-Er-Maps/blob/master/US_Peanut_Growing/NASS_USDA_gov_Peanut_Growth.csv) in the repository for the peanut map.

####**3. Obtain/Create GIS Data**
Now that I have the source data, I need to join it up to some GIS data. The CSV contains county names, but duplicates county names could exist between states, so I'll need to use ANSI code. This is more or less a unique code for each county. Next, we find an **open and authoritative source** for US county boundaries. The Census Bureau has maintained it's TIGER data for years as an authoritative source. Visit:<br>
>[Maps & Data](http://www.census.gov/geo/maps-data/) > [TIGER Prodcuts](http://www.census.gov/geo/maps-data/data/tiger.html)> [Cartographic Boundary Files](http://www.census.gov/geo/maps-data/data/tiger-cart-boundary.html) > [Counties](http://www.census.gov/geo/maps-data/data/cbf/cbf_counties.html)<br>

From there you can chose the resolution of the shapefile and download.  
#####**Data Clean-Up**
Most desktop GIS software can perform any of the following; To join the shapefile with the csv, I had to first concatenate the state and county ansi codes to one field in both the CSV and the shapefile. With the join complete, I selected only the counties that had peanut growing data and exported it to a new shapefile, with a web mercator projection. The resulting data set has County Name and Value (Measured In Lbs. Of Peanuts Produced). Some values had a (D) code, which meant the vlaue "..Withheld to avoid disclosing data for individual operations.."  I created a simple color grouping (group) to sort visually by counties with this (D) value. With that data complete, I zipped up the shapefile and also created a GeoJSON file by using the [Esri2Open Toolbox](https://github.com/project-open-data/esri2open)

####**4. Create An ArcGIS Online Map**<br>
#####**Making A Web Map**
  Log in to your AGOL account and create a new map. I used the [beta dark grey basemap](http://www.arcgis.com/home/webmap/viewer.html?webmap=da65bacab5bd4defb576f839b6b28098) as a starting point. From the Add button, choose Add Layer From File. You can add a zipped shapefile with up to 1000 features, the peanut shapefile is under that limit. (Yes!) With data now in the map, I can configure the pop-up, change the symbols, etc. Before you get to crazy, do a quick save as, and save your map with the data. For pop-ups, I used County: {County_1} for the title and a custom attribute display ({Value} lbs. Of Peanuts Produced) for the contents. For colors, against the dark basemap, I used transparent red for the disclosure witheld areas (D), and transparent yellow for the counties with values. With that saved, you have a web map in the My Content section of your AGOL account. Now you can share this as is or, with no code, you can also create an application that will extend the look and functionality of your web map using a web application template. 
#####**Making A Web Application**
From your web map view, choose share, and choose Make A Web Application, from here you can choose 16 templates that you can configure with no code at all. I chose the Chrome application. You'll be able to configure things such as: predefined color schemes, headers, footers, descriptions, and so on.  Using the pavement color scheme, I added a descriptive title, and added a subtitle with some HTML references. I omitted everything else except a legend panel to keep it simple.
#####**Details, Details, Details**
With both the web map and web application you'll want to populate the item details. When viewing the item details, you can select the EDIT button to expose that function. From here you can include a custom image thumbnail, detailed description, usage, and credits. With your map shared within the ArcGIS Online system, others will have access to you map through searches and such, so the more details and tags the better.

####**And You're Done!**<br>
You can view my final version via ArcGIS Online --  [US Peanut Producing Counties](http://www.arcgis.com/apps/PanelsLegend/index.html?appid=86f6966ffb2741e28753f8f535bed728)


If there were any parts of this How-To that were unclear, fuzzy, or *wrong* please comment or holla at me on Twitter [@jonahadkins](https://twitter.com/jonahadkins)

Also, please suggest/comment/ask and contribute, definitely contribute to this repo.
