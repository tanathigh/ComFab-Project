use <part/finger-base.scad>;
use <part/finger-tip.scad>;

//parameter define on base finger
module finger(length,x,y,z){
    difference(){
        union(){
            fingerbase(length,x,y,z,0.5,9.5);
            translate([length*1.55,0,0]) fingerbase(length,x,y-0.3,z,0.5,9.5);
            translate([length*2.8,0,0]) fingertip(length,x,y,z,0.5,9.5);
        }
        //translate([33,20,8])rotate([90,0,0])cylinder(r = 1, h =25);
    }
}

module move_finger(length,x,y,z) {
    rotate([0,30*$t,0]) finger(length,x,y,z);
}

move_finger(20,1.5,1.5,1.6);
translate([0,25,0])finger(15,1.5,1.5,1.6);