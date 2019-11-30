/* hw-504_pcb.scad
 *
 *    OpenSCAD script to generate an model for the HW-504 joystick module 
 *
y
 *    Copyright 2018 Don Haig (time4tux at gmail dot com)
 *
 *    GNU GPLv3 (See LICENSE for details) 
 *
 */

$fn = 50;

tol = 0.4;
pcb_l = 33.8;
pcb_w = 27.0;
pcb_h = 0.9;

l_r = 1.6;  // Radius of mounting holes

module substrate () {
    color("darkgreen") cube([pcb_l, pcb_w, pcb_h], center=true);
    // translate([0, -4, 0]) color("silver") cylinder(r=5.5, pcb_h/2+0.01);
}


module mounting_holes() {
    d_e_1 = 1.0;   // Distance of mounting holes from the edge
    d_e_2 = 1.7;   // Distance of mounting holes from the edge
    d_e_3 = 3.0;   // Distance of mounting holes from the edge

    translate([pcb_l/2 - l_r - d_e_3, pcb_w/2 - l_r - d_e_2, 0]) cylinder(r=l_r, h = 1.1*pcb_h, center = true);
    translate([pcb_l/2 - l_r - d_e_3, -pcb_w/2 + l_r + d_e_2, 0]) cylinder(r=l_r, h = 1.1*pcb_h, center = true);
    translate([-pcb_l/2 + l_r + d_e_1, pcb_w/2 - l_r - d_e_2, 0]) cylinder(r=l_r, h = 1.1*pcb_h, center = true);
    translate([-pcb_l/2 + l_r + d_e_1, -pcb_w/2 + l_r + d_e_2, 0]) cylinder(r=l_r, h = 1.1*pcb_h, center = true);
}

module header_holes() {

    d_e = 3.1;   // Distance of header holes from the edge
    h_r = 0.55;     // Radius of header holes

    for(x  = [0 : 4]) {
     translate([-2.54 + x*2.54, +pcb_w/2 -d_e, 0]) cylinder(r=h_r, h = 1.1*pcb_h, center = true);
    }
}

module pin_right_angle_low_custom(cols) {
    w = 2.54; p = 0.65;
    d = (w - p) / 2;
    for(x = [0 : (cols -1)]) {
        translate([w * x, 0, 0]) {
            color("black") translate([0, 0, 0]) cube([w, w, w]);
            color("gold")  translate([d, d, -3]) cube([p, p, 3 + w + p]);
            color("gold")  translate([d, 7.3 + d, w + 0.1]) rotate(a=90, v=[1, 0, 0]) cube([p, p, 7.3]);
        }
    }
}

module mechanism() {
    c_w = 15.6; // Cube Width
    c_h = 13.0; // Cube height
    translate([-c_w/2, -c_w/2, 0]) color("silver")cube([c_w, c_w, c_h]);

    p_w = 9.5;  // Potentiometer Width
    p_h = 12.8; // Potentiometer Height
    p_d = 2.8;  // Potentiometer depth
    translate([-p_w/2, -c_w/2-p_d, 0]) color("black")cube([p_w, p_d, p_h]);
    translate([-c_w/2-p_d, p_w/2, 0])rotate([0, 0, -90]) color("black")cube([p_w, p_d, p_h]);

    s_w = 11;  // Switch Width
    s_h = 5.8; // Switch Height
    s_d = 5.6;  // Switch depth
    translate([-s_w/2, +c_w/2, 0]) color("grey")cube([s_w, s_d, s_h]);

    stick_w = 3.8;
    stick_d = 3.0;
    stick_h = 6.0;
    translate([-stick_w/2, -stick_d/2, c_h]) color("yellow")cube([stick_w, stick_d, stick_h]);
}

module hollow_sphere(r, t) {
    difference() {
        sphere(r=r);
        sphere(r=r-t);
    }
}

module handle() {
    t_dia=20;   //top of handle diameter
    t_h=4;     //top of handle height
    p_dia=10.3; //post in handle diameter
    p_h=5.5;  //post in handle height
    b_dia=26;   // bottom of handle diameter
    b_h=8.5;     // bottom of handle height

    translate([0, 0, 16+p_h]) cylinder(r=t_dia/2, h=t_h);
    translate([0, 0, 16]) cylinder(r=p_dia/2, h=p_h);

    difference() {
        translate([0, 0, 2]) hollow_sphere(r=16, t=0.7);
        translate([-25, -25, -20]) cube([50, 50, 30]) ;
   }
        //cylinder(r=b_dia/2, h=60);

}

module joystick() {
    mechanism();
    color("blue") handle();
}

module hw_504_pcb() {
    translate([0, 0, pcb_h/2]) {
//        header_pins_cutout();
        difference() {
            substrate();
            translate([2*2.54, 1*2.54, 0]) rotate([0, 0, -90]) header_holes();
            mounting_holes();
        }
        joystick();
        translate([pcb_l/2-2.54-0.2, 5*2.54/2, 0]) rotate([0, 0, -90]) pin_right_angle_low_custom(5);
    }
}

hw_504_pcb();
