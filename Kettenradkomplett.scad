
$fn = 50;

pi = 3.14159;

h = 4.5;
hz1 = 15;
hz2 = 15;

h1 = 33;
h2 = 33;
hs1 = 12;
hs2 = 12;
sb1 = 3;
sb2 = 3;
st1 = 12;
st2 = 12;

rl = 4;


s = 14.5;
n = 13;

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
		translate([0,0,hs2+h+sb2])cylinder(h2-sb2-hs2,r,r);
		translate([0,0,hs2+h])cylinder(sb2,r-st2,r-st2);
		translate([0,0,-hs1])cylinder(h+hs1+hs2,r,r);
		translate([0,0,-sb1-hs1])cylinder(sb1,r-st1,r-st1);
		translate([0,0,-h1])cylinder(h1-sb1-hs1,r,r);
	
	}
	
	translate([0,0,-h2]) cylinder(h1+h2+h,rl,rl);

}