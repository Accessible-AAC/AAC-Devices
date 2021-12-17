/* enclosure.scad
 *
 *    OpenSCAD script to generate an enclosure for the atmega32u4 V1.2 huba with no IR Tx LED or IR Rx module
 *
 *    Copyright 2019 Don Haig (accessible.aac at gmail dot com)
 *
 *    This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License
 *
 *    To view a copy of this license, visit: https://creativecommons.org/licenses/by-sa/4.0/
 */


// This enclosure has been reliably printed on a TEVO Michelangelo 3D printer. (Your mileage may vary.)

$fn = 50;

include <../../../../openscad/rounded_box1.scad>
use <pcb.scad>

tol = 0.4;              // 3D printer nozzle diameter (mm)

// Enclosure dimensions
l = 77.0;               // Enclosure length
w = 68.0;                 // Enclosure width
h_t = 10.0;               // Height of enclosure top piece
h_b = 11.4;             // Height of enclosure bottom piece
r = 1.3;                  // Radius value used to round enclosure edges
lip_w1 = 1.2;           // Width of lip
lip_h = 4;              // Height of enclosure lip
t = 2.4;                // Enclosure wall thickness

pcb_h = h_b-7.3;

module bottom(view) {
    pcb_h = h_b-7.8;
    m_r = 0.5;

    module side_buttress() {
        minkowski() {
            cube([ l-3*m_r, 1, h_b-lip_h], center = true);
            sphere(r=m_r);
        }
    }


    color("teal") 
    difference() {
        union() {
            rounded_bottom(length=l, width=w, height=h_b, corner_radius=r, lip_width=lip_w1,                                            
                                    lip_height=lip_h, wall_thickness=t, tolerance=tol); 
            translate([0, w/2-m_r + 0.2, 2.8]) side_buttress();
            translate([0, -(w/2-m_r +0.2), 2.8]) side_buttress();
        }

        translate([0, 0, pcb_h]) pcb(cutouts = "up");
        

    }
    if (view == "ALL") {
        translate([0, 0, pcb_h]) pcb(); // Show representation of internal PCB
    }

}


module top(view) {
    pcb_h = h_t+2.8;
    m_r = 0.5;

    module side_buttress() {
        minkowski() {
            cube([ l-3*m_r, 1, h_t], center = true);
            sphere(r=m_r);
        }
    }


    module usb_recess() {
        translate([-(l/2 + t/2), 10.5, 3]) rotate ([90, 0, 90])
        minkowski() {
            cube([11, 8, t/2]);
            cylinder(r=2,h=1);
        }
    }

    color("white") 
    difference() {
        union() {
            rounded_top(length=l, width=w, height=h_t, corner_radius=r, lip_width=lip_w1,
                                        lip_height=lip_h, wall_thickness=t, tolerance=tol); 
            translate([0, w/2-m_r, 4.2]) side_buttress();
            translate([0, -(w/2-m_r), 4.2]) side_buttress();
        }

        translate([0, 0, pcb_h]) rotate([0, 180, 0]) pcb();
    }

    if (view == "ALL") {
        translate([0, 0, pcb_h]) rotate([0, 180, 0]) pcb(); // Show representation of internal PCB
        echo(pcb_h);
    }
}

module top_and_bottom(view){
    translate([0, 0, h_b + lip_h + 0.0]) rotate([0, 180, 0])
    top();
    bottom(view);

}

/**************************************************************************
  Uncomment lines below as required
***************************************************************************/

//difference() {
//translate([0, 0, 20]) rotate([0, 180, 0])
top();
//top("ALL");
//bottom();
//bottom("ALL");
//translate([0, 0, t]) bottom("ALL");
//top_and_bottom();
//top_and_bottom("ALL");

//translate([20, 0, 0]) cube([40, 80, 50], center=true);
//translate([0, l/4, pcb_h]) cube([1.5*w, 0.8*l, 2.2*(h_t+h_b) ], center=true);
//translate([0, -3*l/4, pcb_h]) cube([1.5*w, 0.8*l, 2.2*(h_t+h_b) ], center=true);
//translate([0, 3*l/4, pcb_h]) cube([1.5*w, 0.8*l, 2.2*(h_t+h_b) ], center=true);
//}

