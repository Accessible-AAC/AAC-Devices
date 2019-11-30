/* lightbox_pcb.scad
 *
 *    OpenSCAD script to generate a model for lightbox PCB
 *
 *    Copyright 2019 Don Haig (time4tux at gmail dot com)
 *
 *    GNU GPLv3 (See LICENSE for details) 
 *
 */

$fn = 50;
use<pj320a.scad>  
module lightbox_pcb() {
    //      color("red") import("lightbox_pcb_v3.stl");
    translate([-9.3, -48.8, -1.7]) rotate([0, 180, -90]) pj320a();
    difference() {
        translate([4.2, -2.4, -1.6])
        linear_extrude(1.6) {
            minkowski() {
                square([22, 104],center=true);
                circle(r=2, h=2.2);
            }
        } 
        translate([11.5, 38.5, 0]) color("blue") cylinder(r=1.5, h=4, center=true);
        translate([11.5, -36.5, 0]) color("blue") cylinder(r=1.5, h=4, center=true);
    }

    // LEDs
    led_r = 1.5;
    led_h = 5;
    translate([2.2,  48.5, 5.0]) color("blue") cylinder(r=led_r, h=led_h, center=true);
    translate([2.2,  35.5, 5.0]) color("blue") cylinder(r=led_r, h=led_h, center=true);
    translate([2.2,  22.5, 5.0]) color("blue") cylinder(r=led_r, h=led_h, center=true);
    translate([2.2,   9.5, 5.0]) color("blue") cylinder(r=led_r, h=led_h, center=true);
    translate([2.2,  -3.5, 5.0]) color("blue") cylinder(r=led_r, h=led_h, center=true);
    translate([2.2, -16.5, 5.0]) color("blue") cylinder(r=led_r, h=led_h, center=true);
    translate([2.2, -29.5, 5.0]) color("blue") cylinder(r=led_r, h=led_h, center=true);
    translate([2.2, -42.5, 5.0]) color("blue") cylinder(r=led_r, h=led_h, center=true);
}

lightbox_pcb();

