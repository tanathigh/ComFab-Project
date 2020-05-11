use <part/finger-middle.scad>;
use <part/util/finger-base.scad>;

module finger(length,x,y,z,angle1,angle2){
    //base object
    fingerbase(length,x,y,z,0.5,9.5);
    //rotate object
    //starting point t=0
    translate([length*1.65,0,length*0.4])
    //rotate
    rotate([0,angle1*$t,0])
    //rotate point in the object
    translate([-length/8,0,-length/2.5])
    middlefinger(length,x,y,z,angle2);
}

finger(20,1.5,1.5,1.6,90,90);