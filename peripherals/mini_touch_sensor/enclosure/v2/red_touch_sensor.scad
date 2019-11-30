/* red_touch_sensor.scad
 *
 *    OpenSCAD script to generate an model for the red touch sensor PCB 
 *
 *    Copyright 2018 Don Haig (time4tux at gmail dot com)
 *
 *    GNU GPLv3 (See LICENSE for details) 
 *
 */
use <straight_header.scad>

$fn = 50;

tol = 0.4;
pcb_l = 11.1+tol;
pcb_w = 14.6+tol;
pcb_h = 0.9;
//pcb_h = 3;

l_r = 1.0;  // Radius of mounting holes

module substrate () {
    color("darkred") cube([pcb_l, pcb_w, pcb_h], center=true);
    translate([0, -2, pcb_h/2]) {
        difference() {
             color("white") cylinder(r=5.4, pcb_h/2, center=true);
             color("white") cylinder(r=5.2, pcb_h/2+0.01, center=true);
        }
    }
}


module header_holes() {

    d_e = 1.5;   // Distance of header holes from the edge
    h_r = 0.55;     // Radius of header holes

    for(x  = [0 : 2]) {
     translate([-2.54 + x*2.54, +pcb_w/2 -d_e, 0]) cylinder(r=h_r, h = 1.1*pcb_h, center = true);
    }
}

module header_pins_cutout() {
    //translate([-2.54, pcb_w/2 -3.1, -9]) straight_header(3,1);
    translate([-2*2.54, pcb_w/2 -3.1 - 2.54/2, 0]) cube([4*2.54, 1*2.54, 1.5+pcb_h/2]);
}

module red_sensor_pcb() {
    translate([0, 0, pcb_h/2]) {
//        header_pins_cutout();
        difference() {
            substrate();
            header_holes();
        }
        translate([-2.54, pcb_w/2 -1.5, -9]) straight_header(3,1);
    }
}

//red_sensor_pcb();
