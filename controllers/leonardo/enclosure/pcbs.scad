/* pcbs.scad
 *
 *    OpenSCAD script to generate an model for the PCB and connector openings
 *
 *    Copyright 2019 Don Haig (accessible.aac at gmail dot com)
 *
 *    This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License
 *
 *    To view a copy of this license, visit: https://creativecommons.org/licenses/by-sa/4.0/
 */

$fn = 50;

use<../../../openscad/pj320a.scad> 

// PCB dimensions
pcb_l = 80.3;
pcb_w = 62.1;
pcb_h = 1.2;

c_r = 5.0/2;    // Connector radius 
c_h = 3.8;      // Connector height

tol = 0.4;

module shield_substrate () color("darkgreen") cube([pcb_l, pcb_w, pcb_h], center=true);

module shield_connectors (cutouts) {
    
    module trrs_opening(colour, cutouts=cutouts) {
        translate([1, 0, -2.70]) rotate([0,0,90]) color("grey") pj320a(cutouts);                                                                                            
    }

    // Output B 
    translate([pcb_l/2 , -pcb_w/2 + 8.3 + c_r, c_r+0.8*pcb_h]) {                                                                                                
        trrs_opening("red", cutouts);
    }                                                                                                                                     

    // Output A 
    translate([pcb_l/2, -pcb_w/2 + 8.3 + 2*c_r + 9.0 + c_r, c_r+0.8*pcb_h]) {                                                                                                
        trrs_opening("orange", cutouts);
    }

    // IR LED 
    translate([pcb_l/2, -pcb_w/2 + 8.3 + 4*c_r + 13.4 + c_r, c_r+0.8*pcb_h]) {                                                                                                
        trrs_opening("gold", cutouts);
    }

    // Input 4
    translate([-(pcb_l/2+c_h-3.75), -pcb_w/2 + 3.5 + 2*c_r + 8.8 + 2*c_r + 9.0 + 2*c_r + 9.0 + c_r, c_r+0.8*pcb_h]) {                                                                                                
        rotate([0, 0, 180]) trrs_opening("violet", cutouts);
    }                                                                                                                                     

    // Input 3
    translate([-(pcb_l/2+c_h-3.75), -pcb_w/2 + 3.5 + 2*c_r + 8.8 + 2*c_r + 9.0 + c_r, c_r+0.8*pcb_h]) {
        rotate([0, 0, 180]) trrs_opening("brown", cutouts);
    }                                                                                                                                     

    // Input 2
    translate([-(pcb_l/2+c_h-3.75), -pcb_w/2 + 3.5 + 2*c_r + 8.8 + c_r, c_r+0.8*pcb_h]) { 
        rotate([0, 0, 180]) trrs_opening("blue", cutouts);
    }                                                                                                                                     

    // Input 1
    translate([-(pcb_l/2+c_h-3.75), -pcb_w/2 + 3.5 + c_r, c_r+0.8*pcb_h]) {
        rotate([0, 0, 180]) trrs_opening("pink", cutouts);
    }                                                                                                                                     
}


module power_connector() {

    translate([-(pcb_l/2+c_h-1), -pcb_w/2 +12.3, -11 - pcb_h/2]) {                                                                                                
        color("black") cube([c_h, 9.0+tol, 11+tol]);                                                                
    }                                                                                                                                     
}

module usb_connector() {
    usb_l = 7.6;        // Length of USB connector opening
    usb_h = 2.8;        // Height of USB connector opening

    translate([-(pcb_l/2+c_h-1), -pcb_w/2 + 12.3 + 9 + 4.4 + 20.5 + 1 , -pcb_h/2 - 1.4 -8.3]) {                                                                                                
        rotate([0, 90, 0]) color("silver"){
           linear_extrude(c_h) {
                square([usb_h + tol, usb_l- usb_h + tol], center = true);
                translate([ 0, usb_l/2-usb_h/2, 0]) circle(r=usb_h/2+tol/2);
                translate([0, -usb_l/2+usb_h/2, 0]) circle(r=usb_h/2+tol/2);
           }
        }
    }                                                                                                                                     
}

module shield_buzzer() {
    color("black") cylinder(r=11.7/2, h =8.0 + pcb_h/2);
}

module pcbs(cutouts) {
    shield_connectors(cutouts=cutouts);
    shield_buzzer();
    shield_substrate();
    power_connector();
    usb_connector();
}

//pcbs();
//pcbs(cutouts = "up");
