include <../config.scad>
use <util/thermoform.scad>

cyborgbeastpalm();

/**
 * Palm - rendered from parts/palm.scad
 * @id palm
 * @name Palm
 * @category Printed
 */

module cyborgbeastpalm()
{
	difference()
		{
            difference()
			{
			cyborgbeast07palm();
			
			for(i=[-3,-1,1,3]) translate([i*7,28,0]) 
				{
				translate([0,4.5,0]) {
					cube([knuckleW + knucklePadding,10,21.6], center=true);
					rotate([-45,0,0]) cube([knuckleW+knucklePadding,14,21.6], center=true);
				}
				
				
			}
			
			translate([0,0,-100/2]) cube(100, center=true);
			}
		
        translate([24,-8,10]) rotate([0,90,0]) cylinder(h=20, r=7);
        
        
		}
        
   //  translate([20,-8,10]) rotate([0,90,0]) cylinder(h=20, r=7);
   // translate([20,-10,40]) rotate([0,90,0]) cube([50,10,40]);
}	


module cyborgbeast07palm()
	{
	//	Thumb!!!

	//	Palm
	hull() 
		{
		translate([20.5,10,15.7]) rotate([-18,10,0]) scale([1,1,0.4]) sphere(10);
			
		translate([0,11,18.1]) rotate([-23,0,0]) scale([1,1,0.2]) sphere(10);

		translate([-20,10,14.5]) rotate([-18,-20,0]) scale([1,1,0.4]) sphere(10);
	
		translate([0,27,knuckleR]) rotate([0,90,0]) 
			cylinder(r=knuckleR, h=55, center=true, $fn=fn);

		translate([0,2,0]) scale([1,0.8,1]) cylinder(r=palmW/2-0.5, h=wristH/2, $fn=fn*2);	
		difference()
			{
			translate([0,-1,wristH-1]) rotate([-10,-5,0]) scale([1,0.8,0.3]) 
				sphere(r=palmW/2+1.25, $fn=fn*2);
			translate([0,0,-1000/2]) cube(1000, center=true);
			}

		for(i=[-1,1]) translate([26.6*i,-12,wristH/2]) cube([th,10,wristH], center=true); 

		translate([0,-18,0]) 
			{
			translate([0,0,17]) scale([1,1,0.4]) rotate([90,0,0]) 
				cylinder(r=palmW/2-6, h=th, center=true, $fn=fn); 
			rotate([90,0,0]) intersection() 
				{ 
				cylinder(r=palmW/2-4, h=th, center=true, $fn=fn); 
				translate([0,palmW,0]) cube(palmW*2, center=true); 
				}
			}

		translate([0,-19,26]) intersection() 
			{ 
			rotate([-20,0,0]) scale([0.5,0.3,0.1]) sphere(r=palmW/2-6); 
			}
		}

	for(i=[-1,1]) 
		translate([26.6*i,-12,wristH/2]) { 
			cube([th,30,wristH], center=true); 
			translate([0,-30+wristH*1.5,0]) rotate([0,90,0]) 
				cylinder(r=wristH/2, h=th, center=true, $fn=fn);
			}
	}
