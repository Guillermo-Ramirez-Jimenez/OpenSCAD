//Parametric flywheel v1.1 by Guillermo Ramirez

axisHole=2;
axisWall=1;
pulleyRadius=10;
pulleyThickness=10;
cutCount=18;
$fn=30;
carving="angled"; // [off, straight, angled]

difference(){
    union(){
        cylinder(1.5*pulleyThickness, axisHole+axisWall, axisHole+axisWall, center=true);
        cylinder(pulleyThickness, pulleyRadius, pulleyRadius, center=true);
    }
    rotate_extrude(convexity = 10)
        translate([15, 0, 0])
            circle(6);
    cylinder(2*pulleyThickness, axisHole, axisHole, center=true);
    cutPattern();
}

module cutPattern(){
    for(i=[0:360/cutCount:360])
        rotate([0, 0, i])
            disc();
}
    
module disc(){
    angle=carving=="angled"?45:0;
    rotate([0, angle, 0])
        translate([0, 15, 0])
            resize([3, 16, 16])
                sphere(1);
}
