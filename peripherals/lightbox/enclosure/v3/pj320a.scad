/* pj320a.scad
 *
 *    OpenSCAD script to generate an representation of a PJ320A TRRS connector
 *
 *    Copyright 2018 Don Haig (time4tux at gmail dot com)
 *
 *    GNU GPLv3 (See LICENSE for details) 
 *
 */
$fn = 50;

tol = 0.1;

//import ("connector-pj320a.stl");

module pj320a(cutout = "") {
  // square body
      l = 12;
      w = 6; 
      h = 5;
  
      rotate([0, 0, 90])
      translate([0, -(w/2+tol), -tol])
      color("black") cube([l+2*tol, w+2*tol, h+2*tol]);
  
  // connector opening
      c_r = 2.5;  // connector opening radius
      c_h = 4.0;  // connector opening height
  
      translate([0, 0, c_r])
      rotate([90, 0, 0])
      color("black") cylinder(r=c_r+tol, h=c_h);

  // cutout 
      cut_w = 2*c_r+4*tol + 1;
      cut_h = 2*c_r+4*tol;
      cut_d = c_h+2*tol;
      if (cutout == "right") {
          //translate([0, 0, -2*tol]) rotate([90, 270, 0]) color("green") cube([2*c_r+4*tol, 2*c_r+4*tol, c_h+2*tol]);
          color("green") translate([-cut_w, -cut_d, -2*tol]) cube([cut_h, cut_d, cut_h]);
      }

      if (cutout == "left") {
          //translate([0, 0, -2*tol]) rotate([90, 00, 0]) color("green") cube([2*c_r+3*tol, 2*c_r+3*tol, c_h]);
          color("green") translate([0, -cut_d, -2*tol]) cube([cut_h, cut_d, cut_h]);
      }

      if (cutout == "up") {
          color("green") translate([-cut_w/2, -cut_d+2, cut_h/2]) cube([cut_w, cut_d, 2*cut_h]);
      }

      if (cutout == "down") {
          color("green") translate([-cut_w/2, -cut_d, -cut_h/2]) cube([cut_w, cut_d, cut_h]);
      }
  
  // bottom pegs
      p_r = 0.3;  // bottom peg radius
      p_h = 0.6;  // bottom peg height
  
      translate([0, 1.6, -1])
      color("black") cylinder(r=p_r+2*tol, h=p_h+3*tol);
  
      translate([0, 8.6, -1])
      color("black") cylinder(r=p_r+2*tol, h=p_h+3*tol);
  
  // metal pins
     m_l = 3.3;
     m_w = 1;
     m_t = 0.6;
  
  module pin() {
     color("silver") cube([m_t+2*tol, m_w+2*tol, m_l+tol]);
  }           
      translate([-2.7, 2.6, -3.2]) pin();
      translate([-2.7, 5.6, -3.2]) pin();
      translate([-2.7, 9.6, -3.2]) pin();
      translate([+2, 10.6, -3.2]) pin();
}      

//pj320a("right");
//pj320a("left");
//pj320a("up");
//pj320a("down");
