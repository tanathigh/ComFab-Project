module fingertip(length,x,y,z,padding,width)
{ 
	difference() {
		scale([y,x,z]) {
			intersection() {
                difference() {
                    union() {
                        translate([length-5,5,5]) sphere(r =7);
                        translate([0,-5,-5]) cube([length,width + 10,20]);
                    }
                    //cutout for the side
                        translate([-4,-width+0.001,5.3]) rotate([-90,0,0]) cylinder(r=11,h=10);
                        translate([-4,width - padding*(1/x),5.3]) rotate([-90,0,0]) cylinder(r=11,h=10);
                }
                hull() {
                    for(i=[-1,1], j=[-1,1]) {
                        //angled cylinders to provide the outer shape of the finger
                        translate([length/10,i*2.4 + width/2,j*2.2 + 5]) rotate([i*j*-4,j*86,0]) cylinder(d=6,h=20,center=true);
                        //tip part
                        translate([length-3, i + width/2, j*2.2 + 5])rotate([i*j*-4,j*-80,0]) cylinder(d=6,h=10,center=true);  
                    }
                }              
            } 
		}
        translate([0,padding/2 * x,0])              
        fingerbasecutout(width-padding,x,z);
	}
}

module fingerbasecutout(width,x,z) {
	translate([-13/z,0,0]) rotate([0,45,0]) translate([-50,0,0]) cube([100,width*x, 10]);
}

rotate([0,-90,0]) fingertip(20,1.5,1.5,1.6,0.5,9.5);

