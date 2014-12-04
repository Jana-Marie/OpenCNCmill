translate([20,20,0])
_Halter();

mirror([1,0,0])
translate([20,20,0])
_Halter2();

mirror([0,1,0])
translate([20,20,0])
_Halter();

mirror([1,0,0])
mirror([0,1,0])
translate([20,20,0])
_Halter2();

kreis = 100; //qualität kreise

//schrauben

schraube_bef = 3; //befestigungsschrauben (radius)

schraube_bef_z = 3; //befestigungsschraube stütze (radius)


module _Halter2(){



//maße

laenge = 40;

breite = 20;

hoehe = 25;

// halter Y

hoehe_y = 5;

laenge_y = (laenge*1.8);


//halter z

halter_z = 5; 

halter_y = 20;



difference(){
union(){

//hauptwürfel

cube([laenge,breite,hoehe]);

// Halter quer

translate([(((laenge_y-laenge)/2)*-1),0,0])
cube([laenge_y,halter_z,hoehe]);

// Halter längs

translate([laenge-halter_z,breite,0])
cube([halter_z,halter_y,hoehe]);

//halter motor

translate([-10,-10,-10])
cube([40,40,10]);

}

union() {

// Halter welle

translate([10,10,-10.5])
#cylinder(h = 36,r = 8,$fn = kreis);

// Halter achse

translate([30,10,15])
#cylinder(h = 10, r = 4, $fn = kreis);

// schraubverbindung Halter quer

//#1

rotate([90,0,0])
translate([-7.5,12.5,-5.5])
#cylinder(h = 6, r = schraube_bef, $fn = kreis);

//#2

rotate([90,0,0])
translate([47.5,12.5,-5.5])
#cylinder(h = 6, r = schraube_bef, $fn = kreis);

// Halter quer

translate([34.5,30,12.5])
rotate([0,90,0])
#cylinder(h = 6, r = schraube_bef_z, $fn = kreis);

//schrauben

translate([-5.5,25.5,-10.5])
#cylinder(h=11,r=2,$fn=kreis);

translate([25.5,-5.5,-10.5])
#cylinder(h=11,r=2,$fn=kreis);

translate([-5.5,-5.5,-10.5])
#cylinder(h=11,r=2,$fn=kreis);

translate([25.5,25.5,-10.5])
#cylinder(h=11,r=2,$fn=kreis);



}
}

}

/////////////////////////////////////////////////////////////////


module _Halter(){



//maße

laenge = 40;

breite = 20;

hoehe = 25;

// halter Y

hoehe_y = 5;

laenge_y = (laenge*1.8);


//halter z

halter_z = 5; 

halter_y = 20;



difference(){
union(){

//hauptwürfel

cube([laenge,breite,hoehe]);

// Halter quer

translate([(((laenge_y-laenge)/2)*-1),0,0])
cube([laenge_y,halter_z,hoehe]);

// Halter längs

translate([laenge-halter_z,breite,0])
cube([halter_z,halter_y,hoehe]);

}

union() {

// Halter welle

translate([10,10,7])
#cylinder(h = 18,r = 4.5,$fn = kreis);

// Halter achse

translate([30,10,15])
#cylinder(h = 10, r = 4, $fn = kreis);

// schraubverbindung Halter quer

//#1

rotate([90,0,0])
translate([-7.5,12.5,-5.5])
#cylinder(h = 6, r = schraube_bef, $fn = kreis);

//#2

rotate([90,0,0])
translate([47.5,12.5,-5.5])
#cylinder(h = 6, r = schraube_bef, $fn = kreis);

// Halter quer

translate([34.5,30,12.5])
rotate([0,90,0])
#cylinder(h = 6, r = schraube_bef_z, $fn = kreis);


}
}

}

