/* interface_pcb.scad
 *
 *    OpenSCAD script to generate a model for an interface PCB for an arcade joystick
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

//translate([11.8, -8.5, 1.6]) color("red") import("interface_pcb.stl");

module interface_pcb() {

    difference() {
        union() {
            translate([-0.4, 0, 0.8]) cube([19, 24, 2.0], center=true);
            translate([-10, -0, 0]) rotate([0, 180, -90]) pj320a();
        }
        translate([1.5, 9, 0]) cylinder(r=1.5, h=5, center=true);
        translate([-3.4, -9, 0]) cylinder(r=1.5, h=5, center=true);
    }
}

//interface_pcb();
