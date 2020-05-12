use <part/thumb-joint.scad>;



module thumb(angle1,angle2,angle3){
    //base
    
    union(){
        translate([0,13,0])
        cube([15,11,16],center=true);
        translate([0,18,0])
        rotate([0,90,0])
        cylinder(h=15,r=8,center=true);
        translate([0,6.5,0])
        rotate([90,0,0])
        cylinder(h=5,r=6,center=true);
    }
    //rotate object
    //starting point t=0
    translate([0,0,0])
    //rotate
    rotate([0,angle1*$t,0])
    //rotate axis in the object
    translate([-25,0,-8])
    thumbjoint(angle2,angle3);
}
thumb(90,90,90);