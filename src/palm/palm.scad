module palm()
{
    difference(){
        difference()
        {
            difference()
            {
                palmbody();
                    for(i=[-3,-1,1,3]) translate([i*7,28,0]) 
                        {
                        translate([0,4.5,0]) {
                            cube([10,10,21.6], center=true);
                            rotate([-45,0,0]) cube([10,14,21.6], center=true);
                        }	
                    }
                translate([0,0,-100/2]) cube(100, center=true);
            }
            translate([30,10,5]) rotate([90,0,0]) cylinder(h=13, r=6);
        }
    translate([-21,-2.5,25])
    rotate([-10,0,0])
    linear_extrude(height = 8, center = true)
    text(size = 10 ,"comfab");
    }
}

module palmbody()
{
    difference(){
        //	Palm
        hull() {
            translate([20.5,10,15.7]) rotate([-18,10,0]) scale([1,1,0.4]) sphere(10);
                
            translate([0,11,18.1]) rotate([-23,0,0]) scale([1,1,0.2]) sphere(10);

            translate([-20,10,14.5]) rotate([-18,-20,0]) scale([1,1,0.4]) sphere(10);
        
            translate([0,27,4.85]) rotate([0,90,0]) 
                cylinder(r=4.85, h=55, center=true);

            translate([0,2,0]) scale([1,0.8,1]) cylinder(r=64/2-0.5, h=10/2);	
            difference()
                {
                translate([0,-1,10-1]) rotate([-10,-5,0]) scale([1,0.8,0.3]) 
                    sphere(r=64/2+1.25);
                translate([0,0,-1000/2]) cube(1000, center=true);
                }

            for(i=[-1,1]) translate([26.6*i,-12,10/2]) cube([3,10,10], center=true); 

            translate([0,-18,0]) 
                {
                translate([0,0,17]) scale([1,1,0.4]) rotate([90,0,0]) 
                    cylinder(r=64/2-6, h=3, center=true); 
                rotate([90,0,0]) intersection() 
                    { 
                    cylinder(r=64/2-4, h=3, center=true); 
                    translate([0,64,0]) cube(64*2, center=true); 
                    }
                }

            translate([0,-19,26]) intersection() 
                { 
                rotate([-20,0,0]) scale([0.5,0.3,0.1]) sphere(r=64/2-6); 
                }
        }
        translate([-25,-30,0]) cube([50,10,30]);
    }
        
    //wrist joint
	for(i=[-1,1]) 
		translate([26.6*i,-12,10/2]) { 
			cube([3,30,10], center=true); 
			translate([0,-30+10*1.5,0]) rotate([0,90,0]) 
				cylinder(r=5, h=3, center=true);
		}
}
    
palm();
