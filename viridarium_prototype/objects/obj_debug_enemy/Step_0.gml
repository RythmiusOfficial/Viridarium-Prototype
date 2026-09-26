// MOVE FUNCTION
function enemymove() {
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
		}
		_leave = true;
		if eintersect != 3 {
			rotate();
		}
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
		}
		_leave = true;
		if eintersect != 3 {
			rotate();
		}
	}
}

// ROTATE FUNCTION
function rotate() {
	var _rand = irandom_range(0,1);
	repeat (5) {
		if (edir == 180 or edir == 0) {
			if global.map[# (global.custex + sign(ehsp)), global.custey] == 0 {
				show_debug_message("enemy just checked out at! " + string(_rand));
				break;
			}
		}
		
		if (edir == 90 or edir == 270) {
			if global.map[# global.custex, (global.custey + sign(evsp))] == 0 {
				show_debug_message("enemy just checked out at! " + string(_rand));
				break;
			}
		}

		if _rand == 0 {
			edir += eturnsize;
		} else if _rand == 1 {
			edir += -eturnsize;
		}
		movefix();
		edircheck();
	}
}

function movefix() {
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

// DIRECTION CHECK FUNCTION
function edircheck() {
	if edir > 359 {
		edir = 0;	
	}
	if edir < 0 {
		edir = 270;
	}
	image_index = (edir div eturnsize);
}

function intersectrot() {
	if edir == 180 {
		if global.map[# global.custex, global.custey + 1] == 1 {
			edir += -eturnsize;
		}
	}
	if edir == 0 {
		if global.map[# global.custex, global.custey - 1] == 1 {
			edir += -eturnsize;
		}
	}
	if edir == 90 {
		if global.map[# global.custex - 1, global.custey] == 1 {
			edir += -eturnsize;
		}
	}
	if edir == 270 {
		if global.map[# global.custex + 1, global.custey] == 1 {
			edir += -eturnsize;
		}
	}
	movefix();
	edircheck();
}

// APPLY EVSP AND EHSP BASED ON EDIR
movefix();
edircheck();

// MOVEMENT CHECKS PART II
if global.pressed {
	enemymove();
}

// INTERSECTION CHECKS
eright = bool(global.map[# (global.custex + 1), global.custey] == 1);
eleft = bool(global.map[# (global.custex - 1), global.custey] == 1);
eup = bool(global.map[# global.custex, (global.custey - 1)] == 1);
edown = bool(global.map[# global.custex, (global.custey + 1)] == 1);

if !eright {
	eintersect += 1;	
}

if !eleft {
	eintersect += 1;	
}

if !eup {
	eintersect += 1;	
}

if !edown {
	eintersect += 1;	
}

if global.pressed {
	if eintersect == 3 {
		var _randtwo = irandom_range(-1, 1);
		if _randtwo == -1 {
			intersectrot();
		}
	}
}
eintersect = 0;

if global.pressed {
	show_debug_message(string(ehsp));
	show_debug_message(string(evsp));
}

ehsp = 0;
evsp = 0;
global.pressed = false;
