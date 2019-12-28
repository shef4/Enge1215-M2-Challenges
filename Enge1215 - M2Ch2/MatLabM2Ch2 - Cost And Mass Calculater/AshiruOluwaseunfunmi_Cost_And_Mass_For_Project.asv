%calulations for cost and mass of hemishpere art projected determined by diameter
clc;
clear All;
Diameter = input('What is the hemisphere in meters');

%Volume
Vol = ((4/3)*pi*(Diameter/2)^3)/2;
%SurfaceArea
SurfaceArea = 3*pi*(Diameter/2)^2;
%CopperMass
CopperMass = Vol*8960;
%GoldMass
GoldMass = SurfaceArea*0.0185;
%TotalMass
TotalMass = CopperMass + GoldMass + SurfaceArea;
%Cost
Cost = 6*CopperMass + 40000*GoldMass;
%output replace with fprintf
disp('The cost($) and mass(Kg) of the hemisphere is:');
disp(Cost);
disp('dollars');
disp(TotalMass);
disp('kilogram');