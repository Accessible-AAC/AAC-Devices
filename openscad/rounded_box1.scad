/* rounded_box1.scad
 *
 *    OpenSCAD script to generate a minkowski rounded box with snaps on 2 side
 *
 *    Copyright 2019 Don Haig (accessible.aac at gmail dot com)
 *
 *    This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License
 *
 *    To view a copy of this license, visit: https://creativecommons.org/licenses/by-sa/4.0/
 */


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


module rounded_bottom(length, width, height, corner_radius, lip_width, lip_height, wall_thickness, tolerance) {

    module inner_lip (length, width, lip_height, radius, lip_width, wall_thickness, tolerance) { 

        module grooves (box_length, box_width, lip_width, lip_height ) {

            l_offset = box_width/2-lip_width;
            w_offset = box_length/2-lip_width;
            height = lip_height/2;

            module ridge(length) {
                cylinder(h = length/1.5, r = lip_width/1.5, center = true);
            }

            translate ([0, l_offset, height]) rotate([0, 90, 0]) ridge(box_length);
            translate ([0, -l_offset, height]) rotate([0, 90, 0]) ridge(box_length);
        }


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

        lip();
        grooves(length, width, lip_width, lip_height);
    }

    module buttresses (box_length, box_width, lip_width, lip_height ) {

        l_offset = box_width/2-2*lip_width;
        w_offset = box_length/2-2*lip_width;
        height = -1.2*lip_height/2;

        module buttress(length) {
            c_h = 1.1*length/1.5;
            c_r = 2*lip_width;
            x = -1.1*2*lip_width;
            y = -2*lip_width;
            z = -0.6*length/1.5;

            difference() {
                cylinder(h = c_h, r = c_r, center = true);
                translate([x, y, z]) cube([2.2*2*lip_width, 2*lip_width, 1.2*length/1.5]);
            }
        }

        translate ([0, l_offset, height]) rotate([0, 90, 180]) buttress(box_length);
        translate ([0, -l_offset, height]) rotate([0, 90, 0]) buttress(box_length);
    }

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

                buttresses(length, width, lip_width, lip_height);
            }

            // Create lip
             color("red")
            translate([0, 0, -lip_height]) inner_lip (length=length, width=width, lip_height=lip_height, radius=corner_radius,
                                                    lip_width=lip_width, wall_thickness= wall_thickness, tolerance=tolerance);
        }
    }
}


module rounded_top(length, width, height, corner_radius, lip_width, lip_height, wall_thickness, tolerance) {

    module outer_lip (length, width, lip_height, radius, lip_width, tolerance) { 

        module lip() {
            linear_extrude(lip_height+tolerance) {
                    minkowski() {
                        square([length-2*radius-2*lip_width+tolerance, width-2*radius-2*lip_width+tolerance], center = true);
                        circle(radius);
                    }
            }
        }

        module ridges (box_length, box_width, lip_width, lip_height ) {
            l_offset = box_width/2-lip_width;
            w_offset = box_length/2-lip_width;

            height = lip_height/2;

            module ridge(length) {
                cylinder(h = length/1.5, r = lip_width/1.5, center = true);
            }

            translate ([ 0, l_offset, height]) rotate([0, 90, 0]) ridge(box_length);
            //translate ([ w_offset, 0, height]) rotate([0, 90, 90]) ridge(box_width);
            //translate ([-w_offset, 0, height]) rotate([0, 90, 90]) ridge(box_width);
            translate ([ 0, -l_offset, height]) rotate([0, 90, 0]) ridge(box_length);
        }

        difference() {
            lip();
            ridges(length, width, lip_width, lip_height);
        }
    }
 
    height = height + lip_height/2;

    // align inside surface with z=0 plane
    translate([0, 0, height-wall_thickness]) {
        difference() {
            // Outside surface 
            outer_surface(length=length, width=width, height=height, radius=corner_radius);

            // Hollow out inside
            //color("blue")
            translate([0, 0, -height+wall_thickness+tolerance]) inner_surface(length, width, height, corner_radius, wall_thickness);

            // Create outer lip
            //color("violet")
            translate([0, 0, -lip_height]) outer_lip (length=length, width=width, lip_height=lip_height, radius=corner_radius,
                                            lip_width=lip_width, tolerance=tolerance);

        }
    }
}
