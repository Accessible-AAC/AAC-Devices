/* red_touch_sensor_enclosure.scad
 *
 *    OpenSCAD script to generate an enclosure for red touch sensor board
 *
 *    Copyright 2018 Don Haig (time4tux at gmail dot com)
 *
 *    GNU GPLv3 (See LICENSE for details) 
 *
 */
$fn = 50;

use<red_touch_sensor.scad>
use<pj320a.scad>
use<rounded_minkowski_box.scad>
use<straight_header.scad>

u_d_pcb = 1.9;  // up - down adjustment on z-axis for PCB


/* 3D printer parameters */                                                                                                                      
    nozzle_diam = 0.4;    // 3D printer nozzle diameter in mm                                                                                         
    layer_res = 0.1;      // 3D printer layer resolution in mm                                                                                              

/* Enclosure Dimensions */
    tol = 0.01;                // printing tolerance (should be evenly divisible by nozzle diameter)
    lip_w1 = 1.2;              // thickness of outer lip (should be evenly divisible by nozzle diameter)
    lip_w2 = 1.2;              // thickness of inner lip (should be evenly divisible by nozzle diameter)
    t = lip_w1+lip_w2;         // total wall thickness (should be evenly divisible by nozzle diameter)
    l = 16.8+2*t;              // Outside Length of enclosure (should be evenly divisible by nozzle diameter)
    w = 14 + 2*t;              // Outside width of enclosure (should be evenly divisible by nozzle diameter)
    h_t = 8.0;                   // height of top piece of enclosure (should be evenly divisible by layer resolution)
    h_b = 6.8;                  // height of bottom piece of enclosure (should be evenly divisible by layer resolution)
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


    // snaps parameter can have the following values:                                                                                                 
    // "normal"  - bumps on lid, recesses on the bottom piece of enclosure
    // "reverse" - recesses on lid, bumps on the bottom piece of enclosure
    // "NORMAL" -  larger recesses on lid, larger bumps on the bottom piece of enclosure
    // "REVERSE" - larger recesses on lid, larger bumps on the bottom piece of enclosure

module connector(cutout) {

      translate([9.0, 0, 6.1])
     rotate([0,180,90]) color("black") pj320a(cutout);
}


module top() {
    module cut_out() {
        l = 12;
        w = 10;
        h = 1.8;

        translate ([0, -0, 10])
        difference() {
            minkowski() {
                color("white") cube([l, w, h], center=true);
                cylinder(r=2, h=h, center = true);
            }
        }
    }

    difference() {
        translate([0, 0, h_t+2])
        rotate([0, 180, 0])
        rounded_minkowski_outer_lip(l, w, h_t, r, lip_w2, lip_h, t, tol, "REVERSE");
        connector();
        // pcb cut-outs
        color("blue") cut_out();
        //translate([-6, 0, 1]) cube([1.2, 8, 20], center=true);
    }
        //translate([-6, 0, -1]) cube([1.2, 8, 20], center=true);
   // translate([0, 0, -t]) guts();

}

module bottom() {
    difference() {
        rounded_minkowski_inner_lip(l, w, h_b, r, lip_w1, lip_h, t, tol, "REVERSE");
        connector(cutout = "down");
        //translate([8, 8, 3.2]) rotate([0,90,90]) color("black") pj320a(cutout = true);
        //magnets();
        translate([0, 0, h_b]) cube([l, w, 3],center=true);
    }
   // connector backstop
  // connector(cutout = "down");
}

echo(str("Rounded Minkowski Box: ", l, "mm x ", w, "mm x ", h_t + h_b, "mm") );

module guts() {
    rotate([0, 0, 90]) {
        translate([0, 0, 10.1+t]) red_sensor_pcb();
        translate([-13.1, -8.8, 7.5+t]) rotate([0, 0, 180]) color ("red") import("red_touch_sensor_trrs_pcb.stl");
    }
}

module enclosure () {
    //translate([0, 30, h_t+2*t-0.40]) rotate([0, 180, 180])
    //translate([0, 0, t+0.3])
    translate([0, 0, 15])
    color("white")top();

    //translate([0, 0, t])
    color("yellow")bottom();

    guts();

}

//difference() {
enclosure();
//translate([5, 5, 0]) cube([50, 50, 50]);
//}
