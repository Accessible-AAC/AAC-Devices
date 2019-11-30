/* mpu-6050_pcb.scad
 *
 *    OpenSCAD script to generate an model for the MPU-6050 gyro PCB 
 *
 *    Copyright 2018 Don Haig (time4tux at gmail dot com)
 *
 *    GNU GPLv3 (See LICENSE for details) 
 *
 */
$fn = 50;

use <straight_header.scad>

pcb_l = 20.5;
pcb_w = 15.7;
pcb_h = 1.5;

l_r = 1.45;  // Radius of large mounting holes
tol = 0;

module substrate () {
    color("cyan") cube([pcb_l, pcb_w, pcb_h], center=true);
}


module mounting_holes() {
    d_e = 0.7;   // Distance of mounting holes from the edge

    translate([pcb_l/2 - l_r - d_e, pcb_w/2 - l_r - d_e, 0]) cylinder(r=l_r, h = 1.1*pcb_h, center = true);
    translate([-pcb_l/2 + l_r + d_e, pcb_w/2 - l_r - d_e, 0]) cylinder(r=l_r, h = 1.1*pcb_h, center = true);
}

module header_holes() {

    d_e = 0.4;   // Distance of mounting holes from the edge
    h_r = 0.35;     // Radius of header holes

    for(x  = [0 : 7]) {
     translate([-pcb_l/2 + d_e + h_r + x*2.7, -pcb_w/2 + d_e + h_r, 0]) cylinder(r=h_r, h = 1.1*pcb_h, center = true);
    }
}

module ic() {
    translate([-3.9/2, -3.9/2, pcb_h/2]) color("black") cube([3.9, 3.9, 0.8]);
}
module gyro_pcb() {
    translate([0, 0, pcb_h/2]) {
        ic();
        difference() {
            substrate();
            header_holes();
            mounting_holes();
        }
    }
}

gyro_pcb();
