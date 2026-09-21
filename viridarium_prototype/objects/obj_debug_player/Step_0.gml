// Input Check
if (keyboard_check_pressed(vk_left)) and (pressed == false) {
	hsp = -(stepsize);
	pressed = true;
}

if (keyboard_check_pressed(vk_right)) and (pressed == false){
	hsp = stepsize;
	pressed = true;
}

if (keyboard_check_pressed(vk_up)) and (pressed == false){
	vsp = -(stepsize);
	pressed = true;
}

if (keyboard_check_pressed(vk_down)) and (pressed == false){
	vsp = stepsize;
	pressed = true;
}

// Collision Check
if (place_meeting(x + hsp, y, obj_debug_wall)) {
	hsp = 0;	
}

if (place_meeting(x, y + vsp, obj_debug_wall)) {
	vsp = 0;	
}

// Move
x += hsp;
global.custx += sign(hsp);
y += vsp;
global.custy += -(sign(vsp));
hsp = 0;
vsp = 0;

// Debug
if pressed {
	show_debug_message(global.custx);
	show_debug_message(global.custy);
}

pressed = false;
