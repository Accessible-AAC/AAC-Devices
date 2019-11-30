/* i2c_splitter_enclosure.scad
 *
 *    OpenSCAD script to generate an enclosure for an i2c splitter board
 *
 *    Copyright 2019 Don Haig (time4tux at gmail dot com)
 *
 *    GNU GPLv3 (See LICENSE for details) 
 *
 */
$fn = 50;

use<pj320a.scad>
use<rounded_minkowski_box.scad>
use<straight_header.scad>

//u_d_pcb = 1.9;  // up - down adjustment on z-axis for PCB


/* 3D printer parameters */                                                                                                                      
    nozzle_diam = 0.4;    // 3D printer nozzle diameter in mm                                                                                         
    layer_res = 0.1;      // 3D printer layer resolution in mm                                                                                              

/* Enclosure Dimensions */
    tol = 0.01;                // printing tolerance (should be evenly divisible by nozzle diameter)
    lip_w1 = 1.2;              // thickness of outer lip (should be evenly divisible by nozzle diameter)
    lip_w2 = 1.2;              // thickness of inner lip (should be evenly divisible by nozzle diameter)
    t = lip_w1+lip_w2;         // total wall thickness (should be evenly divisible by nozzle diameter)
    l = 25.4+2*t;              // Outside Length of enclosure (should be evenly divisible by nozzle diameter)
    w = 25.6 + 2*t;              // Outside width of enclosure (should be evenly divisible by nozzle diameter)
    h_t = 5.0;                   // height of top piece of enclosure (should be evenly divisible by layer resolution)
    h_b = 8.8;                  // height of bottom piece of enclosure (should be evenly divisible by layer resolution)
    r = 2;                     // Outside corner radius
    lip_h = 3;               // height of lip (should be evenly divisible by layer resolution)


    check_dimension(l, nozzle_diam);
    check_dimension(w, nozzle_diam);
    check_dimension(t, nozzle_diam);
    check_dimension(lip_w1, nozzle_diam);
    check_dimension(lip_w2, nozzle_diam);

    check_dimension(h_t, layer_res);
    check_dimension(h_b, layer_res);
    check_dimension(lip_h, layer_res);

snaps = "reverse";       // "normal"  - bumps on lid, recesses on the bottom piece of enclosure
                         // "reverse" - recesses on lid, bumps on the bottom piece of enclosure
                         // "NORMAL" -  larger recesses on lid, larger bumps on the bottom piece of enclosure
                         // "REVERSE" - larger recesses on lid, larger bumps on the bottom piece of enclosure


module connectors(cutout) {
    difference() {
        union() {
            translate([6.1, 0.9, 0]) rotate([0, 0, 90]) color("black") pj320a(cutout);
            translate([-19.4, 8.75, 0]) rotate([0, 0, -90]) color("black") pj320a(cutout);
            translate([-19.4, -6.85, 0]) rotate([0, 0, -90]) color("black") pj320a(cutout);
        }
        translate([-8, 0, -2]) cube([l, w, 1.2*t], center=true);
    }
}

module guts(cutout) {
    color ("red") import("i2c_splitter_pcb.stl");
    connectors(cutout);
}

module top() {

    difference() {
        rounded_minkowski_outer_lip(l, w, h_t, r, lip_w2, lip_h, t, tol, snaps);
        translate([-6.7, 0, 6.5 ])
        rotate([0, 180, 0])
        translate([0, -1, -t+3]) connectors();
    }
//    translate([-6.7, 0, 6.5 ])
//    rotate([0, 180, 0])
//    translate([0, -1, -t]) guts();

}

module bottom() {
    module reinforcement() {
        difference() {
            cylinder(r=t, h=0.7*l);
            translate([0, -0.1, -0.05]) cube([2*t, 2.1*t, 0.81*l]);
            translate([-t, -2*t, -0.05]) cube([2*t, 2*t, 0.81*l]);
            translate([-2.5*t, -0.5, -1.05]) cube([2*t, 2.1*t, 0.81*l]);
        }
    }

    difference() {
        rounded_minkowski_inner_lip(l, w, h_b, r, lip_w1, lip_h, t, tol, snaps);
        translate([6.7, -1, 2*t-2]) connectors(cutout = "up");
    }

    translate([l/2-1.75*t, w/2-1.0*t+0.1, h_b-t/2-0.175])
    rotate([-90, 0, 90]) color("blue") reinforcement();

    translate([-l/2+1.75*t, -w/2+1.0*t-0.1, h_b-t/2-0.175])
    rotate([-90, 0, -90]) color("blue") reinforcement();

//        translate([6.7, -1, 2*t-2]) guts();
}

echo(str("Rounded Minkowski Box: ", l, "mm x ", w, "mm x ", h_t + h_b, "mm") );

module enclosure () {
    translate([0, 40, t]) rotate([0, 0, 180])
//    translate([0, 0, 11.5]) rotate([0, 180, 0])
    color("green") top();

    translate([0, 0, t])
    color("green") bottom();
}

//difference() {
enclosure();
//top();
//bottom();

//translate([5, 5, 0]) cube([50, 50, 50]);
//}
