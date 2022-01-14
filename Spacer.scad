//Spacer v1.0 by Guillermo Ramírez

height = 8;
extRadius = 4.8;
holeRadius = 1.9;
$fn = 50;

difference(){
    cylinder(height, extRadius, extRadius);
    cylinder(3*height, holeRadius, holeRadius, center=true);
}