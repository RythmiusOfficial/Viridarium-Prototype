// MOVE FUNCTION
function enemymove() {
	var _rand = irandom_range(-1,1);
	var _leave = false;
	if (!_leave) and (edir == 180 or edir == 0) {
		if global.map[# (global.custex + sign(ehsp)), global.custey] == 0 {
			x += ehsp;
			y += evsp;
			// update the custom coordinates
			for (i = 0; i < 1; i ++) {
				global.custex += sign(ehsp);
				global.custey += sign(evsp);
			}
		} else {
			if _rand == -1 {
				edir += eturnsize;
			} else if _rand == 1 {
				edir += -eturnsize;
			} else {
				edir = edir;
			}
		}
		_leave = true;
	}
	if (!_leave) and (edir == 90 or edir == 270) {
		if global.map[# global.custex, (global.custey + sign(evsp))] == 0 {
			x += ehsp;
			y += evsp;
			// update the custom coordinates
			for (i = 0; i < 1; i ++) {
				global.custex += sign(ehsp);
				global.custey += sign(evsp);
			}
		} else {
			if _rand == -1 {
				edir += eturnsize;
			} else if _rand == 1 {
				edir += -eturnsize;
			} else {
				edir = edir;
			}
		}
		_leave = true;
	}
}

function edircheck() {
	if edir > 359 {
		edir = 0;	
	}
	if edir < 0 {
		edir = 270;
	}
	image_index = (edir div eturnsize);
}

// APPLY EVSP AND EHSP BASED ON EDIR
edircheck();

if global.pressed {
	if edir == 0 {
		ehsp = estepsize;
	} else if edir == 90 {
		evsp = -estepsize;
	} else if edir == 180 {
		ehsp = -estepsize;
	} else {
		evsp = estepsize;
	}
}

// MOVEMENT CHECKS PART II
if global.pressed {
	enemymove();
}

if global.pressed {
	show_debug_message(string(ehsp));
	show_debug_message(string(evsp));
}

ehsp = 0;
evsp = 0;
global.pressed = false;
