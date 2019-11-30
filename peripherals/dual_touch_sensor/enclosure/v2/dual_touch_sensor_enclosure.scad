/* dual_touch_sensor_enclosure.scad
 *
 *    OpenSCAD script to generate an enclosure for dual catalex touch sensor board
 *
 *    Copyright 2018 Don Haig (time4tux at gmail dot com)
 *
 *    GNU GPLv3 (See LICENSE for details) 
 *
 */
$fn = 50;

use<catalex_pcb.scad>
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
    l = 50.8+2*t;              // Outside Length of enclosure (should be evenly divisible by nozzle diameter)
    w = 26 + 2*t;              // Outside width of enclosure (should be evenly divisible by nozzle diameter)
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

module connector(cutout) {

      translate([26.5, 2.4, 6.1])
     rotate([0,180,90]) color("black") pj320a(cutout);
}

module cover () {
    l = 22.0;
    w = 22.0;
    h = 0.3;

    difference() {
        minkowski() {
            color("white") cube([l, w, h], center=true);
            cylinder(r=2, h=h, center = true);
        }

    //translate([0, 0, h/2]) substrate();
    translate([0, 0, -1]) header_pins_cutout();
    //translate([-15, -15, -3.5]) cube([30, 30, 4.5]);
    }
}

module top() {
    module cut_out() {
        l = 48.8;
        w = 24.8;
        h = 1.8;

        translate ([0, -3, 12])
        difference() {
            minkowski() {
                color("white") cube([l, w, h], center=true);
                cylinder(r=0.4, h=h, center = true);
            }
        }
    }

    difference() {
        translate([0, 0, h_t+2])
        rotate([0, 180, 0])
        rounded_minkowski_outer_lip(l, w, h_t, r, lip_w2, lip_h, t, tol);
        connector();
        // pcb cut-outs
        translate([12.8+11.5, -0.8, 0]) cube([2, 7.8, 8]); // side
        translate([-4+11.5, +8, 9.6]) cube([12, 3, 2.2]);  // top
        translate([-4-14.5, +8, 9.6]) cube([12, 3, 2.2]);  // top
        //cut_out();
        //translate([11.5, 0, -t]) guts();
        translate([0, 3.2, -2.2]) color("red")cut_out();
    }
//    translate([0, 0, -t]) guts();

}

module bottom() {
    difference() {
        rounded_minkowski_inner_lip(l, w, h_b, r, lip_w1, lip_h, t, tol);
        connector(cutout = "down");
        //translate([8, 8, 3.2]) rotate([0,90,90]) color("black") pj320a(cutout = true);
        //magnets();
    }
   // connector backstop
   //connector(cutout = "down");
   translate([-2.4+11.5, 0, 0]) cube([5, 7, 3]);

   // Sensor supports
   s_c = 10.2;  // support center
   s_h = 9.5;
   //translate([s_c,s_c, 0]) cylinder(r= 0.8, h=s_h+1);
   //translate([s_c,s_c, 0]) cylinder(r= 2.5, h=s_h);

   //translate([s_c,-s_c, 0]) cylinder(r= 0.8, h=s_h+1);
   //translate([s_c,-s_c, 0]) cylinder(r= 2.5, h=s_h);

   //translate([-s_c,s_c, 0]) cylinder(r= 0.8, h=s_h+1);
   translate([-s_c+12, s_c, 0]) cylinder(r= 1.2, h=s_h);
   translate([-s_c-13, s_c, 0]) cylinder(r= 1.2, h=s_h);

   //translate([-s_c,-s_c, 0]) cylinder(r= 0.8, h=s_h+1);
   translate([-s_c+12,-s_c, 0]) cylinder(r= 1.2, h=s_h);
   translate([-s_c-13,-s_c, 0]) cylinder(r= 1.2, h=s_h);
}

echo(str("Rounded Minkowski Box: ", l, "mm x ", w, "mm x ", h_t + h_b, "mm") );

module guts() {
    translate([1.35, 0.2, 9.5+t]) touch_sensor_pcb();
    translate([-23.8, 0.2, 9.5+t]) touch_sensor_pcb();
    translate([-11.8, -5.8, 7.5+t]) rotate([0, 0, 180]) color ("red") import("dual_touch_sensor_pcb.stl");
}

module enclosure () {
    //translate([0, 40, h_t+2*t]) rotate([0, 180, 180])
    translate([0, 0, 15])
    color("white")top();

    //translate([-40, 0, -0.9])
    //translate([0, 0, 11])
    //rotate([0, 180, 0])
    //cover();

    //translate([0, 0, t])
    color("yellow")bottom();

    translate([11.5, 0, 3])
    guts();

}

//difference() {
enclosure();
//translate([5, 5, 0]) cube([50, 50, 50]);
//}
