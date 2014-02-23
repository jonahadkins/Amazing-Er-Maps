@white: #fff;
@grey: #E1E1E1;
@blue1: #E1F2FC;
@blue2: #C3E5F7;
@blue3: #A6D9F5;
@blue4: #86CBF0;
@blue5: #66C0ED;
@blue6: #44B6EB;
@blue7: #00A8E6;

#climdivwithdrought
{line-color:@white; line-opacity:0.8;
[F5_Mon >= -9.99]{polygon-fill:@grey;polygon-opacity:0.5;}
[F5_Mon >= 0.0][F5_Mon <= 4.0]{polygon-fill:@blue1;polygon-opacity:0.7;}
[F5_Mon >= 4.01][F5_Mon <= 8.0]{polygon-fill:@blue2;polygon-opacity:0.7;}
[F5_Mon >= 8.01][F5_Mon <= 12.0]{polygon-fill:@blue3;polygon-opacity:0.7;}
[F5_Mon >= 12.01][F5_Mon <= 16.0]{polygon-fill:@blue4;polygon-opacity:0.7;}
[F5_Mon >= 16.01][F5_Mon <= 20.0]{polygon-fill:@blue5;polygon-opacity:0.7;}
[F5_Mon >= 20.01][F5_Mon <= 24.0]{polygon-fill:@blue6;polygon-opacity:0.7;}
[F5_Mon >= 24.01][F5_Mon <= 49.92]{polygon-fill:@blue7;polygon-opacity:0.7;}
}


