use <part/finger-middle.scad>;

module thumbbase(){
    translate([25,1,7.3])
    difference(){
        union(){
            translate([0,-6,0])
            intersection(){
                cube([15,45,16],center=true);
                translate([0,5,0])
                union(){
                    translate([0,20,0])
                    cube([15,15,15],center=true);
                    cylinder(h=15,r=15,center=true);
                }
            }
            translate([0,18,0])
            rotate([0,90,0])
            cylinder(h=15,r=8,center=true);
        }
        translate([1.5,-9,0])
        cube([15,18,13],center=true);
    }
}

module thumb(angle1,angle2){
    length=18;
    x=1.5;
    y=1.5;
    z=1.6;
    //base object
    thumbbase();
    //rotate object
    rotate([90,0,0])
    //starting point t=0
    translate([length*1.65,0,length*0.4])
    //rotate
    rotate([0,-angle1*$t,0])
    //rotate point in the object
    translate([-length/8,0,-length/2.5])
    middlefinger(length,x,y,z,angle2);
}

thumb(90,90);