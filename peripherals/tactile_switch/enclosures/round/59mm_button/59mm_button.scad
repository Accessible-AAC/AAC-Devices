/* 59mm_button.scad
 *
 *    OpenSCAD script to generate an enclosure for a 59mm round button
 *
 *    Copyright 2019 Don Haig (time4tux at gmail dot com)
 *
 *    GNU GPLv3 (See LICENSE for details) 
 *
 */
$fn = 200;

use<pj320a.scad>

/* 3D printer parameters */                                                                                                                      
    nozzle_diam = 0.4;    // 3D printer nozzle diameter in mm                                                                                         
    layer_res = 0.1;      // 3D printer layer resolution in mm                                                                                              

/* Enclosure Dimensions */
    tol = 0.01;                // printing tolerance (should be evenly divisible by nozzle diameter)
    dia = 59.2;                  // Outside diameter of enclosure (should be evenly divisible by nozzle diameter)
    h_t = 7.6;                   // height of top piece of enclosure (should be evenly divisible by layer resolution)
    h_b = 13;                  // height of bottom piece of enclosure (should be evenly divisible by layer resolution)
    r = 2;                     // Outside corner radius
    lip_w1 = 1.2;              // thickness of outer lip (should be evenly divisible by nozzle diameter)
    lip_w2 = 1.2;              // thickness of inner lip (should be evenly divisible by nozzle diameter)
    lip_h = 4.2;               // height of lip (should be evenly divisible by layer resolution)

    t = lip_w1+lip_w2;         // total wall thickness (should be evenly divisible by nozzle diameter)

/* Check Dimensions */
    module check_dimension(dim, divisor) {
        if ((dim*10)%(divisor*10)) {
            echo(str("**3D Print Warning **: '", dim, "' is not an even multiple of '", divisor, "'"));
        }
    }

    check_dimension(dia, nozzle_diam);
    check_dimension(t, nozzle_diam);
    check_dimension(lip_w1, nozzle_diam);
    check_dimension(lip_w2, nozzle_diam);

    check_dimension(h_t, layer_res);
    check_dimension(h_b, layer_res);
    check_dimension(lip_h, layer_res);

/* Construction subroutines */

module inner_surface (dia, height, radius, wall_thickness) {
    linear_extrude(height) {
        minkowski() {
            circle(dia/2-radius-wall_thickness, center = true);
            circle(radius);
        }
    }
}

module outer_surface (dia, height, radius) {
    difference() {
        translate([0, 0, -height/2+radius]) minkowski() {
            // adjust diameter and width dimensions to account for minkowski transformation
            cylinder(r=dia/2-radius, h=height, center = true);
            sphere(radius);
        }
        // adjust height to account for minkowski transformation
        translate([0, 0, height/2]) cylinder(r=1.1*dia/2, h=height, center = true);
        // remove artifact 
        translate([0, 0, height]) cylinder(r=1.1*dia/2, h=height, center = true);
   } 
}

module top() {
    dia = dia + 0.4;
    r = 2* r;
    module top_shell() {
        difference() {
            // Outside surface 
            outer_surface(dia=dia, height=h_t, radius=r);

            // Hollow out inside
            color("blue")
            translate([0, 0, -h_t+t+tol]) inner_surface(dia=dia, height=h_t+lip_h, radius=r, wall_thickness=t);

            // Create outer lip
            translate([0, 0, -lip_h/2.0]) {
                cylinder(r=dia/2-(lip_w1+tol), h=lip_h+2*tol, center=true); 
            }
        }
        translate([0, 0, -lip_w1]) ridge();
    }

    module ridge() {
        rotate_extrude() translate([dia/2-lip_w2, 0]) {
            translate([0, +lip_w2/1.5, 0]) circle(d=lip_w2/1.0);
            translate([0, +lip_w2/2.5, 0]) rotate([0, 0, 45]) square([lip_w2/1.7, lip_w2/1.7],  center=true);
        }
    }

    translate([0, 0, h_b/2+t/2]) top_shell();
}


module bottom() {

    module bottom_shell() {
        difference() {
            union() {
                difference() {
                    // Outside surface 
                    outer_surface(dia=dia, height=h_b, radius=r);

                    // Hollow out inside
                    color("blue")
                    translate([0, 0, -h_b+t+tol]) inner_surface(dia=dia, height=h_b+lip_h, radius=r, wall_thickness=t);

                    // Create inner lip
                    translate([0, 0, -lip_h/2+0.8]) ring();
                }
                translate([0, 0, -lip_h/2]) buttress();
            }

            //translate([0,0,  -lip_h]/1.5) color("red") groove();
            translate([0,0,  -2.3]) color("blue") groove2();
            translate([0, 0, -(h_b-t)]) connector();
        }
    }

    module ring() {
        difference() {
            cylinder(r=dia/2+tol, h=lip_h+tol, center=true); 
            cylinder(r=dia/2-(lip_w2+tol), h=lip_h+2*tol, center=true); 
        }
    }

    module buttress() {
        difference() {
            rotate_extrude() translate([dia/2-t, 0]){
                 circle(d=lip_h);
                 translate([0, -lip_w1+0.3]) rotate(45) square(lip_h/1.5, center=true);
            }
            ring();
        }
     }

    module groove() {
        rotate_extrude() translate([dia/2-lip_w2 - 0.4, 0]) {
            translate([0, +lip_w2/1.3, 0]) circle(d=lip_w2/1.2);
            square([lip_w2/1.3, 1.5*lip_w2],  center=true);
            translate([0, -lip_w2/1.3, 0]) circle(d=lip_w2/1.2);
        }
    }

    module groove2() {
        rotate_extrude() translate([dia/2-lip_w2 - 0.4, 0]) {
            //translate([0, +lip_w2/1.3, 0]) circle(d=lip_w2/1.2);
            //square([lip_w2/1.3, 1.5*lip_w2],  center=true);
            //translate([0, -lip_w2/1.3, 0]) circle(d=lip_w2/1.2);
            translate([0, +lip_w2/2.5, 0]) circle(d=lip_w2/1.2);
            square([lip_w2/1.2, 0.7*lip_w2],  center=true);
            translate([0, -lip_w2/2.5, 0]) circle(d=lip_w2/1.2);
        }
    }

    module connector(cutout) {

        translate([dia/2-t/2-0.4, 0, 5.15])
        rotate([0,180, 90]) color("black") pj320a(cutout);
    }

    module connector_supports() {
        translate([dia/2-2*t-13.0,   0, 0.8]) color("gold") cube([ 6, 6, 2.0], center=true);
        translate([dia/2-2*t-3,  5.2, t/2]) color("gold")cube([10, 3, 3.4], center=true);
        translate([dia/2-2*t-3, -5.2, t/2]) color("gold")cube([10, 3, 3.4], center=true);
    }


    module pcb_support() {
            translate([0, 0, 2.6]) cylinder(r=1.2, h=7.0, center=true);
            translate([ 0, 0, 1.5]) cylinder(r=3, h=6.8, center=true);
    }

    translate([0, 0, h_b-t]) bottom_shell();

    //connector();
    connector_supports();

    // pcb supports
    x = 15.8;
    y = 6.5;
    translate([  x,  y, -0]) pcb_support();
    translate([  x, -y, -0]) pcb_support();
    translate([  0,  0, -0]) pcb_support();
}

module guts() {                                                                                                                                   
     translate([0, 0, 4.4])
     rotate([0, 0, 180]) {
        translate([9.5, -0.8, 1.65]) rotate([0, 0, -90]) color ("red") import("tactile_switch_pcb_v2.stl");                                              
        translate([0, 0, 5.35]) cube([12, 12, 7.4], center=true);
     }
}   
module cross_section() {
    difference() {
        union() {
            translate([0, 0, h_b + 3.0])
            rotate([0, 180, 0])
            top();
            bottom();
        }
        // Used to examine cross section
        color("green") rotate([0, 0, 00]) translate([-100, 0, -50]) cube([2000, 100, 100]);
    }
    guts();
}


//echo(str("Rounded Minkowski Box: ", l, "mm x ", w, "mm x ", h_t + h_b, "mm") );
//
//translate([0, 70, 0])
//translate([0, 0, h_t + h_b - t + 0.5])
translate([0, 0, 45])
rotate([0, 180, 0])
color("blue") top();
//difference () {
color("yellow")bottom();
//    translate([23.8, 0, 5.8]) cube([7.2,7.2,1.2], center=true);
    //guts();
    //color("green") rotate([0, 0, 00]) translate([-100, -90, -50]) cube([2000, 100, 100]);
    //color("red") rotate([0, 0, 90]) translate([-100, 0, -50]) cube([2000, 100, 100]);
    //color("red") rotate([0, 0, 0]) translate([-100, -0, -50]) cube([2000, 100, 100]);
    //color("red") rotate([0, 0, 0]) translate([-100, 10, -20]) cube([200, 100, 40]);
    //color("red") rotate([0, 0, 0]) translate([-100, -110, -20]) cube([200, 100, 40]);
    //color("red") rotate([0, 0, 90]) translate([-100, 10, -20]) cube([200, 100, 40]);

//}

translate([0, 0, 13])
guts();

//cross_section();
