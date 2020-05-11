use <finger/finger.scad>;
use <palm/palm.scad>;

module creat_finger(length,pos,angle1,angle2,angle3)
{
    //starting pos
    translate([-22,pos,10])
    //rotate
    rotate([0,angle1*$t,0])
    //rotate point in the object
    translate([-length/8,0,-length/2.5])
    finger(length,2,1.5,1.6,angle2,angle3);
    
    //translate([-24,pos,2.5])
    //rotate([0,angle1*$t,0])
    //finger(length,2,1.5,1.6,angle2,angle3);
}

//main

//palm
translate([-80,50,0])
rotate([0,0,-90])
scale([2,2,2])
palm();

//finger
creat_finger(20,-2,40,20,20);
creat_finger(23,26,90,60,90);
creat_finger(20,54.3,90,60,90);
creat_finger(18,82.5,90,60,90);
