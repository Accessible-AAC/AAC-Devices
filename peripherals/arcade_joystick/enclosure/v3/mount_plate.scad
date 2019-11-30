/* mount_plate.scad
 *
 *    OpenSCAD script to generate an model for the arcade joystick mount plate 
 *
 *    Copyright 2019 Don Haig (accessible.aac at gmail dot com)
 *
 *    This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License  
 *
 *    To view a copy of this license, visit: https://creativecommons.org/licenses/by-sa/4.0/
 *
 */

$fn = 50;


module mount_plate () {
    r = 2;
    l = 95 - 2*r;
    w = 60 - 2*r;
    h = 1.5;

    module plate() {
        points = [ [-l/2,-w/2,0], [-l/2, w/2,0], [l/2,-w/2,0], [l/2,w/2,0] ];
        
        hull(){
            for (p = points){
                translate(p) cylinder(r=r, h=h, center=true);
            }
        }
    }


    module center_hole(){

        r = 18.4/2;

         cylinder(r=r, h=2*h, center = true);
    }

    module round_mounting_holes() {
        r = 5.7/2;    // radius of round mounting holes
        d = r;  // Distance of hole center from the edge

        translate([l/2-d, 0, 0]) cylinder(r=r, h=2*h, center = true);
        translate([-l/2+d, 0, 0]) cylinder(r=r, h=2*h, center = true);
    }
   
    module oblong_mounting_holes() {

        module oblong_mounting_hole() {
            r = 4.6/2;      // width of oblong mounting holes
            d = 10.4 - 2*r; // Distance between circle centers 

            hull() {
                translate([-d/2, 0, 0]) cylinder(r=r, h=2*h, center = true);
                translate([d/2, 0, 0]) cylinder(r=r, h=2*h, center = true);
            }
        }

        translate ([-l/2+5, w/2-7, 0]) rotate([0, 0, 45]) oblong_mounting_hole();
        translate ([-l/2+5, -w/2+7, 0]) rotate([0, 0, -45]) oblong_mounting_hole();
        translate ([ l/2-5, w/2-7, 0]) rotate([0, 0, -45]) oblong_mounting_hole();
        translate ([ l/2-5, -w/2+7, 0]) rotate([0, 0, 45]) oblong_mounting_hole();
    }
    color("pink") difference() { 
        plate(); 
        center_hole();
        round_mounting_holes();
        oblong_mounting_holes();
    }
    //translate([0, 0, -37]) cylinder(r= 5, h=37);
}

//translate([0, 0, 40]) 
//mount_plate();
