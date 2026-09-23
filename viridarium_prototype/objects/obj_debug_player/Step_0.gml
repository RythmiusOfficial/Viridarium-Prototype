// INPUT CHECK
// forward
if keyboard_check_pressed(ord("W")) and !pressed {
	forward = 1;
	pressed = true;
}
// backward
if keyboard_check_pressed(ord("S")) and !pressed {
	forward = -1;
	pressed = true;
}
// run
if keyboard_check_pressed(vk_shift) and !pressed {
	forward = 1;
	run = true;
	pressed = true;
}
// rotate left
if keyboard_check_pressed(ord("A")) and !pressed {
	dir += turnsize;
	pressed = true;
}
// rotate right
if keyboard_check_pressed(ord("D")) and !pressed{
	dir -= turnsize;
	pressed = true;
}
// strafe left
if keyboard_check_pressed(ord("Q")) and !pressed {
	strafe = -1;
	pressed = true;
}
// strafe right
if keyboard_check_pressed(ord("E")) and !pressed {
	strafe = 1;
	pressed = true;
}
// root
if keyboard_check_pressed(vk_tab) and !pressed {
	rooted = !rooted;	
	pressed = true;
}
// chemical active?
if keyboard_check_pressed(vk_control) and !pressed {
	chemicalactive = !chemicalactive;
	pressed = true;
}
// perceive
if keyboard_check_pressed(vk_space) and !pressed and !perceiving {
	perceiving = true;
}
// check if no inputs are being made and set all movement values to zero to prevent unwanted movement
if !pressed {
	forward = 0;
	strafe = 0;
}
// limit rotation and apply image changes
if dir > 359 {
	dir = 0;	
}
if dir < 0 {
	dir = 270;
}

image_index = (dir div turnsize);

// APPLY VSP AND HSP BASED ON ROTATION DIRECTION
if pressed = true {
	// forward
	if abs(forward) = 1 {
		if dir == 0 {
			hsp = stepsize * forward;
		} else if dir == 90 {
			vsp = -(stepsize * forward);
		} else if dir == 180 {
			hsp = -(stepsize * forward);
		} else {
			vsp = stepsize * forward;
		}
	}
	// strafe
	if abs(strafe) = 1 {
		if dir == 0 {
			vsp = stepsize * strafe;
		} else if dir == 90 {
			hsp = stepsize * strafe;
		} else if dir == 180 {
			vsp = -(stepsize * strafe);
		} else {
			hsp = -(stepsize * strafe);
		}
	}
}

// COLLISIONS; if 0 or 14 is part of the custpx/py, this code will break because it'll try and retrieve a nonexistent #
// x checks
if global.map[# (global.custpx + sign(hsp)), global.custpy] == 1 {
	hsp = 0;
	show_debug_message(string("found collision ahead"));
}
if run == true {
	if !global.map[# (global.custpx + (sign(hsp) * 2)), global.custpy] == 1 {
		hsp *= 2;
	} else {
		run = false;
	}
}
if global.map[# global.custpx, (global.custpy + sign(vsp))] == 1 {
	vsp = 0;
	show_debug_message(string("found collision ahead"));
}
if run == true {
	if !global.map[# global.custpx, (global.custpy + (sign(vsp) * 2))] == 1 {
		vsp *= 2;
	} else {
		run = false;
	}
}
/*
if place_meeting(x + hsp, y, obj_debug_wall) {
	hsp = 0;
}
if run == true {
	if !place_meeting(x + (hsp * 2), y, obj_debug_wall) {
		hsp *= 2;
	} else {
		run = false;	
	}
}
if place_meeting(x, y + vsp, obj_debug_wall) {
	vsp = 0;
}
if run == true {
	if !place_meeting(x, y + (vsp * 2), obj_debug_wall) {
		vsp *= 2;
	} else {
		run = false
	}
}
*/

// MOVE
x += hsp;
y += vsp;
// update the custom coordinates
for (i = 0; i < (run + 1); i ++) {
	global.custpx += sign(hsp);
	global.custpy += sign(vsp);
}
// if perceiving and an action goes by, close the perception
if pressed and perceiving {
	perceiving = false;
}

hsp = 0;
vsp = 0;

pressed = false;
run = false;
