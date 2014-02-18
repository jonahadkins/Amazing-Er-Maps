@water: #071a2e;
@white: #ffffff;
@state: #918f90;
@statebnd: #c8c7c8;
@1: #D7F0AF;
@2: #B5C989;
@3: #98A867;
@4: #798748;
@5: #606B2D;


Map {background-color: @water;}

//Natural Earth Data From MapBox 
#10m-admin-0-countries {polygon-fill:@state;}

#NY_Per_Capita_Income_By_County
{line-opacity: 0.5; line-color: @white;
    [Per_capita <= 60000 ]{ polygon-fill: @5;}
    [Per_capita <= 50000 ]{ polygon-fill: @4;}
	[Per_capita <= 40000 ]{ polygon-fill: @3;}
    [Per_capita <= 30000 ]{ polygon-fill: @2;}
	[Per_capita <= 20000 ]{ polygon-fill: @1;}
}

