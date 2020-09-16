/* palm_rest_v2.scad
 *
 *    OpenSCAD script to generate a palm rest handle for arcade joystick
 *
 *    Copyright 2020 Don Haig (accessible.aac at gmail dot com)
 *
 *    This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License  
 *
 *    To view a copy of this license, visit: https://creativecommons.org/licenses/by-sa/4.0/
 *
 */

$fn = 50;
use <captive_nut.scad>

module base(x, y, z, h, r) {
    minkowski() {
    translate([0, 0, h]) cube([x, y, z],center=true);
    sphere(r=r);
    }
}

module side(x, y, z, h, o, r) {
    difference() {
        minkowski() {
            translate([o, 0, h]) cube([x, y, z],center=true);
            sphere(r=r);
        }
        translate([o, 0, z-h]) cube([1.1*(x+2*r), 1.1*(y+2*r)/2, (h+2*r)/2],center=true);
    }
    translate([o, 0, 0.9*(z-h)])
    cylinder(r=r/2, h=(h+2*r)/2, center=true);
}

module handle() {
    
    // 2.0 - 108 mm long, palm width = 75.9 mm
    base_x = 88; base_y = 18; base_z = 2; base_h = -6.8; base_r = 8;
    side_x = 2; side_y = 20; side_z = 30; side_h = 6.2; offset = 46; side_r = 6;
    
    // 2.1 - 108 mm long, palm width = 75.9 mm
    base_x = 112; base_y = 18; base_z = 2; base_h = -6.8; base_r = 8;
    side_x = 2; side_y = 20; side_z = 30; side_h = 6.2; offset = 58; side_r = 6;

    difference() {
        union() {
            base(x=base_x, y=base_y, z=base_z, h=base_h, r=base_r);
            minkowski() {
                side(x=side_x, y=side_y, z=side_z, h=side_h, o=offset, r=side_r);
                sphere(r=1);
            }
            minkowski() {
                side(x=side_x, y=side_y, z=side_z, h=side_h, o=-1*offset, r=side_r);
                sphere(r=1);
            }
        }
        translate([0, 0, -12]){
            m6_nut();
            joystick_shaft();
        }
    }   
}

//difference() {
    handle();
//    translate([0, -30, -30]) cube([60, 60, 60]);
//}
