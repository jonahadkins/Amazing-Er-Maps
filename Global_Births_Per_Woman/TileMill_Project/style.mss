@water: #000;
@white: #ffffff;
@state: #918f90;
@statebnd: #c8c7c8;
@1: #EDE2BB;
@2: #DBD1AD;
@3: #C9C09D;
@4: #B8AF8F;
@5: #A69D80;
@6: #948D72;
@7: #827B63;
@8: #706A54;


Map {background-color: @water;}

//Natural Earth Data From MapBox 
#10m-admin-0-countries {polygon-fill:@state;}

#Fertility_Rate_Per_Women
{line-opacity: 0.7; line-color: @white;
	[Rate <= 8 ]{ polygon-fill: @8;} 
	[Rate <= 7 ]{ polygon-fill: @7;}
	[Rate <= 6 ]{ polygon-fill: @6;} 
	[Rate <= 5 ]{ polygon-fill: @5;}	
	[Rate <= 4 ]{ polygon-fill: @4;} 
	[Rate <= 3 ]{ polygon-fill: @3;}
	[Rate <= 2 ]{ polygon-fill: @2;} 
	[Rate <= 1 ]{ polygon-fill: @1;}
}
