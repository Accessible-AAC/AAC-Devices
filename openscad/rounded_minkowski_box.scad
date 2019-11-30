/* rounded_minkowski_box.scad
 *
 *    OpenSCAD script to generate an enclosure using minkowski
 *
 *    Copyright 2019 Don Haig (accessible.aac at gmail dot com)
 *
 *    This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License  
 *
 *    To view a copy of this license, visit: https://creativecommons.org/licenses/by-sa/4.0/
 *
 */
$fn = 50;


/* 3D printer parameters */                                                                                                                      
    nozzle_diam = 0.4;    // 3D printer nozzle diameter in mm                                                                                         
    layer_res = 0.1;      // 3D printer layer resolution in mm                                                                                              

/* Enclosure Dimensions */
    tol = 0.01;                 // printing tolerance (should be evenly divisible by nozzle diameter)
    l = 56;                    // Outside Length of enclosure (should be evenly divisible by nozzle diameter)
    w = 32;                    // Outside width of enclosure (should be evenly divisible by nozzle diameter)
    h_t = 6;                   // height of top piece of enclosure (should be evenly divisible by layer resolution)
    h_b = 6;                   // height of bottom piece of enclosure (should be evenly divisible by layer resolution)
    r = 2;                     // Outside corner radius
    lip_w1 = 1.2;              // thickness of outer lip (should be evenly divisible by nozzle diameter)
    lip_w2 = 1.2;              // thickness of inner lip (should be evenly divisible by nozzle diameter)
    lip_h = 2.4;               // height of lip (should be evenly divisible by layer resolution)

    t = lip_w1+lip_w2;         // total wall thickness (should be evenly divisible by nozzle diameter)

/* Check Dimensions */
    module check_dimension(dim, divisor) {
        if ((dim*10)%(divisor*10)) {
            echo(str("**3D Print Warning **: '", dim, "' is not an even multiple of '", divisor, "'"));
        }
    }

    check_dimension(l, nozzle_diam);
    check_dimension(w, nozzle_diam);
    check_dimension(t, nozzle_diam);
    check_dimension(lip_w1, nozzle_diam);
    check_dimension(lip_w2, nozzle_diam);

    check_dimension(h_t, layer_res);
    check_dimension(h_b, layer_res);
    check_dimension(lip_h, layer_res);

/* Construction subroutines */


module outer_surface (length, width, height, radius) {
    difference() {
        translate([0, 0, -height/2+radius]) minkowski() {
            // adjust length and width dimensions to account for minkowski transformation
            cube([length-2*radius, width-2*radius, height], center = true);
            sphere(radius);
        }
        // adjust height to account for minkowski transformation
        translate([0, 0, height/2]) cube([1.1*length, 1.1*width, height], center = true);
   } 
}


module inner_surface (length, width, height, radius, wall_thickness) {
    linear_extrude(height) {
        minkowski() {
            square([length-2*radius-2*wall_thickness, width-2*radius-2*wall_thickness], center = true);
            circle(radius);
        }
    }
}


module snaps (box_length, box_width, lip_width, lip_height ) {
    translate ([0, box_width/2-lip_width, lip_height/2]) rotate([0, 90, 0]) cylinder(h = box_length/2, r = lip_width/2, center = true);
    translate ([0, -(box_width/2-lip_width), lip_height/2]) rotate([0, 90, 0]) cylinder(h = box_length/2, r = lip_width/2, center = true);
}

module big_snaps (box_length, box_width, lip_width, lip_height ) {
    translate ([0, box_width/2-lip_width, lip_height/2]) rotate([0, 90, 0]) cylinder(h = box_length/1.5, r = lip_width/1.5, center = true);
    translate ([0, -(box_width/2-lip_width), lip_height/2]) rotate([0, 90, 0]) cylinder(h = box_length/1.5, r = lip_width/1.5, center = true);
}

module n_buttress (box_length, box_width, lip_width, lip_height ) {
    translate ([0, box_width/2-lip_width/2, -1.2*lip_height/2]) rotate([0, 90, 0]){ 
        difference() {
            cylinder(h = 1.1*box_length/1.5, r = 2*lip_width, center = true);
            translate([-1.1*2*lip_width, -2*lip_width, -0.6*box_length/1.5]) cube([2.2*2*lip_width, 2*lip_width, 1.2*box_length/1.5]);
        }
    }
    translate ([0, -(box_width/2-lip_width/2), -1.2*lip_height/2]) rotate([0, 90, 0]) {
        difference() {
            cylinder(h = 1.1*box_length/1.5, r = 2*lip_width, center = true);
            translate([-1.1*2*lip_width, 0, -0.6*box_length/1.5]) cube([2.2*2*lip_width, 2*lip_width, 1.2*box_length/1.5]);
        }
    }
}

module r_buttress (box_length, box_width, lip_width, lip_height ) {
    translate ([0, box_width/2-2*lip_width, -1.2*lip_height/2]) rotate([0, 90, 0]){ 
        difference() {
            cylinder(h = 1.1*box_length/1.5, r = 2*lip_width, center = true);
            translate([-1.1*2*lip_width, 0, -0.6*box_length/1.5]) cube([2.2*2*lip_width, 2*lip_width, 1.2*box_length/1.5]);
        }
    }
    translate ([0, -(box_width/2-2*lip_width), -1.2*lip_height/2]) rotate([0, 90, 0]) {
        difference() {
            cylinder(h = 1.1*box_length/1.5, r = 2*lip_width, center = true);
            translate([-1.1*2*lip_width, -2*lip_width, -0.6*box_length/1.5]) cube([2.2*2*lip_width, 2*lip_width, 1.2*box_length/1.5]);
        }
    }
}


// snaps parameter can have the following values:
// "normal"  - bumps on lid, recesses on the bottom piece of enclosure                                                   
// "reverse" - recesses on lid, bumps on the bottom piece of enclosure                                                   
// "NORMAL" -  larger recesses on lid, larger bumps on the bottom piece of enclosure                                     
// "REVERSE" - larger recesses on lid, larger bumps on the bottom piece of enclosure                                     
                 

module outer_lip (length, width, lip_height, radius, lip_width, tolerance, snaps) { 

    module lip() {
        linear_extrude(lip_height+tolerance) {
                minkowski() {
                    square([length-2*radius-2*lip_width+tolerance, width-2*radius-2*lip_width+tolerance], center = true);
                    circle(radius);
                }
        }
    }

    if (snaps == "NORMAL") {
        echo("Outer Lip: NORMAL snaps");
        lip();
        big_snaps(length, width, lip_width, lip_height);
    } 
    else if (snaps == "REVERSE") {
        echo("Outer Lip: REVERSE snaps");
        difference() {
            lip();
            big_snaps(length, width, lip_width, lip_height);
        }
    }
    else if (snaps == "reverse") {
        echo("Outer Lip: reverse snaps");
        difference() {
            lip();
            snaps(length, width, lip_width, lip_height);
        }
    }
    else {
        echo("Outer Lip: normal snaps");
        lip();
        snaps(length, width, lip_width, lip_height);
    }
}


module inner_lip (length, width, lip_height, radius, lip_width, wall_thickness, tolerance, snaps) { 

    module lip() {
        difference () {
            linear_extrude(lip_height+tolerance) {
                    minkowski() {
                        square([length-2*radius+tolerance, width-2*radius+tolerance], center = true);
                        circle(radius);
                    }
            }
            translate([0, 0, -2*tolerance]) {
                linear_extrude(lip_height+4*tolerance) {
                        minkowski() {
                            square([length-2*radius-2*(wall_thickness-lip_width), width-2*radius-2*(wall_thickness-lip_width)], center = true);
                            circle(radius);
                        }
                }
            }
        }
    }

    if (snaps == "NORMAL") {
        echo("Inner Lip: NORMAL snaps");
        difference() {
            lip();
            big_snaps(length, width, lip_width, lip_height);
        }
    } 
    else if (snaps == "REVERSE") {
        echo("Inner Lip: REVERSE snaps");
        lip();
        big_snaps(length, width, lip_width, lip_height);
    }
    else if (snaps == "reverse") {
        echo("Inner Lip: reverse snaps");
        lip();
        snaps(length, width, lip_width, lip_height);
    }
    else {
        echo("Inner Lip: normal snaps");
        difference() {
            lip();
            snaps(length, width, lip_width, lip_height);
        }
    }
}


module rounded_minkowski_inner_lip(length, width, height, corner_radius, lip_width, lip_height, wall_thickness, tolerance, snaps = "normal") {
    height = height + lip_height/2;
    // align inside surface with z=0 plane
    translate([0, 0, height-wall_thickness]) {
        difference() {
            union() {
                difference() {
                    // Outside surface 
                    outer_surface(length=length, width=width, height=height, radius=corner_radius);

                    // Hollow out inside
                    //  color("blue")
                    translate([0, 0, -height+wall_thickness+tolerance]) inner_surface(length, width, height+lip_height, corner_radius, wall_thickness);
                }

                if (snaps == "REVERSE") {
                    echo("Buttress inner lip");
                    r_buttress(length, width, lip_width, lip_height);
                }
            }

            // Create lip
            // color("red")
            translate([0, 0, -lip_height]) inner_lip (length=length, width=width, lip_height=lip_height, radius=corner_radius,
                                                    lip_width=lip_width, wall_thickness= wall_thickness, tolerance=tolerance, snaps=snaps);
        }
    }
}


module rounded_minkowski_outer_lip(length, width, height, corner_radius, lip_width, lip_height, wall_thickness, tolerance, snaps="normal") {
    height = height + lip_height/2;
    // align inside surface with z=0 plane
    translate([0, 0, height-wall_thickness]) {
        difference() {
            union() {
                difference() {
                    // Outside surface 
                    outer_surface(length=length, width=width, height=height, radius=corner_radius);

                    // Hollow out inside
                    //color("blue")
                    translate([0, 0, -height+wall_thickness+tolerance]) inner_surface(length, width, height, corner_radius, wall_thickness);
                }

                if (snaps == "NORMAL") {
                    echo("Buttress outer lip");
                    n_buttress(length, width, lip_width, lip_height);
                } 
            }

            // Create outer lip
            //color("violet")
            translate([0, 0, -lip_height]) outer_lip (length=length, width=width, lip_height=lip_height, radius=corner_radius,
                                                lip_width=lip_width, tolerance=tolerance, snaps=snaps);
        }
    }
}


module top() {
        rounded_minkowski_outer_lip(length=l, width=w, height=h_t, corner_radius=r, lip_width=lip_w2,
                                    lip_height=lip_h, wall_thickness=t, tolerance=tol);
}


module bottom() {
    rounded_minkowski_inner_lip(length=l, width=w, height=h_b, corner_radius=r, lip_width=lip_w1, 
                                lip_height=lip_h, wall_thickness=t, tolerance=tol);
}

module cross_section() {
    difference() {
        union() {
            translate([0, 0, 5])
            top();
            bottom();
        }
        // Used to examine cross section
        color("green") translate([-100, 0, -50]) cube([2000, 100, 100]);
    }
}


//echo(str("Rounded Minkowski Box: ", l, "mm x ", w, "mm x ", h_t + h_b, "mm") );
//
//translate([0, 0, 5])
//translate([0, 0, h_t + h_b - 2*t + 0.1])
//rotate([0, 180, 0])
//top();
//bottom();
//cross_section();
