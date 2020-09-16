/* captive_nut.scad
 *
 *    OpenSCAD script to generate an model for a captive nut
 *
 *    Copyright 2019 Don Haig (accessible.aac at gmail dot com)
 *
 *    This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License  
 *
 *    To view a copy of this license, visit: https://creativecommons.org/licenses/by-sa/4.0/
 *
 *    Based Chris Bate video: https://www.youtube.com/watch?v=KAKEk1falNg
 */

$fn = 50;

tol = 0.4;

module hex_nut (w, h) {
    tol = 0.5;

    hull() {
    cube([(w+tol)/1.7, w+tol, h+tol], center=true);
    rotate([0, 0, 120]) cube([(w+tol)/1.7, w+tol, h+tol], center=true);
    }
}

module m6_nut() {
    nut_dia = 10;
    nut_h = 4.8;

    translate([0, 0, nut_h/2]) color("red") hex_nut(nut_dia, nut_h);
}

module 8_32_nut() {
    nut_dia = 8.4;
    nut_h = 3.2;

    translate([0, 0, nut_h/2]) color("blue") hex_nut(nut_dia, nut_h);
}

module 8_32_washer() {
    washer_dia = 7.3;
    washer_h = 1.0;

    translate([0, 0, washer_h/2]) color("violet") cylinder(r=washer_dia/2, h=washer_h, center=true);
}

module 8_32_bolt() {

    bolt_dia = 4.2 + 2*tol;
    bolt_h = 38;
    head_dia = 8; 
    head_h = 3.2;

    color("silver"){
        cylinder(r=bolt_dia/2, h= bolt_h, center=true);
        translate([0, 0, bolt_h/2]) cylinder(r=head_dia/2, h= head_h, center=true);
    }
}

module joystick_shaft(l=10) {
    shaft_dia = 9.0 + 2*tol;
    threaded_dia = 5.6 + 2*tol;
    threaded_h = 9.0 + tol;

    color("silver") {
        translate([0, 0, threaded_h/2]) cylinder(r=threaded_dia/2, h= threaded_h, center=true);
        translate([0, 0, -l/2]) cylinder(r=shaft_dia/2, h= l, center=true);
    }
}

module arcade_handle() {
    difference() {
        translate([-7, -7, 0]) cube ([14, 14, 12.0]);
        translate([0, 0, 2]) {
            m6_nut();
            joystick_shaft();
        }
    }
    //translate([0, 0, 2]) { m6_nut(); joystick_shaft(); }
}

module captive_8_32() {
    translate([20, 20, 0]){
    difference() {
        translate([-7, -7, 0]) cube ([14, 14, 5.4]);
        translate([0, 0, 2]) { 
            8_32_nut();
            8_32_bolt();
            }
        }
    }
    //translate([20, 20, 2]) { 8_32_nut(); 8_32_bolt(10); }
}

//arcade_handle();
//captive_8_32();
//nut_w = 8.4;
//nut_h = 3.0;
//hex_nut(nut_w, nut_h);
