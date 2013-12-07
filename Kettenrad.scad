
$fn = 50;

pi = 3.14159;

h = 4.5;

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
	cylinder(h,r,r);
	cylinder(h,r-3,r-3);

}