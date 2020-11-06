/* straight_header.scad
 *
 *    OpenSCAD script to generate rows of header pins
 *
 *    Copyright 2018 Don Haig (time4tux at gmail dot com)
 *
 *    GNU GPLv3 (See LICENSE for details) 
 *
 */

n = 8;               // Number of pins in header
r = 1;                // number of rows


module straight_header(n, r) {
    spacing = 2.54;       // spacing between pins
    plastic = "black";     // Colour of plastic base

    module straight_header_pin(x, y){

        // Dimensions (mm)
        pin_w = 0.65;       // Pin width
        pin_h = 11.5;       // Pin height
        plastic_w = 2.5;    // width of plastic base


        module pin () {

            translate([-pin_w/2, -pin_w/2, 0]) color("silver") cube([pin_w, pin_w, pin_h]);
        }

        module plastic_base() {
            translate([-plastic_w/2, -plastic_w/2, 6]) {
                difference() {
                    color(plastic) cube([plastic_w, plastic_w, plastic_w]);
                    translate([0,0,-0.05*plastic_w]) cylinder(r=plastic_w/4, h=1.1*plastic_w, $fn = 50);
                    translate([+plastic_w, 0, -0.05*plastic_w]) cylinder(r=plastic_w/4, h=1.1*plastic_w, $fn = 50);
                    translate([0, +plastic_w, -0.05*plastic_w]) cylinder(r=plastic_w/4, h=1.1*plastic_w, $fn = 50);
                    translate([+plastic_w, +plastic_w, -0.05*plastic_w]) cylinder(r=plastic_w/4, h=1.1*plastic_w, $fn = 50);
                }
            }
        }

        translate([x, y, 0]) union() {
            pin();
            plastic_base();
        }
    }
    for (r = [0:1:r-1]) {
        for (x = [0:1:n-1]) {
            straight_header_pin(x*spacing, r*spacing);
        }
    }
}

module header_pads(n, r, h) {
    spacing = 2.54;       // spacing between holes
     o_r = 1;       // outer radius
     i_r = 0.35;    // inner radius 

    module square_header_pad(x, y){
       translate([x, y, 0,])
       color("gold") 
       cube([2*o_r, 2*o_r, 1.1*h], center=true);

       translate([x, y, 0,])
       color("pink")
       cylinder(r=i_r, h=1.1*h, center=true);
    }

    module round_header_pad(x, y){

       translate([x, y, 0,])
       color("gold") 
       cylinder(r=o_r, h=1.1*h, center=true);

       translate([x, y, 0,])
       color("pink")
       cylinder(r=i_r, h=1.1*h, center=true);
    }

    for (r = [0:1:r-1]) {
        for (x = [0:1:n-1]) {
            if (x == 0) square_header_pad(x*spacing, r*spacing);
            else round_header_pad(x*spacing, r*spacing);
        }
    }

}

module header_holes(n, r, h) {
    spacing = 2.54;       // spacing between holes

    module straight_header_hole(x, y){
       i_r = 0.35;    // inner radius 

       translate([x, y, 0,])
       color("black")
       cylinder(r=i_r, h=1.2*h, center=true);
    }

    for (r = [0:1:r-1]) {
        for (x = [0:1:n-1]) {
            straight_header_hole(x*spacing, r*spacing);
        }
    }

}

//straight_header(n, r);
