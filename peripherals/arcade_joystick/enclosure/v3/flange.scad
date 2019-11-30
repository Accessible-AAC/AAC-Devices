/* flange.scad
 *
 *    OpenSCAD script to generate an model for the arcade joystick mounting flange
 *
 *    Copyright 2019 Don Haig (accessible.aac at gmail dot com)
 *
 *    This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License  
 *
 *    To view a copy of this license, visit: https://creativecommons.org/licenses/by-sa/4.0/
 *
 */

$fn = 50;


module flange (h, r) {

    module center() {
        union() {
            translate([r, r, 0]) square([2*r,2*r], center=true);
            translate([r, 0, 0]) circle(r); 
        }
     translate([-r, 2*r, 0])circle(r); 
     translate([3*r, 2*r, 0])circle(r); 
     translate([-r, r, 0])square([4*r, 2*r]); 
    }

    module side() {
        difference() {
            square([1*r,2*r]);
            circle(r); 
        }
    }

    module top() {
        linear_extrude(2*r){ 
            difference() {
                square([r,r]);
                circle(r); 
            }
        }
    }
    translate([-r, -1.5*r, 0])
        union() { 
            linear_extrude(h){ 
                difference() {
                    union(){
                        center(); 
                        translate([-r, 0, 0]) side();
                        translate([3*r, 0, 0]) rotate([0, 180, 0]) side();
                        }
                    translate([r, 0, 0]) circle(r/2);
                }
            }
            translate([0, r/2, r+h]) rotate([0, 90, 0]) top();
        }
}

module right_flange(h, r) {
    flange(h=h, r = 5);
}   

module left_flange(h, r) {
    rotate([0, 0, 180]) flange(h=h, r = 5);
}   

module up_flange(h, r) {
    rotate([0, 0, 90]) flange(h=h, r = 5);
}   

module down_flange(h, r) {
    rotate([0, 0, -90]) flange(h=h, r = 5);
}   

module anchor(w, r) {

    module center() {
        union() {
            translate([r, 0.75*r, 0]) square([2*r,1.5*r], center=true);
            translate([1.5*r, 2*r, -w/2]) square([1*r,2*r], center=true);
            translate([r, 0, 0]) circle(r); 
        }
    }

    module side() {
        difference() {
            square([1*r,1.5*r]);
            circle(r); 
        }
    }

    module top() {
        linear_extrude(2*r){ 
            difference() {
                square([r,r]);
                circle(r); 
            }
        }
    }
    translate([-w/2, -r, 2*r])
    rotate([0, 90, 0])
        union() { 
            linear_extrude(w){ 
                difference() {
                    union(){
                        center(); 
                        translate([-r, 0, 0]) side();
                        }
                    translate([r, 0, 0]) circle(r/2);
                }
            }
        }
}

module right_flange(h, r) {
    flange(h=h, r = r);
}   

module left_flange(h, r) {
    rotate([0, 0, 180]) flange(h=h, r = r);
}   

module up_flange(h, r) {
    rotate([0, 0, 90]) flange(h=h, r = r);
}   

module down_flange(h, r) {
    rotate([0, 0, -90]) flange(h=h, r = r);

}

module right_anchor(w, r) {
    anchor(w=w, r = r);
}

module left_anchor(w, r) {
    rotate([0, 0, 180]) anchor(w=w, r = r);
}   

module up_anchor(w, r) {
    rotate([0, 0, 90]) anchor(w=w, r = r);
}   

module down_anchor(w, r) {
    rotate([0, 0, -90]) anchor(w=w, r = r);

}

//right_flange(h=3, r = 5);

//right_anchor(w=3,r=5);
//left_anchor(w=3,r=5);
