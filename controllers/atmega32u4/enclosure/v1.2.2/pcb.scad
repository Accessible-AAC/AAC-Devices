/* pcb.scad
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

use<../../../../openscad/pj320a.scad> 

// PCB dimensions
pcb_r = 1.27;
pcb_l = 71.5 - 2*pcb_r;
pcb_w = 58.4 - 2*pcb_r;
pcb_h = 1.6;

c_r = 5.0/2;    // Connector radius 
c_h = 3.8;      // Connector height

tol = 0.4;

module substrate () {
    color("darkgreen") 
    difference() {
        hull() {
            translate([ pcb_l/2,  pcb_w/2, 0]) cylinder(r=pcb_r, h=pcb_h, center=true);
            translate([ pcb_l/2, -pcb_w/2, 0]) cylinder(r=pcb_r, h=pcb_h, center=true);
            translate([-pcb_l/2,  pcb_w/2, 0]) cylinder(r=pcb_r, h=pcb_h, center=true);
            translate([-pcb_l/2, -pcb_w/2, 0]) cylinder(r=pcb_r, h=pcb_h, center=true);
        }

        translate([pcb_w/2-4.1, 8.5, 0]) cylinder(r=1.5, h=1.1*pcb_h, center=true);
        translate([pcb_w/2-4.1, 8.5-35, 0]) cylinder(r=1.5, h=1.1*pcb_h, center=true);
        translate([pcb_w/2-4.1-36, 8.5-35, 0]) cylinder(r=1.5, h=1.1*pcb_h, center=true);
        translate([pcb_w/2-4.1-36, 8.5+10, 0]) cylinder(r=1.5, h=1.1*pcb_h, center=true);
    }
}

module round_openings (cutouts) {
    
    module trrs_opening(colour, cutouts=cutouts) {
        translate([1, 0, -2.70]) rotate([0,0,90]) color("grey") pj320a(cutouts);                                                                                            
    }

    // i2c
    translate([-(pcb_l/2+c_h-2.75+0.4), -pcb_w/2 + 5.4 + c_r, c_r+0.7*pcb_h]) {
        rotate([0, 0, 180]) trrs_opening("pink", cutouts);
    }                                                                                                                                     


    // IR LED 
    //translate([-0.5, pcb_w/2+2, c_r+0.7*pcb_h]) {                                                                                                
    //     rotate([0, 0, 90]) trrs_opening("gold", cutouts);
    //}

    // Relay
    translate([-(pcb_l/2+c_h-2.75+0.4), -pcb_w/2 + 3.5 + 2*c_r + 8.8 + 2*c_r + 9.0 + 2*c_r + 6.0 + c_r, c_r+0.7*pcb_h]) {                                                                                                
        rotate([0, 0, 180]) trrs_opening("violet", cutouts);
    }                                                                                                                                     

    // input 1 
    translate([pcb_l/2+1.4, -pcb_w/2 + 8.3 + 2*c_r + 28.8 + c_r, c_r+0.7*pcb_h]) {                                                                                                
        trrs_opening("orange", cutouts);
    }

    // input 2 
    translate([pcb_l/2+1.4 , -pcb_w/2 + 21.2 + c_r+ 9.4, c_r+0.7*pcb_h]) {                                                                                                
        trrs_opening("red", cutouts);
    }                                                                                                                                     


    // input 3 
    translate([pcb_l/2+1.4 , -pcb_w/2 + 8.6 + c_r+ 10.1, c_r+0.7*pcb_h]) {                                                                                                
        trrs_opening("red", cutouts);
    }                                                                                                                                     

    // UART 
    translate([pcb_l/2+1.4 , -pcb_w/2 + c_r + 5.3, c_r+0.7*pcb_h]) {                                                                                                
        trrs_opening("red", cutouts);
    }                                                                                                                                     
}


module usb_connector(cutouts) {
    usb_l = 16.2;        // Length of USB connector opening
    usb_h = 11.2;        // Height of USB connector opening
    usb_w = 12.4;

    translate([-usb_w/2 + 0.6, -pcb_w/2-usb_l/2 - 1.6, 0.8]) cube([usb_w, usb_l, usb_h]);

}

module ir_receiver() {
    ir_rx_l = 4.4;        // Length of USB connector opening
    ir_rx_h = 8.8;        // Height of USB connector opening
    ir_rx_w = 8.4;

    translate([-ir_rx_w/2 + 14.3, pcb_w/2-ir_rx_l/2+3.0 , 3.5]){
         color("black") cube([ir_rx_w, ir_rx_l, ir_rx_h]);


        //translate([ 3.3, 9, 6.5]) rotate([90, 0, 0]) color("blue") cylinder(r=0.5, h=6);
        //translate([ 3.3, 9, 2.5]) rotate([90, 0, 0]) color("blue") cylinder(r=0.5, h=6);
        //translate([ 2.3, 9,  4.5]) rotate([90, 0, 0]) color("blue") cylinder(r=0.5, h=6);
        //translate([ 4.3, 9,  4.5]) rotate([90, 0, 0]) color("blue") cylinder(r=0.5, h=6);
        //translate([ 6.3, 9,  4.5]) rotate([90, 0, 0]) color("blue") cylinder(r=0.5, h=6);
        //translate([ 5.3, 9, 2.5]) rotate([90, 0, 0]) color("blue") cylinder(r=0.5, h=6);
        //translate([ 5.3, 9, 6.5]) rotate([90, 0, 0]) color("blue") cylinder(r=0.5, h=6);
    } 
}

module buzzer() {
    translate ([8.2, 12.9, 0])
    color("black") cylinder(r=11.7/2, h =8.0 + pcb_h/2);
}

module pcb(cutouts) {
    round_openings(cutouts=cutouts);
    buzzer();
    substrate();
    usb_connector(cutouts=cutouts);
    //ir_receiver();
}

pcb();
//pcb(cutouts = "up");
