function buildasset() {
	var f = scr_build_asset(global.custpx, global.custpy, (global.pdir div 90), "f");
	
	if f == "000" sprite_index = f000;
	if f == "001" sprite_index = f001;
	if f == "100" sprite_index = f100;
	if f == "101" sprite_index = f101;
	if f == "light_1" sprite_index = flight_1;
	if f == "wall_1" sprite_index = fwall_1;
}

if global.pressed or startup == 1 {
	buildasset();
	startup = 0;
}