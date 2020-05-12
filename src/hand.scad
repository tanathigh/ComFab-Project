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

module creat_thumb(angle1,angle2,angle3,angle4)
{
    //starting pos
    translate([-80,4,14])
    //rotate
    rotate([angle1*$t,0,0])
    //rotate point in the object
    translate([0,-23,0])
    scale([1.2,1.2,1.2])
    thumb(angle2,angle3,angle4);
}

module creat_palm(){
    translate([-80,50,0])
    rotate([0,0,-90])
    scale([2,2,2])
    palm();
}

module creat_hand(r,g,b){
    //palm
    color([r/255, g/255, b/255])
    creat_palm();
    
    //4-finger
    color([r/255, g/255, b/255])
    creat_finger(20,-2,-20,20,20);
    color([r/255, g/255, b/255])
    creat_finger(23,26,0,20,20);
    color([r/255, g/255, b/255])
    creat_finger(20,54.3,20,20,20);
    color([r/255, g/255, b/255])
    creat_finger(18,82.5,40,20,20);

    //thumb
    color([r/255, g/255, b/255])
    creat_thumb(0,30,20,20);
}

creat_hand(236,188,180);

//skin tone list
//#c58c85	rgb(197, 140, 133)
//#ecbcb4	rgb(236, 188, 180)
//#d1a3a4	rgb(209, 163, 164)
//#a1665e	rgb(161, 102, 94)
//#503335	rgb(80, 51, 53)
//#592f2a	rgb(89, 47, 42)