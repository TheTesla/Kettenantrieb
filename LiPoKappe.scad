 

$fn=5;

l = 30;
b = 15;
h = 20;
ho = 5;


d = 0.7;

difference(){
	cube([l+2*d,b+2*d,h+d]);
	translate([d,d,d]) cube([l,b,h+1]);
	translate([d+l/2,d,d]) cube([l,b,ho]);

}