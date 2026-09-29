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
			if !pathfinding {
				rotate();
			}
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
			if !pathfinding {
				rotate();
			}
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
ehsp = 0;
evsp = 0;

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

function pathfind() {
	var _newpath = scr_pathfind(global.custex, global.custey, global.custpx, global.custpy);

    // only reset index if the path changed
    if (array_length(_newpath) > 0) {
        path = _newpath;
        pathindex = 0;
	}
	
	if (pathindex < array_length(path)) {
		var _next = path[pathindex];
	    var _tx = _next[0];
	    var _ty = _next[1];

	    // move toward tile
	    if (point_distance((x - global.mapx) / 8, (y - global.mapy) / 8, _tx, _ty) < 2) {
		    pathindex++;
		    if (pathindex >= array_length(path)) {
		        pathfinding = false;
		        return;
		    }
		    _next = path[pathindex];
		    _tx = _next[0];
		    _ty = _next[1];
		}		
		edir = point_direction((x - global.mapx) / 8, (y - global.mapy) / 8, _tx, _ty);
		if (abs(edir - 0) < 45) edir = 0;
		else if (abs(edir - 90) < 45) edir = 90;
		else if (abs(edir - 180) < 45) edir = 180;
		else edir = 270;

		movefix();
		edircheck();
		enemymove();
		show_debug_message("enemy: (" + string((x - global.mapx) / 8) + ", " + string((y - global.mapy) / 8) + ")");
		show_debug_message("target: (" + string(_tx) + ", " + string(_ty) + ")");
		show_debug_message("raw dir: " + string(point_direction((x - global.mapx) / 8, (y - global.mapy) / 8, _tx, _ty)));
	}
}

// APPLY EVSP AND EHSP BASED ON EDIR
movefix();
edircheck();

if global.pressed and (collision_circle(x, y, (estepsize * eradius), obj_debug_player, false, true)) {
	pathfinding = true;
	pathfind();
} else {
	path = 0;
	pathfinding = false;
}

// MOVEMENT CHECKS PART II
if global.pressed and !pathfinding {
	enemymove();
}

if global.pressed {
	show_debug_message("cust: (" + string(global.custex) + ", " + string(global.custey) + ")");
	show_debug_message("from pos: (" + string(global.custpx) + ", " + string(global.custpy) + ")");
}

// INTERSECTION CHECKS
eright = bool(global.map[# (global.custex + 1), global.custey] == 1);
eleft = bool(global.map[# (global.custex - 1), global.custey] == 1);
eup = bool(global.map[# global.custex, (global.custey - 1)] == 1);
edown = bool(global.map[# global.custex, (global.custey + 1)] == 1);

if !eright eintersect += 1;
if !eleft eintersect += 1;
if !eup eintersect += 1;
if !edown eintersect += 1;

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
