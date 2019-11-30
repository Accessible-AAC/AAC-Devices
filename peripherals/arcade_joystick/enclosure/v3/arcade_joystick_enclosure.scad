/* arcade_joystick_enclosure.scad
 *
 *    OpenSCAD script to generate an enclosure for arcade joystick
 *
 *    Copyright 2019 Don Haig (accessible.aac at gmail dot com)
 *
 *    This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License  
 *
 *    To view a copy of this license, visit: https://creativecommons.org/licenses/by-sa/4.0/
 *
 */

$fn = 50;

use <../../../../openscad/pj320a.scad>
use <../../../../openscad/rounded_box2.scad>
use <../../../../openscad/captive_nut.scad>

include <mount_plate.scad>
include <flange.scad>
include <interface_pcb.scad>

// Enclosure dimensions
l = 104.8;
w = 78;
h_t = 24.0;
h_b = 25;
r = 6;
lip_w1 = 1.2;
lip_h = 4;
t = 2.4;

tol = 0.4;

module mounting_posts(view) {
    r_h = 2.4;        // hole radius
    l = 95 - 2*r;
    w = 60 - 2*r;
    h = 1.5;
    r_p = 6;        // post radius
    h_p = 37.5;     // post height
    n_h = 20.0;     // nut height

    module fillet() {
        rotate_extrude(convexivity=10){
        translate([r_p, 0 ,0]) 
            intersection() {
            square(2*r_p);
            difference() {
                square(2*r_p, center=true);
                translate([r_p, r_p,0]) circle(r_p);
                }
            }
        }
    }

    module post() {
        difference() {
            translate ([0, 0, -h/2]) cylinder(r=r_p, h=h_p, center=false);
            translate ([0, 0, 19.5]) 8_32_bolt();
            translate ([0, 0, n_h]) 8_32_nut();
        }
            translate ([0, 0, -h/2]) fillet();
    }

    translate ([-l/2+1.5,  w/2-2.5, 0]) post();
    translate ([-l/2+1.5, -w/2+2.5, 0]) post();
    translate ([ l/2-1.5,  w/2-2.5, 0]) post();
    translate ([ l/2-1.5, -w/2+2.5, 0]) post();


    if (view == "ALL") {
        translate ([-l/2+1.5, w/2-2.5, 38.4]) 8_32_washer();
        translate ([-l/2+1.5, w/2-2.5, 23.1]) 8_32_bolt();

        translate ([-l/2+1.5, -w/2+2.5, 38.4]) 8_32_washer();
        translate ([-l/2+1.5, -w/2+2.5, 23.1]) 8_32_bolt();

        translate ([ l/2-1.5, w/2-2.5, 38.4]) 8_32_washer();
        translate ([ l/2-1.5, w/2-2.5, 23.1]) 8_32_bolt();

        translate ([ l/2-1.5, -w/2+2.5, 38.4]) 8_32_washer();
        translate ([ l/2-1.5, -w/2+2.5, 23.1]) 8_32_bolt();
    }
}


module external_flange() {
    minkowski() {
        cylinder(r=10, h=.5*h_b);
        sphere(2);
    }
}


module bottom(view) {
    module pcb_posts() {
    r_p = 2;        // post radius
    h_p = 8.4;     // post height

        translate ([0.833*l/2+0.5, 9.45, 0]) {
            cylinder(r=r_p, h=h_p, center=false);
            cylinder(r=0.55*r_p, h=h_p+2, center=false);
        }

        translate ([0.743*l/2+0.5, -8.8, 0]) {
            cylinder(r=r_p, h=h_p, center=false);
            cylinder(r=0.55*r_p, h=h_p+2, center=false);
        }
    }

    difference() {
        union() {
            rounded_bottom(length=l, width=w, height=h_b, corner_radius=r, lip_width=lip_w1,                                            
                                        lip_height=lip_h, wall_thickness=t, tolerance=tol); 
            translate([0, 0, t/2.0])  mounting_posts(view);
            translate ([l/4, w/2, -t]) left_flange(h=6, r=6);
            translate ([-l/4, w/2, -t]) left_flange(h=6, r=6);
            translate ([l/4, -w/2, -t]) right_flange(h=6, r=6);
            translate ([-l/4, -w/2, -t]) right_flange(h=6, r=6);

            translate ([0, w/2, -t]) left_anchor(w=3, r=4);
            translate ([0, -w/2, -t]) right_anchor(w=3, r=4);

            // PCB mount
            translate([0.42*l, 0, 1.10]) cube([12, 6, 4.5], center = true);

            pcb_posts();
            translate([36.5, 0, 3.5]) cube([3, 6, 10], center = true);
        }
        translate([41.0, 0.2, 8.6]) rotate([0, 0, 180]) color("red") interface_pcb();

        // cross section
        //translate([-75, -50, -10]) cube([100, 100, 100]);
        //translate([-110, -50, -10]) cube([100, 100, 100]);
        //translate([-35, -110, -10]) cube([100, 100, 100]);
        //translate([-35, 14, -10]) cube([100, 100, 100]);

    }

    if (view == "ALL") {
        translate([50.0, 0.2, 8.6]) rotate([0, 180, 90]) pj320a();

        translate([41.0, 0.2, 8.6]) rotate([0, 0, 180]) color("red") interface_pcb();
        translate([0, 0, 37.6]) mount_plate(); 
    }
}

module top() {
    difference() {
        rounded_top(length=l, width=w, height=h_t, corner_radius=r, lip_width=lip_w1,
                                    lip_height=lip_h, wall_thickness=t, tolerance=tol); 
        cylinder(r=8, h=2*t, center = true);
    }
}

module top_and_bottom(view) {
    translate([0, 100, t]) color("white") top();
    color("yellow") bottom(view);
}

module cross_section() {
difference() {
    union() {
    translate([0, 0, h_t+3.9*t+11]) rotate([0, 180, 0]) color("gold") top();
    translate([0, 0, 37.6]) mount_plate();
    bottom("ALL");
    }
//    translate([-40, 0, 0]) cube([150, 150, 100], center=true);
    translate([  50, -40, 0]) cube([50, 50, 100], center=true);
//    translate([  50,  38, 0]) cube([50, 50, 100], center=true);
}
}


/**************************************************************************
  Uncomment lines below as required
***************************************************************************/

//cross_section();
//top();
//bottom();
//bottom("ALL");
top_and_bottom();
//top_and_bottom("ALL");

