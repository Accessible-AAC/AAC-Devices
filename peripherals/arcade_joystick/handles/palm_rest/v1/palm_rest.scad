/* palm_rest.scad
 *
 *    OpenSCAD script to generate a palm rest handle for arcade joystick
 *
 *    Copyright 2019 Don Haig (accessible.aac at gmail dot com)
 *
 *    This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License  
 *
 *    To view a copy of this license, visit: https://creativecommons.org/licenses/by-sa/4.0/
 *
 */

$fn = 50;
include <../../../../../openscad/rounded_minkowski_box.scad>
use <../../../../../openscad/captive_nut.scad>

// Dimensions
l = 104.8;
w = 70;
h_b = 40;
r = 6;
lip_w1 = 1.2;
lip_h = 0;
t = 14;

snaps = "REVERSE";       // "normal"  - bumps on lid, recesses on the bottom piece of enclosure
                         // "reverse" - recesses on lid, bumps on the bottom piece of enclosure
                         // "NORMAL" -  larger recesses on lid, larger bumps on the bottom piece of enclosure
                         // "REVERSE" - larger recesses on lid, larger bumps on the bottom piece of enclosure


tol = 0.4;

module frame() {
//    difference() {
        difference() {
                rounded_minkowski_inner_lip(length=l, width=w, height=h_b, corner_radius=r, lip_width=lip_w1,                                            
                                            lip_height=lip_h, wall_thickness=t, tolerance=tol, snaps=snaps); 

            // cross section
            //translate([-75, -50, -10]) cube([100, 100, 100]);
            //translate([-110, -50, -10]) cube([100, 100, 100]);
            translate([-55, -115, -15]) cube([110, 100, 100]);
            translate([-55, 15, -15]) cube([110, 100, 100]);
            translate([l/2-t/2, 0, 0.6*h_b]) top_pin();
            translate([-l/2+t/2, 0, 0.6*h_b]) top_pin();
        }
//        translate([-l/2+t, t/2, 0.7*h_b]) rotate([90, 0, 0])cylinder(r=t/2, h=t);
//        translate([ l/2-t, t/2, 0.7*h_b]) rotate([90, 0, 0])cylinder(r=t/2, h=t);
//    }
}

module top_pin() {
    difference() {
            cube([1.1*t, 1.1*t, t],center=true);
            cylinder(r=t/4, h=1.1*t, center=true);
    }
}

module palm_rest() {
    color("red")
    difference(){
        minkowski() {
            frame();
            sphere(r=1);
        }
        translate([0, 0, -10]){
            m6_nut();
            joystick_shaft();
        }
    }   
}

palm_rest();

