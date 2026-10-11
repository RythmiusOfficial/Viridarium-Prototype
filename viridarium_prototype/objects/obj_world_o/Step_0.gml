function buildasset() {
	var o = scr_build_asset(global.custpx, global.custpy, (global.pdir div 90), "o");
	
	if o == "000" sprite_index = o000;
	if o == "001" sprite_index = o001;
	if o == "100" sprite_index = o100;
	if o == "101" sprite_index = o101;
}

if global.pressed or startup == 1 {
	buildasset();
	startup = 0;
}