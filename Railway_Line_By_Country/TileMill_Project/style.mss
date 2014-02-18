@water: #000;
@white: #ffffff;
@state: #918f90;
@statebnd: #c8c7c8;
@1: #BFE9FF;
@2: #A3CBE6;
@3: #89AFCC;
@4: #7095B5;
@5: #5A7C9E;
@6: #3E668A;


Map {background-color: @water;}

//Natural Earth Data From MapBox 
#10m-admin-0-countries {polygon-fill:@state;}

#Railway_Date_By_Country
{line-opacity: 0.7; line-color: @white;
  
  	[Rail_Yr <= 1930 ]{ polygon-fill: @6;}
	[Rail_Yr <= 1879 ]{ polygon-fill: @5;}  
	[Rail_Yr <= 1869 ]{ polygon-fill: @4;}  
	[Rail_Yr <= 1859 ]{ polygon-fill: @3;}  
	[Rail_Yr <= 1849 ]{ polygon-fill: @2;}
	[Rail_Yr <= 1839 ]{ polygon-fill: @1;}
}
