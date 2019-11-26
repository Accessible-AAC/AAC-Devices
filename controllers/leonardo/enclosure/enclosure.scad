/* enclosure.scad
 *
 *    OpenSCAD script to generate an enclosure for an arduino leonardo based controller:
 *    
 *    SensAct: https://github.com/AbilitySpectrum/Sensact
 *
 *    netClé: https://github.com/AbilitySpectrum/netCle
 *
 *    Copyright 2019 Don Haig (accessible.aac at gmail dot com)
 *
 *    This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License
 *
 *    To view a copy of this license, visit: https://creativecommons.org/licenses/by-sa/4.0/
 */


// This enclosure has been reliably printed on a TEVO Michelangelo 3D printer
// equipped with a 0.4 mm nozzle. (Your mileage may vary.)

$fn = 50;

include <../../../openscad/rounded_box1.scad>
include <pcbs.scad>

tol = 0.4;              // 3D printer nozzle diameter (mm)

// Enclosure dimensions
l = 84.8;               // Enclosure length
w = 80;                 // Enclosure width
h_t = 10;               // Height of enclosure top piece
h_b = 24.8;             // Height of enclosure bottom piece
r = 6;                  // Radius value used to round enclosure edges
lip_w1 = 1.2;           // Width of lip
lip_h = 4;              // Height of enclosure lip
t = 2.4;                // Enclosure wall thickness


module bottom(view) {

    module usb_recess() {
        translate([-(l/2 + t/2), 10.5, 3]) rotate ([90, 0, 90])
        minkowski() {
            cube([11, 8, t/2]);
            cylinder(r=2,h=1);
        }
    }

    color("teal") 
    difference() {
        rounded_bottom(length=l, width=w, height=h_b, corner_radius=r, lip_width=lip_w1,                                            
                                    lip_height=lip_h, wall_thickness=t, tolerance=tol); 

        translate([0, 0, 17]) pcbs(cutouts = "up");
        
        usb_recess();

    }

    if (view == "ALL") {
        translate([0, 0, 17]) pcbs(); // Show representation of internal PCBs
    }
}


module top() {

    translate([0, 0, t])
    color("white") 
    difference() {
        rounded_top(length=l, width=w, height=h_t, corner_radius=r, lip_width=lip_w1,
                                    lip_height=lip_h, wall_thickness=t, tolerance=tol); 

        translate([0, 0, 12.5]) rotate([0, 180, 0]) pcbs();
    }
}

module top_and_bottom(view){
    translate([0, 0, h_b + lip_h + 14]) rotate([0, 180, 0])
    top();
    bottom(view);

}

/**************************************************************************
  Uncomment lines below as required
***************************************************************************/

// top();
//bottom();
//bottom("ALL");
//top_and_bottom();
top_and_bottom("ALL");
