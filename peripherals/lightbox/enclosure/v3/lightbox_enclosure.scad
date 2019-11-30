/* lightbox_enclosure.scad
 *
 *    OpenSCAD script to generate an enclosure for lightbox peripheral
 *
 *    Copyright 2019 Don Haig (time4tux at gmail dot com)
 *
 *    GNU GPLv3 (See LICENSE for details) 
 *
 */

$fn = 50;
use<pj320a.scad>
use<lightbox_pcb.scad>
include <rounded_minkowski_box.scad>

// Enclosure dimensions
l = 38;
w = 122;
h_t = 13;
h_b = 10;
r = 6;
lip_w1 = 1.2;
lip_h = 4;
t = 2.4;

snaps = "REVERSE";       // "normal"  - bumps on lid, recesses on the bottom piece of enclosure
                         // "reverse" - recesses on lid, bumps on the bottom piece of enclosure
                         // "NORMAL" -  larger recesses on lid, larger bumps on the bottom piece of enclosure
                         // "REVERSE" - larger recesses on lid, larger bumps on the bottom piece of enclosure


tol = 0.4;

module pj320a_connector(){
    translate([-l/2+0.7*t+1, -47, 5+t]) rotate([0, 180, -90]) pj320a("down");
}

module pj320a_connector_supports(){
    translate([-l/2+0.7*t+7.3, -47,  1.2]) cube([14.0, 7, 2.2],center=true);
    translate([-l/2+0.7*t+14.8, -47,  3.2]) cube([4, 7, 6.2],center=true);
}

module bottom() {
    module pcb_posts() {
    r_p = 2;        // post radius
    h_p = 7.8;     // post height

        //translate ([32, 3.4, 0]) {
        translate ([3.4, 40.4, 0]) {
            cylinder(r=r_p, h=h_p, center=false);
            cylinder(r=0.55*r_p, h=h_p+2, center=false);
        }

        //translate ([-42.8, 3.4, 0]) {
        translate ([3.4, -34.6, 0]) {
            cylinder(r=r_p, h=h_p, center=false);
            cylinder(r=0.55*r_p, h=h_p+2, center=false);
        }
    }

    difference() {
        color("green")
        union() {
            rounded_minkowski_inner_lip(length=l, width=w, height=h_b, corner_radius=r, lip_width=lip_w1,                                            
                                        lip_height=lip_h, wall_thickness=t, tolerance=tol, snaps=snaps); 

            //translate ([0, w/2, -t]) left_anchor(w=3, r=4);
            //translate ([0, -w/2, -t]) right_anchor(w=3, r=4);
            // PCB mount
            //translate([0.42*l, 0, 1.10]) cube([12, 6, 4.5], center = true);
            pcb_posts();
            //translate([36.5, 0, 2.5]) cube([3, 6, 11], center = true);
        }
        translate([-8, 2, 7+t]) color("blue")lightbox_pcb();
        pj320a_connector();

        // cross section
        //translate([-75, -50, -10]) cube([100, 100, 100]);
        //translate([-110, -50, -10]) cube([100, 100, 100]);
        //translate([-35, -110, -10]) cube([100, 100, 100]);
        //translate([-35, -24, -10]) cube([100, 140, 100]);

    }
        color("green") pj320a_connector_supports();
        
        //translate([-8, 2, 7+t]) color("blue")lightbox_pcb();
        translate([-8, 2, 26]) color("red")lightbox_pcb();
}

module top() {
    difference() {
        rounded_minkowski_outer_lip(length=l, width=w, height=h_t, corner_radius=r, lip_width=lip_w1,
                                    lip_height=lip_h, wall_thickness=t, tolerance=tol, snaps = snaps); 

        translate([ 7, 2, h_t-2*t]) rotate([0, 180, 0]) color("blue")lightbox_pcb();

        // cross section 1
        //translate([-35, -80, -10]) cube([100, 100, 100]);
        // cross section 2
        //translate([-55, -0, -10]) cube([120, 100, 100]);
    }
        //translate([ 7, 2, h_t-2*t]) rotate([0, 180, 0]) color("blue")lightbox_pcb();
}

//translate([1.5*l, 0, t])
//translate([0, 0, h_t+2*t+0.8]) rotate([0, 180, 0]) color("gold") top();
translate([0, 0, 55]) rotate([0, 180, 0]) 
% top();

translate([0, 0, t]) bottom();

