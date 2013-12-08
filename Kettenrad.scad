
$fn = 50;

pi = 3.14159;

h = 4.5;



hn = 12;
rn = 10;

rl = 4;


s = 14.5; 
n = 13;
nl = 6;
rkl = 5;
rlk = 19;
rb = 1.5;
hb = 11;

zb = 5;
zl = 5;

u=s*n;
r= u/(2*pi);
for(i=[0:n-1]){
rotate([0,0,360*i/n])
	translate([-1.3*zl-r,0,0])
		scale([zl,zb,1])
		linear_extrude(h){
			polygon([[0.5,-0.5],[0.5,+0.5],[1.4,-0.57],[1.4,+0.57]],[[0,1,3,2]]);
			polygon([[0.5,-0.5],[0.5,+0.5],[-0.06,-0.2],[-0.06,+0.2]],[[0,1,3,2]]);
			circle(0.2);
		}
}
difference(){
	union(){
		translate([0,0,0]) cylinder(h,r,r);
		translate([0,0,h]) cylinder(hn,rn,rn);
	}
	
	translate([0,0,0]) cylinder(hn+h,rl,rl);
	for(i=[0:nl-1]){
		translate([rlk*cos(360*i/nl),rlk*sin(360*i/nl),0]) cylinder(h,rkl,rkl);
	
	}
	translate([0,0,hb])rotate([90,0,0])cylinder(rn,rb,rb);
	translate([0,0,hb])rotate([90,0,120])cylinder(rn,rb,rb);
	translate([0,0,hb])rotate([90,0,240])cylinder(rn,rb,rb);
}