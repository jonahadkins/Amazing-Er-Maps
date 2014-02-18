@water: #071a2e;
@white: #ffffff;
@state: #918f90;
@statebnd: #c8c7c8;
@1: #E2E6D8;
@5: #C7CCB6;



Map {background-color: @water;}

//Natural Earth Data From MapBox 
#10m-admin-0-countries {polygon-fill:@state;}

#US_Peanut_Prod
{line-opacity: 0.2; line-color: @statebnd;
    //[Value = "" ]{ polygon-fill: @1;}
    [Value != "" ]{ polygon-fill: @1;}
    [Value = '(D)' ]{ polygon-fill: @5;}	
}


