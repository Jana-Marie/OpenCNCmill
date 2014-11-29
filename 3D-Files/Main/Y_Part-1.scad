kreis = 20;

difference(){
union(){
cube([60,20,15]);
translate([60,0,-5])
cube([20,20,20]);
}

union(){
//befestigungen
translate([20,-0.5,0])
rotate([0,90,90])
color([90,0,0])
#cylinder(r = 7.5, h = 21, $fn = kreis);


translate([40,-0.5,0])
rotate([0,90,90])
color([90,0,0])
#cylinder(r = 7.5, h = 21, $fn = kreis);

//schrauben

translate([3,3,-0.5])
#cylinder(r = 1.5, h = 16, $fn = kreis);

translate([3,3,10])
#cube([6,6,10], center = true);

translate([3,17,-0.5])
#cylinder(r = 1.5, h = 16, $fn = kreis);

translate([3,17,10])
#cube([6,6,10], center = true);

translate([57,3,-0.5])
#cylinder(r = 1.5, h = 16, $fn = kreis);

translate([57,3,10])
#cube([6,6,10], center = true);

translate([57,17,-0.5])
#cylinder(r = 1.5, h = 16, $fn = kreis);

translate([57,17,10])
#cube([6,6,10], center = true);

// Bef_achsen

translate([40,10,10])
#cylinder(r = 4, h = 10, $fn = kreis);

translate([70,10,-5])
#cylinder(r = 4.5, h = 25, $fn = kreis);

}
}
