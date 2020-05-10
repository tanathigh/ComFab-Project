use <part/finger-base.scad>;
use <part/finger-tip.scad>;

//parameter define on base finger
module finger(length,x,y,z){
    difference(){
        union(){
            fingerbase(length,x,y,z,0.5,9.5);
            translate([length*1.55,0,0]) translate([-7,0,5.2]) rotate([0,90,0]) fingerbase(length,x,y-0.3,z,0.5,9.5);
            translate([length*2.8,0,0]) fingertip(length,x,y,z,0.5,9.5);
        }
        //translate([33,20,8])rotate([90,0,0])cylinder(r = 1, h =25);
    }
}

module movefinger(length,x,y,z){
    difference(){
        union(){
            //base
            //rotate([0,90*$t,0])
            fingerbase(length,x,y,z,0.5,9.5);
            //middle
            //
            translate([length*1.55,0,0]) 
            translate([-7*$t,0,5.2*$t]) 
            rotate([0,90*$t,0]) 
            fingerbase(length,x,y-0.3,z,0.5,9.5);
            //tip
            translate([-5*$t,0,40*$t])
            //
            translate([0,0,-5*$t])
            rotate([0,90*$t,0]) 
            //
            translate([length*2.8,0,0]) 
            translate([-7*$t,0,35*$t])
            rotate([0,90*$t,0]) 
            fingertip(length,x,y,z,0.5,9.5);
        }
    }
}

movefinger(20,1.5,1.5,1.6);