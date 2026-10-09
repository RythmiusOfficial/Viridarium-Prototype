function buildasset() {
	var b = scr_build_asset(global.custpx, global.custpy, (global.pdir div 90), "b");
	
	if b = "001" sprite_index = b001;
	if b = "010" sprite_index = b010;
	if b = "011" sprite_index = b011;
	if b = "100" sprite_index = b100;
	if b = "101" sprite_index = b101;
	if b = "110" sprite_index = b110;
	if b = "111" sprite_index = b111;
	if b = "light_1" sprite_index = blight_1;
	if b = "light_2" sprite_index = blight_2;
	if b = "light_3" sprite_index = blight_3;
	if b = "wall_1" sprite_index = bwall_1;
	if b = "wall_2" sprite_index = bwall_2;
	if b = "wall_3" sprite_index = bwall_3;
}

if global.pressed {
	buildasset();
}