/* joystick_enclosure.scad
 *
 *    OpenSCAD script to generate an enclosure for HW-504 joystick module
 *
 *    Copyright 2018 Don Haig (time4tux at gmail dot com)
 *
 *    GNU GPLv3 (See LICENSE for details) 
 *
 */
$fn = 50;

use<hw-504_pcb.scad>
use<pj320a.scad>
use<rounded_minkowski_box.scad>

u_d_pcb = 1.9;  // up - down adjustment on z-axis for PCB


/* 3D printer parameters */                                                                                                                      
    nozzle_diam = 0.4;    // 3D printer nozzle diameter in mm                                                                                         
    layer_res = 0.1;      // 3D printer layer resolution in mm                                                                                              

/* Enclosure Dimensions */
    tol = 0.01;                // printing tolerance (should be evenly divisible by nozzle diameter)
    lip_w1 = 1.2;              // thickness of outer lip (should be evenly divisible by nozzle diameter)
    lip_w2 = 1.2;              // thickness of inner lip (should be evenly divisible by nozzle diameter)
    t = lip_w1+lip_w2;         // total wall thickness (should be evenly divisible by nozzle diameter)
    l = 46+2*t;              // Outside Length of enclosure (should be evenly divisible by nozzle diameter)
    w = 34 + 2*t;              // Outside width of enclosure (should be evenly divisible by nozzle diameter)
    h_t = 18.0;                   // height of top piece of enclosure (should be evenly divisible by layer resolution)
    h_b = 8.8;                  // height of bottom piece of enclosure (should be evenly divisible by layer resolution)
    r = 2;                     // Outside corner radius
    lip_h = 2;               // height of lip (should be evenly divisible by layer resolution)


    check_dimension(l, nozzle_diam);
    check_dimension(w, nozzle_diam);
    check_dimension(t, nozzle_diam);
    check_dimension(lip_w1, nozzle_diam);
    check_dimension(lip_w2, nozzle_diam);

    check_dimension(h_t, layer_res);
    check_dimension(h_b, layer_res);
    check_dimension(lip_h, layer_res);

module connector(cutout) {

    translate([26, -2, 3.2]) rotate([0,90,90]) color("black") pj320a(cutout);
}

module top() {

   module post() {
        r_1 = 2.0;    // Outer Radius
        h_1 = 16;

        color("blue") cylinder(r=r_1, h=h_1);
   }
    difference() {
        translate([0, 0, h_t])
        rotate([0, 180, 0])
        rounded_minkowski_outer_lip(l, w, h_t, r, lip_w2, lip_h, t, tol);
        translate([16.3, 9.0, -1.3]) rotate([0, 0, -90]) connector();
        translate([ -4, 0, 0]) cylinder(r=11.0, h=50, center=true);
        rad = 13.5;
        translate([-4, 0, 12]) color("orange") intersection() {
            sphere(r=rad);
            //cube([2*rad, 27, 2*rad], center=true);
        }
    }
   
   translate([8.2, 10, 2.4]) post();
   translate([8.2, -10, 2.4]) post();
   translate([-18.0, -10, 2.4]) post();
   translate([-18.0, 10, 2.4]) post();
}


module joystick_supports() {


   module post() {
        r_1 = 3;    // Outer Radius
        h_1 = 5;
        r_2 = 1.2;
        h_2 = 1.2;

        cylinder(r=r_1, h=h_1);
        color("red") cylinder(r=r_2, h=h_1+h_2);
   }

   
   translate([8.2, 10, 0]) post();
   translate([8.2, -10, 0]) post();
   translate([-18.2, -10, 0]) post();
   translate([-18.2, 10, 0]) post();

}
module bottom() {

    module stops() {
       // connector
       translate([14.8, -5.3, 0]) cube([ 4.8, 5.2, 8]);
       //translate([14.8, -17, 0]) cube([ 4.8, 13, 1.5]);

       // joystick pcb

       //translate([13.5, -5, 0]) cube([ 2, 10, 8]);
       //translate([-4, -16.0, 0]) cube([ 10, 2, 8]);
       //translate([-4,  14.0, 0]) cube([ 10, 2, 8]);
       //translate([-23, -5, 0]) cube([ 1.5, 10, 7]);
    }
    difference() {
        rounded_minkowski_inner_lip(l, w, h_b, r, lip_w1, lip_h, t, tol);
        translate([16.3, 8.0, 2.0]) rotate([0, 0, -90]) connector(cutout = true);
        //translate([13.0, -5.5, 3.5]) rotate([90, 0, -90]) color ("red") import("trrs_pcb.stl");
    }

    //translate([16.3, 9.0, 1.5]) rotate([0, 0, -90]) connector(cutout = true);
    joystick_supports();
    stops();
}

echo(str("Rounded Minkowski Box: ", l, "mm x ", w, "mm x ", h_t + h_b, "mm") );

difference() {

    union() {
        //translate([0, 1.2*w, h_t+t]) rotate([0, 180, 0])
        //translate([0, 0, h_b-4.7+t])
        translate([0, 0, 55])
        color("white")top();

        color("yellow")translate([0, 0, t]) bottom();

        translate([-4, 0, 18.0]) hw_504_pcb();
        translate([20.0, -5.5, 16]) rotate([90, 0, -90]) color ("red") import("trrs_pcb.stl");

    }
//      cube ([50, 50, 50]);
}
    //translate([13.0, -5.5, 3.5]) rotate([90, 0, -90]) color ("red") import("trrs_pcb.stl");
