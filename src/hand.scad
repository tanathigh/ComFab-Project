use <finger/finger.scad>;
use <finger/thumb.scad>;
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
}

module creat_thumb(angle1,angle2,angle3)
{
    //starting pos
    translate([-110,-14,10])
    //rotate
    rotate([angle1*$t,0,0])
    //rotate point in the object
    translate([0,-3,-8])
    scale([1.2,1.2,1.2])
    thumb(angle2,angle3);
}

//main

//palm
translate([-80,50,0])
rotate([0,0,-90])
scale([2,2,2])
palm();

//4-finger
creat_finger(20,-2,40,20,20);
creat_finger(23,26,90,60,90);
creat_finger(20,54.3,90,60,90);
creat_finger(18,82.5,90,60,90);

//thumb
creat_thumb(90,60,90);
