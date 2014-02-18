@water: #071a2e;
@white: #ffffff;
@state: #918f90;
@statebnd: #c8c7c8;
@1: #8AA1BA;
@2: #748EAD;
@3: #607CA1;
@4: #4D6C94;
@5: #3B5D8A;
@6: #284E7D;
@7: #124173;

Map {background-color: @water;}

//Natural Earth Data From MapBox 
#10m-admin-0-countries {polygon-fill:@state;}

#NatGrd-Pop-Per-1K [NG_PER_1K <= 7 ] { polygon-fill: @7; line-color: @white;}
#NatGrd-Pop-Per-1K [NG_PER_1K <= 6 ] { polygon-fill: @6; line-color: @white;}
#NatGrd-Pop-Per-1K [NG_PER_1K <= 5 ] { polygon-fill: @5; line-color: @white;}
#NatGrd-Pop-Per-1K [NG_PER_1K <= 4 ] { polygon-fill: @4; line-color: @white;}
#NatGrd-Pop-Per-1K [NG_PER_1K <= 3 ] { polygon-fill: @3; line-color: @white;}
#NatGrd-Pop-Per-1K [NG_PER_1K <= 2 ] { polygon-fill: @2; line-color: @white;}
#NatGrd-Pop-Per-1K [NG_PER_1K <= 1 ] { polygon-fill: @1; line-color: @white;}


