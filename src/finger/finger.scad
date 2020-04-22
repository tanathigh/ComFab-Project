use <part/finger-base.scad>;

difference(){
    union(){
        fingerbase(20,1.5,1.5,1.6,0.5,9.5);
        translate([31,0,0]) fingerbase(20,1.5,1.3,1.6,0.5,9.5);
    }
    translate([33,20,8])rotate([90,0,0])cylinder(r = 1, h =25);
}
