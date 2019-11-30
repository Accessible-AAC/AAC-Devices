/* gy-521_sensor_enclosure.scad
 *
 *    OpenSCAD script to generate an enclosure for mpu-6050 accel/gyro sensor board
 *
 *    Copyright 2019 Don Haig (time4tux at gmail dot com)
 *
 *    GNU GPLv3 (See LICENSE for details) 
 *
 */
$fn = 50;

use<mpu-6050_pcb.scad>
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
    l = 23+2*t;              // Outside Length of enclosure (should be evenly divisible by nozzle diameter)
    w = 20 + 2*t;              // Outside width of enclosure (should be evenly divisible by nozzle diameter)
    h_t = 9.2;                   // height of top piece of enclosure (should be evenly divisible by layer resolution)
    h_b = 6.8;                  // height of bottom piece of enclosure (should be evenly divisible by layer resolution)
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

    snaps = "reverse"; 

module connector(cutout) {

      translate([11.4, -0.1, 5.6])
     rotate([0,180,90]) color("black") pj320a(cutout);
}


module top() {
    module cut_out() {
        l = 22.6;
        w = 21.2;
        h = 1.8;

        translate ([0, -3, 12])
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
        rounded_minkowski_outer_lip(l, w, h_t, r, lip_w2, lip_h, t, tol, snaps);
        connector();
        // pcb cut-outs
        translate([0, 0, -t]) guts();
    }
    //connector();
    //translate([0, 0, -t]) guts();

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
        connector(cutout = "down");
        //translate([8, 8, 3.2]) rotate([0,90,90]) color("black") pj320a(cutout = true);
        //magnets();
    }
   // connector backstop
   translate([-5.7, -3.8, 0]) cube([5, 7, 6]);
  // connector(cutout = "down");

    translate([l/2-1.75*t, w/2-1.0*t+0.1, h_b-t/2-0.175])
       rotate([-90, 0, 90]) reinforcement();

       translate([-l/2+1.75*t, -w/2+1.0*t-0.1, h_b-t/2-0.175])
       rotate([-90, 0, -90]) reinforcement();

  //  translate([0, 0, -t]) guts();
}

echo(str("Rounded Minkowski Box: ", l, "mm x ", w, "mm x ", h_t + h_b, "mm") );

module guts() {
    translate([-0.7, -0.5, 7.8+t]) rotate([0, 0, 180]) gyro_pcb();
    //translate([1.6, 6.6, 4]) straight_header(4,1);
    translate([-0.7, -1.5, 7.5+t]) rotate([0, 0, 0]) color ("red") import("gy-521_pcb.stl");
}

module enclosure () {
    //translate([0, 40, h_t+4.40]) rotate([0, 180, 180])
    //translate([0, 0, t+0.3])
    translate([0, 0, 20])
    color("white") top();

    translate([0, 0, t])
    color("green") bottom();

    translate([0, 0, 6])
    guts();

}

//difference() {
enclosure();
//translate([0, 40, h_t+4.40]) rotate([0, 180, 180])
//top();
//bottom();
//translate([5, 5, 0]) cube([50, 50, 50]);
//}
