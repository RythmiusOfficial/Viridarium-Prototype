// INPUT CHECK
// forward
if keyboard_check_pressed(ord("W")) and !global.pressed {
	forward = 1;
	global.pressed = true;
}
// backward
if keyboard_check_pressed(ord("S")) and !global.pressed {
	forward = -1;
	global.pressed = true;
}
// run
if keyboard_check_pressed(vk_shift) and !global.pressed {
	forward = 1;
	run = true;
	global.pressed = true;
}
// rotate left
if keyboard_check_pressed(ord("A")) and !global.pressed {
	dir += turnsize;
	global.pressed = true;
}
// rotate right
if keyboard_check_pressed(ord("D")) and !global.pressed {
	dir -= turnsize;
	global.pressed = true;
}
// strafe left
if keyboard_check_pressed(ord("Q")) and !global.pressed {
	strafe = -1;
	global.pressed = true;
}
// strafe right
if keyboard_check_pressed(ord("E")) and !global.pressed {
	strafe = 1;
	global.pressed = true;
}
// root
if keyboard_check_pressed(vk_tab) and !global.pressed {
	rooted = !rooted;	
	global.pressed = true;
}
// chemical active?
if keyboard_check_pressed(vk_control) and !global.pressed {
	chemicalactive = !chemicalactive;
	global.pressed = true;
}
// perceive
if keyboard_check_pressed(vk_space) and !global.pressed and !perceiving {
	perceiving = true;
}
// check if no inputs are being made and set all movement values to zero to prevent unwanted movement
if !global.pressed {
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
if global.pressed {
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

// MOVE
x += hsp;
y += vsp;

// update the custom coordinates
for (i = 0; i < (run + 1); i ++) {
	global.custpx += sign(hsp);
	global.custpy += sign(vsp);
}
// if perceiving and an action goes by, close the perception
if global.pressed and perceiving {
	perceiving = false;
}

// re-init variables
hsp = 0;
vsp = 0;
run = false;
