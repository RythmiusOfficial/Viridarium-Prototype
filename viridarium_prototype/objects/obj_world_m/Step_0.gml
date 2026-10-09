function buildasset() {
	var m = scr_build_asset(global.custpx, global.custpy, (global.pdir div 90), "m");
	
	if m = "000" sprite_index = m000;
	if m = "001" sprite_index = m001;
	if m = "100" sprite_index = m100;
	if m = "101" sprite_index = m101;
	if m = "light_1" sprite_index = mlight_1;
	if m = "light_2" sprite_index = mlight_2;
	if m = "wall_1" sprite_index = mwall_1;
	if m = "wall_2" sprite_index = mwall_2;
}

if global.pressed {
	buildasset();
}