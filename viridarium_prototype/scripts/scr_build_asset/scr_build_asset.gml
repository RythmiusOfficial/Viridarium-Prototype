// _dir = dir div 90 (0 is 0, 90 is 1, 180 is 2, 270 is 3)
// _t = f (front), m (middle), b (back)
function scr_build_asset(_x, _y, _dir, _t) {
	var key = (string(_x) + "_" + string(_y) + "_" + string(_dir) + "_" + string(_t));
	switch (key)
	{
		#region 6
		#region 6,1
		case "6_1_0_f":	return "101";
		case "6_1_0_m":	return "101";
		case "6_1_0_b":	return "101";
		
		case "6_1_1_f":	return "wall_1";
		case "6_1_1_m":	return "wall_1";
		case "6_1_1_b":	return "wall_1";
		
		case "6_1_2_f":	return "wall_1";
		case "6_1_2_m":	return "wall_1";
		case "6_1_2_b":	return "wall_1";
		
		case "6_1_3_f":	return "101";
		case "6_1_3_m":	return "010";
		case "6_1_3_b":	return "wall_3";
		#endregion
		#region 6,2
		case "6_2_0_f":	return "wall_1";
		case "6_2_0_m":	return "wall_1";
		case "6_2_0_b":	return "wall_1";
		
		case "6_2_1_f":	return "110";
		case "6_2_1_m":	return "wall_2";
		case "6_2_1_b":	return "wall_2";
		
		case "6_2_2_f":	return "wall_1";
		case "6_2_2_m":	return "wall_1";
		case "6_2_2_b":	return "wall_1";
		
		case "6_2_3_f":	return "010";
		case "6_2_3_m":	return "wall_2";
		case "6_2_3_b":	return "wall_2";
		#endregion
		#region 6,3
		case "6_3_0_f":	return "101";
		case "6_3_0_m":	return "101";
		case "6_3_0_b":	return "110";
		
		case "6_3_1_f":	return "101";
		case "6_3_1_m":	return "110";
		case "6_3_1_b":	return "wall_3";
		
		case "6_3_2_f":	return "101";
		case "6_3_2_m":	return "101";
		case "6_3_2_b":	return "101";
		
		case "6_3_3_f":	return "wall_1";
		case "6_3_3_m":	return "wall_1";
		case "6_3_3_b":	return "wall_1";
		#endregion
		#region 6,8
		case "6_8_0_f":	return "001";
		case "6_8_0_m":	return "101";
		case "6_8_0_b":	return "110";
		
		case "6_8_1_f":	return "wall_1";
		case "6_8_1_m":	return "wall_1";
		case "6_8_1_b":	return "wall_1";
		
		case "6_8_2_f":	return "101";
		case "6_8_2_m":	return "100";
		case "6_8_2_b":	return "101";
		
		case "6_8_3_f":	return "wall_1";
		case "6_8_3_m":	return "wall_1";
		case "6_8_3_b":	return "wall_1";
		#endregion
		#endregion
		#region 7
		#region 7,1
		case "7_1_0_f":	return "101";
		case "7_1_0_m":	return "101";
		case "7_1_0_b":	return "101";
		
		case "7_1_1_f":	return "wall_1";
		case "7_1_1_m":	return "wall_1";
		case "7_1_1_b":	return "wall_1";
		
		case "7_1_2_f":	return "011";
		case "7_1_2_m":	return "wall_2";
		case "7_1_2_b":	return "wall_2";
		
		case "7_1_3_f":	return "wall_1";
		case "7_1_3_m":	return "wall_1";
		case "7_1_3_b":	return "wall_1";
		#endregion
		#region 7,3
		case "7_3_0_f":	return "101";
		case "7_3_0_m":	return "110";
		case "7_3_0_b":	return "wall_3";
		
		case "7_3_1_f":	return "wall_1";
		case "7_3_1_m":	return "wall_1";
		case "7_3_1_b":	return "wall_1";
		
		case "7_3_2_f":	return "100";
		case "7_3_2_m":	return "101";
		case "7_3_2_b":	return "101";
		
		case "7_3_3_f":	return "wall_1";
		case "7_3_3_m":	return "wall_1";
		case "7_3_3_b":	return "wall_1";
		#endregion
		#region 7,5
		case "7_5_0_f":	return "101";
		case "7_5_0_m":	return "011";
		case "7_5_0_b":	return "wall_3";
		
		case "7_5_1_f":	return "wall_1";
		case "7_5_1_m":	return "wall_1";
		case "7_5_1_b":	return "wall_1";
		
		case "7_5_2_f":	return "wall_1";
		case "7_5_2_m":	return "wall_1";
		case "7_5_2_b":	return "wall_1";
		
		case "7_5_3_f":	return "101";
		case "7_5_3_m":	return "101";
		case "7_5_3_b":	return "010";
		#endregion
		#region 7,6
		case "7_6_0_f":	return "wall_1";
		case "7_6_0_m":	return "wall_1";
		case "7_6_0_b":	return "wall_1";
		
		case "7_6_1_f":	return "110";
		case "7_6_1_m":	return "wall_2";
		case "7_6_1_b":	return "wall_2";
		
		case "7_6_2_f":	return "wall_1";
		case "7_6_2_m":	return "wall_1";
		case "7_6_2_b":	return "wall_1";
		
		case "7_6_3_f":	return "101";
		case "7_6_3_m":	return "010";
		case "7_6_3_b":	return "wall_3";
		#endregion
		#region 7,7
		case "7_7_0_f":	return "wall_1";
		case "7_7_0_m":	return "wall_1";
		case "7_7_0_b":	return "wall_1";
		
		case "7_7_1_f":	return "101";
		case "7_7_1_m":	return "110";
		case "7_7_1_b":	return "wall_3";
		
		case "7_7_2_f":	return "wall_1";
		case "7_7_2_m":	return "wall_1";
		case "7_7_2_b":	return "wall_1";
		
		case "7_7_3_f":	return "010";
		case "7_7_3_m":	return "wall_2";
		case "7_7_3_b":	return "wall_2";
		#endregion
		#region 7,8
		case "7_8_0_f":	return "101";
		case "7_8_0_m":	return "110";
		case "7_8_0_b":	return "wall_3";
		
		case "7_8_1_f":	return "101";
		case "7_8_1_m":	return "101";
		case "7_8_1_b":	return "110";
		
		case "7_8_2_f":	return "101";
		case "7_8_2_m":	return "101";
		case "7_8_2_b":	return "100";
		
		case "7_8_3_f":	return "wall_1";
		case "7_8_3_m":	return "wall_1";
		case "7_8_3_b":	return "wall_1";
		#endregion
		#region 7,11
		case "7_11_0_f":	return "101";
		case "7_11_0_m":	return "011";
		case "7_11_0_b":	return "wall_3";
		
		case "7_11_1_f":	return "wall_1";
		case "7_11_1_m":	return "wall_1";
		case "7_11_1_b":	return "wall_1";
		
		case "7_11_2_f":	return "wall_1";
		case "7_11_2_m":	return "wall_1";
		case "7_11_2_b":	return "wall_1";
		
		case "7_11_3_f":	return "101";
		case "7_11_3_m":	return "light_2";
		case "7_11_3_b":	return "light_2";
		#endregion
		#region 7,12
		case "7_12_0_f":	return "wall_1";
		case "7_12_0_m":	return "wall_1";
		case "7_12_0_b":	return "wall_1";
		
		case "7_12_1_f":	return "110";
		case "7_12_1_m":	return "wall_2";
		case "7_12_1_b":	return "wall_2";
		
		case "7_12_2_f":	return "wall_1";
		case "7_12_2_m":	return "wall_1";
		case "7_12_2_b":	return "wall_1";
		
		case "7_12_3_f":	return "light_1";
		case "7_12_3_m":	return "light_1";
		case "7_12_3_b":	return "light_1";
		#endregion
		#endregion 7
	}
}
