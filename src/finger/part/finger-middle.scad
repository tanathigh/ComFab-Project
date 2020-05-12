use <util/finger-base.scad>;
use <util/finger-tip.scad>;

module middlefinger(length,x,y,z,angle){
    difference(){
        union(){
            //base object
            fingerbase(length,x,y-0.3,z,0.5,9.5);
            
            //rotate object
            //starting point t=0
            translate([length*1.4,0,length*0.4])
            //rotate
            rotate([0,angle*$t,0])
            //rotate axis in the object
            translate([-length/6,0,-length/2.5])
            fingertip(length,x,y,z,0.5,9.5);
        }
    }
}

middlefinger(20,1.5,1.5,1.6,90);