/* hw-504_stick.scad
 *
 *    OpenSCAD script to generate an model for the HW-504 joystick handle 
 *
y
 *    Copyright 2018 Don Haig (time4tux at gmail dot com)
 *
 *    GNU GPLv3 (See LICENSE for details) 
 *
 */

$fn = 50;

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

module handle(h_r, h_l) {

    r = 2;

    module recess() {
        stick_w = 4.0;
        stick_d = 3.2;
        stick_h = 6.4;
        translate([-stick_w/2, -stick_d/2, -0.2]) color("yellow")cube([stick_w, stick_d, stick_h]);
    }


    module block() {
        translate([-h_r/2, -h_r/2, r])
        minkowski() {
            cube([h_r, h_r, h_l]);
            sphere(r=r);
            }
    }

    difference() {
        block();
        recess();
    }

}

rotate([90, 0, 0,])
handle(h_r=5.0, h_l=50);

