draw_text(400, 10, "ehsp: " + string(ehsp));
draw_text(400, 25, "evsp: " + string(evsp));
draw_text(400, 40, "edir: " + string(edir));
draw_text(400, 55, "pressed: " + string(global.pressed));
draw_text(400, 70, "ex: " + string(global.custex));
draw_text(400, 85, "ey: " + string(global.custey));
draw_text(400, 100, "test: " + string(global.map[# (global.custex + sign(ehsp)), global.custey]));
