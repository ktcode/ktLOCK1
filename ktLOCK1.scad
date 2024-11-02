//
// ktLOCK1
//
 
gap1 = 0.001;
gap2 = 0.002;
th = 2;

W = 69.5;
D = 37.5;
H = 90.5;

NR = 23;
NT = 6.2;
NH = 13;

UL = 35;

AW = 20.5;

base();
adapter();


module base()
{
difference()
{
    union()
    {
        translate([-45/2, UL, 0]) cube([45, 46.5, 10.6]);
    }
    translate([-45/2, UL, 0]) cube([45, 46.5, 1]); //tape
    
    translate([0, -NR/2, 0]) knob();
}
}


module adapter()
{
difference()
{
    union()
    {
        translate([-AW/2, -30/2, 10.6+1]) cube([AW, 30, 30]);
    }
    translate([-45/2, UL, 0]) cube([45, 46.5, 1]); //tape
    
    translate([0, -NR/2, 0]) knob();
}
}



module knob()
{
rr=12;
difference()
{
    union()
    {
        translate([-50.5/2, 0, 0]) cube([50.5, 66.5, 10.6]);
        
        translate([0, NR/2, 10.6]) cylinder(r=NR/2, h=1, $fn=100);
        //translate([0, NR/2, 10.6]) cylinder(r=NR/2, h=13, $fn=100);
        translate([-NR/2, 0, 10.6+1]) cube([NR, NR, NH-1]);
        translate([0, NR, 10.6+NH]) rotate([90, 0, 0]) cylinder(r=NT/2, h=NR, $fn=100);
    }
    translate([NT/2+rr/2, NR, 10.6+1+rr/2]) rotate([90, 0, 0]) cylinder(r=rr/2, h=NR, $fn=100);
    translate([NT/2+rr/2, 0, 10.6+1]) cube([rr, NR, rr]);
    translate([NT/2, 0, 10.6+1+rr/2]) cube([rr, NR, rr]);
    translate([-NT/2-rr/2, NR, 10.6+1+rr/2]) rotate([90, 0, 0]) cylinder(r=rr/2, h=NR, $fn=100);
    translate([-NT/2-rr-rr/2, 0, 10.6+1]) cube([rr, NR, rr]);
    translate([-NT/2-rr, 0, 10.6+1+rr/2]) cube([rr, NR, rr]);
}
}

/*
module base()
{
difference()
{
    union()
    {
        translate([-W/2, -0.5-14-th+7/2+th, -42]) cube([W, 60, 42]);
    }
   
    unit();
   
    translate([-6/2, -7/2-0.5, -16-25]) cube([6, 60, 12]);
}
}
 
module unit()
{
    translate([-W/2, 0, 0]) cube([W, D, H]);
   
    translate([-2.5, -(7+1)/2-0.5+1.5, -16-2]) rotate([0, 0, 0]) cylinder(r1=(7+1)/2, r2=(7+1)/2,  h=16+2, $fn=100);
    translate([2.5, -(7+1)/2-0.5+1.5, -16-2]) rotate([0, 0, 0]) cylinder(r1=(7+1)/2, r2=(7+1)/2,  h=16+2, $fn=100);
    translate([-5/2, -(7+1)-0.5+1.5, -16-2]) cube([5, (7+1), 16+2]);
    translate([0, -(7+1)/2-0.5+0.5, -16-25]) rotate([0, 0, 0]) cylinder(r1=6/2, r2=6/2,  h=25, $fn=100);
    
    translate([-(5+(7+1))/2, -(7+1)-0.5+(7+1)/2+1.5, -16-2]) cube([5+(7+1), (7+1)+50, 16+2]);
    translate([-6/2, -(7+1)-0.5+(7+1)/2, -16-25]) cube([6, (7+1)+50, 25]);
}

module futa()
{
difference()
{
    translate([0, 0, 35]) rotate([-45, 0, 0]) 
    union()
    {
        translate([-(5+(7+1))/2+0.5/2, -(7+1)-0.5+(7+1)/2+1.5, -16-2]) cube([5+(7+1)-0.5, (7+1)+50-0.5, 16+2-0.5]);
        
    }
    
    translate([0, 0, 35]) rotate([-45, 0, 0]) 
    union()
    {
        translate([-2.5, -(7+1)/2-0.5+0.5+1.5-1.5, -16-2-1]) rotate([0, 0, 0]) cylinder(r1=(7+1)/2, r2=(7+1)/2,  h=16+2+1, $fn=100);
        translate([2.5, -(7+1)/2-0.5+0.5+1.5-1.5, -16-2-1]) rotate([0, 0, 0]) cylinder(r1=(7+1)/2, r2=(7+1)/2,  h=16+2+1, $fn=100);
        translate([-5/2, -(7+1)-0.5+0.5+1.5-1.5, -16-2-1]) cube([5, (7+1), 16+2+1]);
    }

    translate([0, -(7+1)/2-0.5-2, 25/2]) rotate([-90, 0, 0]) cylinder(r1=6/2, r2=6/2,  h=25+15, $fn=100);
    
    translate([-6/2, -(7+1)-0.5+(7+1)/2, 0]) cube([6, (7+1)+50, 25/2]);
    translate([-500/2, -500/2, -100]) cube([500, 500, 100]);
}
}
*/