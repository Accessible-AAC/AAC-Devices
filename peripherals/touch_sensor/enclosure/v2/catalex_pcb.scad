/* catalex_pcb.scad
 *
 *    OpenSCAD script to generate an model for the catalex touch sensor PCB 
 *
 *    Copyright 2018 Don Haig (time4tux at gmail dot com)
 *
 *    GNU GPLv3 (See LICENSE for details) 
 *
 */
use <straight_header.scad>

$fn = 50;

tol = 0.4;
pcb_l = 23.6+tol;
pcb_w = 23.6+tol;
pcb_h = 1.1;
//pcb_h = 3;

l_r = 1.0;  // Radius of mounting holes

module substrate () {
    color("darkgreen") cube([pcb_l, pcb_w, pcb_h], center=true);
    translate([0, -4, 0]) color("silver") cylinder(r=5.5, pcb_h/2+0.01);
}


module mounting_holes() {
    d_e = 0.7;   // Distance of mounting holes from the edge

    translate([pcb_l/2 - l_r - d_e, pcb_w/2 - l_r - d_e, 0]) cylinder(r=l_r, h = 1.1*pcb_h, center = true);
    translate([-pcb_l/2 + l_r + d_e, pcb_w/2 - l_r - d_e, 0]) cylinder(r=l_r, h = 1.1*pcb_h, center = true);
    translate([pcb_l/2 - l_r - d_e, -pcb_w/2 + l_r + d_e, 0]) cylinder(r=l_r, h = 1.1*pcb_h, center = true);
    translate([-pcb_l/2 + l_r + d_e, -pcb_w/2 + l_r + d_e, 0]) cylinder(r=l_r, h = 1.1*pcb_h, center = true);
}

module header_holes() {

    d_e = 3.1;   // Distance of header holes from the edge
    h_r = 0.55;     // Radius of header holes

    for(x  = [0 : 2]) {
     translate([-2.54 + x*2.54, +pcb_w/2 -d_e, 0]) cylinder(r=h_r, h = 1.1*pcb_h, center = true);
    }
}

module header_pins_cutout() {
    //translate([-2.54, pcb_w/2 -3.1, -9]) straight_header(3,1);
    translate([-2*2.54, pcb_w/2 -3.1 - 2.54/2, 0]) cube([4*2.54, 1*2.54, 1.5+pcb_h/2]);
}

module touch_sensor_pcb() {
    translate([0, 0, pcb_h/2]) {
//        header_pins_cutout();
        difference() {
            substrate();
            header_holes();
            mounting_holes();
        }
        translate([-2.54, pcb_w/2 -3.1, -9]) straight_header(3,1);
    }
}

touch_sensor_pcb();
