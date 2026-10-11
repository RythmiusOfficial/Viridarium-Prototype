   // _dir = dir div 90 (0 is 0, 90 is 1, 180 is 2, 270 is 3)
// _t = o (on), f (front), m (middle), b (back)
function scr_build_asset(_x, _y, _dir, _t) {
	var key = (string(_x) + "_" + string(_y) + "_" + string(_dir) + "_" + string(_t));
	switch (key)
	{
		#region 1
		#region 1,3
		case "1_3_0_o":	return "100";
		case "1_3_0_f":	return "101";
		case "1_3_0_m":	return "101";
		case "1_3_0_b":	return "101";

		case "1_3_1_o":	return "100";
		case "1_3_1_f":	return "wall_1";
		case "1_3_1_m":	return "wall_1";
		case "1_3_1_b":	return "wall_1";

		case "1_3_2_o":	return "001";
		case "1_3_2_f":	return "wall_1";
		case "1_3_2_m":	return "wall_1";
		case "1_3_2_b":	return "wall_1";

		case "1_3_3_o":	return "001";
		case "1_3_3_f":	return "101";
		case "1_3_3_m":	return "101";
		case "1_3_3_b":	return "101";
		#endregion
		#region 1,4
		case "1_4_0_o":	return "000";
		case "1_4_0_f":	return "wall_1";
		case "1_4_0_m":	return "wall_1";
		case "1_4_0_b":	return "wall_1";

		case "1_4_1_o":	return "101";
		case "1_4_1_f":	return "100";
		case "1_4_1_m":	return "wall_2";
		case "1_4_1_b":	return "wall_2";

		case "1_4_2_o":	return "000";
		case "1_4_2_f":	return "wall_1";
		case "1_4_2_m":	return "wall_1";
		case "1_4_2_b":	return "wall_1";

		case "1_4_3_o":	return "101";
		case "1_4_3_f":	return "101";
		case "1_4_3_m":	return "101";
		case "1_4_3_b":	return "101";
		#endregion
		#region 1,5
		case "1_5_0_o":	return "000";
		case "1_5_0_f":	return "wall_1";
		case "1_5_0_m":	return "wall_1";
		case "1_5_0_b":	return "wall_1";

		case "1_5_1_o":	return "101";
		case "1_5_1_f":	return "101";
		case "1_5_1_m":	return "100";
		case "1_5_1_b":	return "wall_3";

		case "1_5_2_o":	return "000";
		case "1_5_2_f":	return "wall_1";
		case "1_5_2_m":	return "wall_1";
		case "1_5_2_b":	return "wall_1";

		case "1_5_3_o":	return "101";
		case "1_5_3_f":	return "101";
		case "1_5_3_m":	return "101";
		case "1_5_3_b":	return "011";
		#endregion
		#region 1,6
		case "1_6_0_o":	return "000";
		case "1_6_0_f":	return "wall_1";
		case "1_6_0_m":	return "wall_1";
		case "1_6_0_b":	return "wall_1";

		case "1_6_1_o":	return "101";
		case "1_6_1_f":	return "101";
		case "1_6_1_m":	return "101";
		case "1_6_1_b":	return "110";

		case "1_6_2_o":	return "000";
		case "1_6_2_f":	return "wall_1";
		case "1_6_2_m":	return "wall_1";
		case "1_6_2_b":	return "wall_1";

		case "1_6_3_o":	return "101";
		case "1_6_3_f":	return "101";
		case "1_6_3_m":	return "001";
		case "1_6_3_b":	return "wall_3";
		#endregion
		#region 1,7
		case "1_7_0_o":	return "000";
		case "1_7_0_f":	return "wall_1";
		case "1_7_0_m":	return "wall_1";
		case "1_7_0_b":	return "wall_1";

		case "1_7_1_o":	return "101";
		case "1_7_1_f":	return "101";
		case "1_7_1_m":	return "101";
		case "1_7_1_b":	return "101";

		case "1_7_2_o":	return "000";
		case "1_7_2_f":	return "wall_1";
		case "1_7_2_m":	return "wall_1";
		case "1_7_2_b":	return "wall_1";

		case "1_7_3_o":	return "101";
		case "1_7_3_f":	return "001";
		case "1_7_3_m":	return "wall_2";
		case "1_7_3_b":	return "wall_2";
		#endregion
		#region 1,8
		case "1_8_0_o":	return "001";
		case "1_8_0_f":	return "101";
		case "1_8_0_m":	return "101";
		case "1_8_0_b":	return "001";

		case "1_8_1_o":	return "100";
		case "1_8_1_f":	return "101";
		case "1_8_1_m":	return "101";
		case "1_8_1_b":	return "101";

		case "1_8_2_o":	return "100";
		case "1_8_2_f":	return "wall_1";
		case "1_8_2_m":	return "wall_1";
		case "1_8_2_b":	return "wall_1";

		case "1_8_3_o":	return "001";
		case "1_8_3_f":	return "wall_1";
		case "1_8_3_m":	return "wall_1";
		case "1_8_3_b":	return "wall_1";
		#endregion
		#endregion 1
		#region 2
		#region 2,3
		case "2_3_0_o":	return "101";
		case "2_3_0_f":	return "101";
		case "2_3_0_m":	return "101";
		case "2_3_0_b":	return "101";

		case "2_3_1_o":	return "000";
		case "2_3_1_f":	return "wall_1";
		case "2_3_1_m":	return "wall_1";
		case "2_3_1_b":	return "wall_1";

		case "2_3_2_o":	return "101";
		case "2_3_2_f":	return "001";
		case "2_3_2_m":	return "wall_2";
		case "2_3_2_b":	return "wall_2";

		case "2_3_3_o":	return "000";
		case "2_3_3_f":	return "wall_1";
		case "2_3_3_m":	return "wall_1";
		case "2_3_3_b":	return "wall_1";
		#endregion
		#region 2,8
		case "2_8_0_o":	return "101";
		case "2_8_0_f":	return "101";
		case "2_8_0_m":	return "001";
		case "2_8_0_b":	return "101";

		case "2_8_1_o":	return "000";
		case "2_8_1_f":	return "wall_1";
		case "2_8_1_m":	return "wall_1";
		case "2_8_1_b":	return "wall_1";

		case "2_8_2_o":	return "101";
		case "2_8_2_f":	return "100";
		case "2_8_2_m":	return "wall_2";
		case "2_8_2_b":	return "wall_2";

		case "2_8_3_o":	return "000";
		case "2_8_3_f":	return "wall_1";
		case "2_8_3_m":	return "wall_1";
		case "2_8_3_b":	return "wall_1";
		#endregion
		#endregion 2
		#region 3
		#region 3,3
		case "3_3_0_o":	return "101";
		case "3_3_0_f":	return "101";
		case "3_3_0_m":	return "101";
		case "3_3_0_b":	return "001";

		case "3_3_1_o":	return "000";
		case "3_3_1_f":	return "wall_1";
		case "3_3_1_m":	return "wall_1";
		case "3_3_1_b":	return "wall_1";

		case "3_3_2_o":	return "101";
		case "3_3_2_f":	return "101";
		case "3_3_2_m":	return "001";
		case "3_3_2_b":	return "wall_3";

		case "3_3_3_o":	return "000";
		case "3_3_3_f":	return "wall_1";
		case "3_3_3_m":	return "wall_1";
		case "3_3_3_b":	return "wall_1";
		#endregion
		#region 3,8
		case "3_8_0_o":	return "101";
		case "3_8_0_f":	return "001";
		case "3_8_0_m":	return "101";
		case "3_8_0_b":	return "101";

		case "3_8_1_o":	return "000";
		case "3_8_1_f":	return "wall_1";
		case "3_8_1_m":	return "wall_1";
		case "3_8_1_b":	return "wall_1";

		case "3_8_2_o":	return "101";
		case "3_8_2_f":	return "101";
		case "3_8_2_m":	return "100";
		case "3_8_2_b":	return "wall_3";

		case "3_8_3_o":	return "000";
		case "3_8_3_f":	return "wall_1";
		case "3_8_3_m":	return "wall_1";
		case "3_8_3_b":	return "wall_1";
		#endregion
		#endregion 3
		#region 4
		#region 4,3
		case "4_3_0_o":	return "101";
		case "4_3_0_f":	return "101";
		case "4_3_0_m":	return "001";
		case "4_3_0_b":	return "101";

		case "4_3_1_o":	return "000";
		case "4_3_1_f":	return "wall_1";
		case "4_3_1_m":	return "wall_1";
		case "4_3_1_b":	return "wall_1";

		case "4_3_2_o":	return "101";
		case "4_3_2_f":	return "101";
		case "4_3_2_m":	return "101";
		case "4_3_2_b":	return "011";

		case "4_3_3_o":	return "000";
		case "4_3_3_f":	return "wall_1";
		case "4_3_3_m":	return "wall_1";
		case "4_3_3_b":	return "wall_1";
		#endregion
		#region 4,7
		case "4_7_0_o":	return "000";
		case "4_7_0_f":	return "wall_1";
		case "4_7_0_m":	return "wall_1";
		case "4_7_0_b":	return "wall_1";

		case "4_7_1_o":	return "101";
		case "4_7_1_f":	return "light_1";
		case "4_7_1_m":	return "light_1";
		case "4_7_1_b":	return "light_1";

		case "4_7_2_o":	return "000";
		case "4_7_2_f":	return "wall_1";
		case "4_7_2_m":	return "wall_1";
		case "4_7_2_b":	return "wall_1";

		case "4_7_3_o":	return "101";
		case "4_7_3_f":	return "000";
		case "4_7_3_m":	return "wall_2";
		case "4_7_3_b":	return "wall_2";
		#endregion
		#region 4,8
		case "4_8_0_o":	return "001";
		case "4_8_0_f":	return "101";
		case "4_8_0_m":	return "101";
		case "4_8_0_b":	return "001";

		case "4_8_1_o":	return "000";
		case "4_8_1_f":	return "101";
		case "4_8_1_m":	return "light_2";
		case "4_8_1_b":	return "light_2";

		case "4_8_2_o":	return "100";
		case "4_8_2_f":	return "101";
		case "4_8_2_m":	return "101";
		case "4_8_2_b":	return "110";

		case "4_8_3_o":	return "000";
		case "4_8_3_f":	return "wall_1";
		case "4_8_3_m":	return "wall_1";
		case "4_8_3_b":	return "wall_1";
		#endregion
		#endregion 4
		#region 5
		#region 5,3
		case "5_3_0_o":	return "101";
		case "5_3_0_f":	return "001";
		case "5_3_0_m":	return "101";
		case "5_3_0_b":	return "101";
		
		case "5_3_1_o":	return "000";
		case "5_3_1_f":	return "wall_1";
		case "5_3_1_m":	return "wall_1";
		case "5_3_1_b":	return "wall_1";

		case "5_3_2_o":	return "101";
		case "5_3_2_f":	return "101";
		case "5_3_2_m":	return "101";
		case "5_3_2_b":	return "101";

		case "5_3_3_o":	return "000";
		case "5_3_3_f":	return "wall_1";
		case "5_3_3_m":	return "wall_1";
		case "5_3_3_b":	return "wall_1";
		#endregion
		#region 5,8
		case "5_8_0_o":	return "101";
		case "5_8_0_f":	return "101";
		case "5_8_0_m":	return "001";
		case "5_8_0_b":	return "101";
		
		case "5_8_1_o":	return "000";
		case "5_8_1_f":	return "wall_1";
		case "5_8_1_m":	return "wall_1";
		case "5_8_1_b":	return "wall_1";

		case "5_8_2_o":	return "101";
		case "5_8_2_f":	return "100";
		case "5_8_2_m":	return "101";
		case "5_8_2_b":	return "101";

		case "5_8_3_o":	return "000";
		case "5_8_3_f":	return "wall_1";
		case "5_8_3_m":	return "wall_1";
		case "5_8_3_b":	return "wall_1";
		#endregion
		#endregion 5
		#region 6
		#region 6,1
		case "6_1_0_o":	return "100";
		case "6_1_0_f":	return "101";
		case "6_1_0_m":	return "101";
		case "6_1_0_b":	return "101";
		
		case "6_1_1_o":	return "100";
		case "6_1_1_f":	return "wall_1";
		case "6_1_1_m":	return "wall_1";
		case "6_1_1_b":	return "wall_1";
		
		case "6_1_2_o":	return "001";
		case "6_1_2_f":	return "wall_1";
		case "6_1_2_m":	return "wall_1";
		case "6_1_2_b":	return "wall_1";
		
		case "6_1_3_o":	return "001";
		case "6_1_3_f":	return "101";
		case "6_1_3_m":	return "000";
		case "6_1_3_b":	return "wall_3";
		#endregion
		#region 6,2
		case "6_2_0_o":	return "000";
		case "6_2_0_f":	return "wall_1";
		case "6_2_0_m":	return "wall_1";
		case "6_2_0_b":	return "wall_1";
		
		case "6_2_1_o":	return "101";
		case "6_2_1_f":	return "100";
		case "6_2_1_m":	return "wall_2";
		case "6_2_1_b":	return "wall_2";
		
		case "6_2_2_o":	return "000";
		case "6_2_2_f":	return "wall_1";
		case "6_2_2_m":	return "wall_1";
		case "6_2_2_b":	return "wall_1";
		
		case "6_2_3_o":	return "101";
		case "6_2_3_f":	return "000";
		case "6_2_3_m":	return "wall_2";
		case "6_2_3_b":	return "wall_2";
		#endregion
		#region 6,3
		case "6_3_0_o":	return "001";
		case "6_3_0_f":	return "101";
		case "6_3_0_m":	return "101";
		case "6_3_0_b":	return "110";
		
		case "6_3_1_o":	return "000";
		case "6_3_1_f":	return "101";
		case "6_3_1_m":	return "100";
		case "6_3_1_b":	return "wall_3";
		
		case "6_3_2_o":	return "100";
		case "6_3_2_f":	return "101";
		case "6_3_2_m":	return "101";
		case "6_3_2_b":	return "101";
		
		case "6_3_3_o":	return "000";
		case "6_3_3_f":	return "wall_1";
		case "6_3_3_m":	return "wall_1";
		case "6_3_3_b":	return "wall_1";
		#endregion
		#region 6,8
		case "6_8_0_o":	return "101";
		case "6_8_0_f":	return "001";
		case "6_8_0_m":	return "101";
		case "6_8_0_b":	return "110";
		
		case "6_8_1_o":	return "000";
		case "6_8_1_f":	return "wall_1";
		case "6_8_1_m":	return "wall_1";
		case "6_8_1_b":	return "wall_1";
		
		case "6_8_2_o":	return "101";
		case "6_8_2_f":	return "101";
		case "6_8_2_m":	return "100";
		case "6_8_2_b":	return "101";
		
		case "6_8_3_o":	return "000";
		case "6_8_3_f":	return "wall_1";
		case "6_8_3_m":	return "wall_1";
		case "6_8_3_b":	return "wall_1";
		#endregion
		#endregion 6
		#region 7
		#region 7,1
		case "7_1_0_o":	return "101";
		case "7_1_0_f":	return "101";
		case "7_1_0_m":	return "101";
		case "7_1_0_b":	return "101";
		
		case "7_1_1_o":	return "000";
		case "7_1_1_f":	return "wall_1";
		case "7_1_1_m":	return "wall_1";
		case "7_1_1_b":	return "wall_1";
		
		case "7_1_2_o":	return "101";
		case "7_1_2_f":	return "001";
		case "7_1_2_m":	return "wall_2";
		case "7_1_2_b":	return "wall_2";
		
		case "7_1_3_o":	return "000";
		case "7_1_3_f":	return "wall_1";
		case "7_1_3_m":	return "wall_1";
		case "7_1_3_b":	return "wall_1";
		#endregion
		#region 7,3
		case "7_3_0_o":	return "101";
		case "7_3_0_f":	return "101";
		case "7_3_0_m":	return "100";
		case "7_3_0_b":	return "wall_3";
		
		case "7_3_1_o":	return "000";
		case "7_3_1_f":	return "wall_1";
		case "7_3_1_m":	return "wall_1";
		case "7_3_1_b":	return "wall_1";
		
		case "7_3_2_o":	return "101";
		case "7_3_2_f":	return "100";
		case "7_3_2_m":	return "101";
		case "7_3_2_b":	return "101";
		
		case "7_3_3_o":	return "000";
		case "7_3_3_f":	return "wall_1";
		case "7_3_3_m":	return "wall_1";
		case "7_3_3_b":	return "wall_1";
		#endregion
		#region 7,5
		case "7_5_0_o":	return "100";
		case "7_5_0_f":	return "101";
		case "7_5_0_m":	return "001";
		case "7_5_0_b":	return "wall_3";
		
		case "7_5_1_o":	return "100";
		case "7_5_1_f":	return "wall_1";
		case "7_5_1_m":	return "wall_1";
		case "7_5_1_b":	return "wall_1";
		
		case "7_5_2_o":	return "001";
		case "7_5_2_f":	return "wall_1";
		case "7_5_2_m":	return "wall_1";
		case "7_5_2_b":	return "wall_1";
		
		case "7_5_3_o":	return "001";
		case "7_5_3_f":	return "101";
		case "7_5_3_m":	return "101";
		case "7_5_3_b":	return "010";
		#endregion
		#region 7,6
		case "7_6_0_o":	return "000";
		case "7_6_0_f":	return "wall_1";
		case "7_6_0_m":	return "wall_1";
		case "7_6_0_b":	return "wall_1";
		
		case "7_6_1_o":	return "101";
		case "7_6_1_f":	return "100";
		case "7_6_1_m":	return "wall_2";
		case "7_6_1_b":	return "wall_2";
		
		case "7_6_2_o":	return "000";
		case "7_6_2_f":	return "wall_1";
		case "7_6_2_m":	return "wall_1";
		case "7_6_2_b":	return "wall_1";
		
		case "7_6_3_o":	return "101";
		case "7_6_3_f":	return "101";
		case "7_6_3_m":	return "000";
		case "7_6_3_b":	return "wall_3";
		#endregion
		#region 7,7
		case "7_7_0_o":	return "000";
		case "7_7_0_f":	return "wall_1";
		case "7_7_0_m":	return "wall_1";
		case "7_7_0_b":	return "wall_1";
		
		case "7_7_1_o":	return "101";
		case "7_7_1_f":	return "101";
		case "7_7_1_m":	return "100";
		case "7_7_1_b":	return "wall_3";
		
		case "7_7_2_o":	return "000";
		case "7_7_2_f":	return "wall_1";
		case "7_7_2_m":	return "wall_1";
		case "7_7_2_b":	return "wall_1";
		
		case "7_7_3_o":	return "101";
		case "7_7_3_f":	return "000";
		case "7_7_3_m":	return "wall_2";
		case "7_7_3_b":	return "wall_2";
		#endregion
		#region 7,8
		case "7_8_0_o":	return "001";
		case "7_8_0_f":	return "101";
		case "7_8_0_m":	return "100";
		case "7_8_0_b":	return "wall_3";
		
		case "7_8_1_o":	return "000";
		case "7_8_1_f":	return "101";
		case "7_8_1_m":	return "101";
		case "7_8_1_b":	return "100";
		
		case "7_8_2_o":	return "100";
		case "7_8_2_f":	return "101";
		case "7_8_2_m":	return "101";
		case "7_8_2_b":	return "100";
		
		case "7_8_3_o":	return "000";
		case "7_8_3_f":	return "wall_1";
		case "7_8_3_m":	return "wall_1";
		case "7_8_3_b":	return "wall_1";
		#endregion
		#region 7,11
		case "7_11_0_o":	return "100";
		case "7_11_0_f":	return "101";
		case "7_11_0_m":	return "001";
		case "7_11_0_b":	return "wall_3";
		
		case "7_11_1_o":	return "100";
		case "7_11_1_f":	return "wall_1";
		case "7_11_1_m":	return "wall_1";
		case "7_11_1_b":	return "wall_1";
		
		case "7_11_2_o":	return "001";
		case "7_11_2_f":	return "wall_1";
		case "7_11_2_m":	return "wall_1";
		case "7_11_2_b":	return "wall_1";
		
		case "7_11_3_o":	return "001";
		case "7_11_3_f":	return "101";
		case "7_11_3_m":	return "light_2";
		case "7_11_3_b":	return "light_2";
		#endregion
		#region 7,12
		case "7_12_0_o":	return "000";
		case "7_12_0_f":	return "wall_1";
		case "7_12_0_m":	return "wall_1";
		case "7_12_0_b":	return "wall_1";
		
		case "7_12_1_o":	return "101";
		case "7_12_1_f":	return "100";
		case "7_12_1_m":	return "wall_2";
		case "7_12_1_b":	return "wall_2";
		
		case "7_12_2_o":	return "000";
		case "7_12_2_f":	return "wall_1";
		case "7_12_2_m":	return "wall_1";
		case "7_12_2_b":	return "wall_1";
		
		case "7_12_3_o":	return "101";
		case "7_12_3_f":	return "light_1";
		case "7_12_3_m":	return "light_1";
		case "7_12_3_b":	return "light_1";
		#endregion
		#endregion 7
		#region 8
		#region 8,1
		case "8_1_0_o":	return "101";
		case "8_1_0_f":	return "101";
		case "8_1_0_m":	return "101";
		case "8_1_0_b":	return "light_3";
		
		case "8_1_1_o":	return "000";
		case "8_1_1_f":	return "wall_1";
		case "8_1_1_m":	return "wall_1";
		case "8_1_1_b":	return "wall_1";
		
		case "8_1_2_o":	return "101";
		case "8_1_2_f":	return "101";
		case "8_1_2_m":	return "001";
		case "8_1_2_b":	return "wall_3";
		
		case "8_1_3_o":	return "000";
		case "8_1_3_f":	return "wall_1";
		case "8_1_3_m":	return "wall_1";
		case "8_1_3_b":	return "wall_1";
		#endregion
		#region 8,3
		case "8_3_0_o":	return "101";
		case "8_3_0_f":	return "100";
		case "8_3_0_m":	return "wall_2";
		case "8_3_0_b":	return "wall_2";
		
		case "8_3_1_o":	return "000";
		case "8_3_1_f":	return "wall_1";
		case "8_3_1_m":	return "wall_1";
		case "8_3_1_b":	return "wall_1";
		
		case "8_3_2_o":	return "101";
		case "8_3_2_f":	return "101";
		case "8_3_2_m":	return "100";
		case "8_3_2_b":	return "101";
		
		case "8_3_3_o":	return "000";
		case "8_3_3_f":	return "wall_1";
		case "8_3_3_m":	return "wall_1";
		case "8_3_3_b":	return "wall_1";
		#endregion
		#region 8,5
		case "8_5_0_o":	return "101";
		case "8_5_0_f":	return "001";
		case "8_5_0_m":	return "wall_2";
		case "8_5_0_b":	return "wall_2";
		
		case "8_5_1_o":	return "000";
		case "8_5_1_f":	return "wall_1";
		case "8_5_1_m":	return "wall_1";
		case "8_5_1_b":	return "wall_1";
		
		case "8_5_2_o":	return "101";
		case "8_5_2_f":	return "001";
		case "8_5_2_m":	return "wall_2";
		case "8_5_2_b":	return "wall_2";

		case "8_5_3_o":	return "000";
		case "8_5_3_f":	return "wall_1";
		case "8_5_3_m":	return "wall_1";
		case "8_5_3_b":	return "wall_1";
		#endregion
		#region 8,8
		case "8_8_0_o":	return "101";
		case "8_8_0_f":	return "100";
		case "8_8_0_m":	return "wall_2";
		case "8_8_0_b":	return "wall_2";
		
		case "8_8_1_o":	return "000";
		case "8_8_1_f":	return "wall_1";
		case "8_8_1_m":	return "wall_1";
		case "8_8_1_b":	return "wall_1";
		
		case "8_8_2_o":	return "101";
		case "8_8_2_f":	return "100";
		case "8_8_2_m":	return "101";
		case "8_8_2_b":	return "101";

		case "8_8_3_o":	return "000";
		case "8_8_3_f":	return "wall_1";
		case "8_8_3_m":	return "wall_1";
		case "8_8_3_b":	return "wall_1";
		#endregion
		#region 8,11
		case "8_11_0_o":	return "101";
		case "8_11_0_f":	return "001";
		case "8_11_0_m":	return "wall_2";
		case "8_11_0_b":	return "wall_2";
		
		case "8_11_1_o":	return "000";
		case "8_11_1_f":	return "wall_1";
		case "8_11_1_m":	return "wall_1";
		case "8_11_1_b":	return "wall_1";
		
		case "8_11_2_o":	return "101";
		case "8_11_2_f":	return "001";
		case "8_11_2_m":	return "wall_2";
		case "8_11_2_b":	return "wall_2";

		case "8_11_3_o":	return "000";
		case "8_11_3_f":	return "wall_1";
		case "8_11_3_m":	return "wall_1";
		case "8_11_3_b":	return "wall_1";
		#endregion
		#endregion 8
		#region 9
		#region 9,1
		case "9_1_0_o":	return "101";
		case "9_1_0_f":	return "101";
		case "9_1_0_m":	return "light_2";
		case "9_1_0_b":	return "light_2";
		
		case "9_1_1_o":	return "000";
		case "9_1_1_f":	return "wall_1";
		case "9_1_1_m":	return "wall_1";
		case "9_1_1_b":	return "wall_1";
		
		case "9_1_2_o":	return "101";
		case "9_1_2_f":	return "101";
		case "9_1_2_m":	return "101";
		case "9_1_2_b":	return "011";

		case "9_1_3_o":	return "000";
		case "9_1_3_f":	return "wall_1";
		case "9_1_3_m":	return "wall_1";
		case "9_1_3_b":	return "wall_1";
		#endregion
		#region 9,3
		case "9_3_0_o":	return "100";
		case "9_3_0_f":	return "wall_1";
		case "9_3_0_m":	return "wall_1";
		case "9_3_0_b":	return "wall_1";
		
		case "9_3_1_o":	return "001";
		case "9_3_1_f":	return "wall_1";
		case "9_3_1_m":	return "wall_1";
		case "9_3_1_b":	return "wall_1";
		
		case "9_3_2_o":	return "001";
		case "9_3_2_f":	return "101";
		case "9_3_2_m":	return "101";
		case "9_3_2_b":	return "100";

		case "9_3_3_o":	return "100";
		case "9_3_3_f":	return "101";
		case "9_3_3_m":	return "100";
		case "9_3_3_b":	return "wall_3";
		#endregion
		#region 9,4
		case "9_4_0_o":	return "000";
		case "9_4_0_f":	return "wall_1";
		case "9_4_0_m":	return "wall_1";
		case "9_4_0_b":	return "wall_1";
		
		case "9_4_1_o":	return "101";
		case "9_4_1_f":	return "001";
		case "9_4_1_m":	return "wall_2";
		case "9_4_1_b":	return "wall_2";
		
		case "9_4_2_o":	return "000";
		case "9_4_2_f":	return "wall_1";
		case "9_4_2_m":	return "wall_1";
		case "9_4_2_b":	return "wall_1";

		case "9_4_3_o":	return "101";
		case "9_4_3_f":	return "100";
		case "9_4_3_m":	return "wall_2";
		case "9_4_3_b":	return "wall_2";
		#endregion
		#region 9,5
		case "9_5_0_o":	return "001";
		case "9_5_0_f":	return "wall_1";
		case "9_5_0_m":	return "wall_1";
		case "9_5_0_b":	return "wall_1";
		
		case "9_5_1_o":	return "001";
		case "9_5_1_f":	return "101";
		case "9_5_1_m":	return "001";
		case "9_5_1_b":	return "wall_3";
		
		case "9_5_2_o":	return "100";
		case "9_5_2_f":	return "101";
		case "9_5_2_m":	return "001";
		case "9_5_2_b":	return "wall_3";

		case "9_5_3_o":	return "100";
		case "9_5_3_f":	return "wall_1";
		case "9_5_3_m":	return "wall_1";
		case "9_5_3_b":	return "wall_1";
		#endregion
		#region 9,8
		case "9_8_0_o":	return "100";
		case "9_8_0_f":	return "wall_1";
		case "9_8_0_m":	return "wall_1";
		case "9_8_0_b":	return "wall_1";
		
		case "9_8_1_o":	return "001";
		case "9_8_1_f":	return "wall_1";
		case "9_8_1_m":	return "wall_1";
		case "9_8_1_b":	return "wall_1";
		
		case "9_8_2_o":	return "001";
		case "9_8_2_f":	return "101";
		case "9_8_2_m":	return "100";
		case "9_8_2_b":	return "101";

		case "9_8_3_o":	return "100";
		case "9_8_3_f":	return "101";
		case "9_8_3_m":	return "101";
		case "9_8_3_b":	return "110";
		#endregion
		#region 9,9
		case "9_9_0_o":	return "000";
		case "9_9_0_f":	return "wall_1";
		case "9_9_0_m":	return "wall_1";
		case "9_9_0_b":	return "wall_1";
		
		case "9_9_1_o":	return "101";
		case "9_9_1_f":	return "001";
		case "9_9_1_m":	return "wall_2";
		case "9_9_1_b":	return "wall_2";
		
		case "9_9_2_o":	return "000";
		case "9_9_2_f":	return "wall_1";
		case "9_9_2_m":	return "wall_1";
		case "9_9_2_b":	return "wall_1";

		case "9_9_3_o":	return "101";
		case "9_9_3_f":	return "101";
		case "9_9_3_m":	return "100";
		case "9_9_3_b":	return "wall_3";
		#endregion
		#region 9,10
		case "9_10_0_o":	return "000";
		case "9_10_0_f": 	return "wall_1";
		case "9_10_0_m": 	return "wall_1";
		case "9_10_0_b": 	return "wall_1";
		
		case "9_10_1_o":	return "101";
		case "9_10_1_f": 	return "101";
		case "9_10_1_m": 	return "001";
		case "9_10_1_b": 	return "wall_3";
		
		case "9_10_2_o":	return "000";
		case "9_10_2_f": 	return "wall_1";
		case "9_10_2_m": 	return "wall_1";
		case "9_10_2_b": 	return "wall_1";

		case "9_10_3_o":	return "101";
		case "9_10_3_f": 	return "100";
		case "9_10_3_m": 	return "wall_2";
		case "9_10_3_b": 	return "wall_2";
		#endregion
		#region 9,11
		case "9_11_0_o":	return "001";
		case "9_11_0_f": 	return "wall_1";
		case "9_11_0_m": 	return "wall_1";
		case "9_11_0_b": 	return "wall_1";

		case "9_11_1_o":	return "001";
		case "9_11_1_f": 	return "101";
		case "9_11_1_m": 	return "101";
		case "9_11_1_b": 	return "011";
		
		case "9_11_2_o":	return "100";
		case "9_11_2_f": 	return "101";
		case "9_11_2_m": 	return "001";
		case "9_11_2_b": 	return "wall_3";

		case "9_11_3_o":	return "100";
		case "9_11_3_f": 	return "wall_1";
		case "9_11_3_m": 	return "wall_1";
		case "9_11_3_b": 	return "wall_1";
		#endregion
		#endregion 9
		#region 10
		#region 10,1
		case "10_1_0_o":	return "101";
		case "10_1_0_f":	return "light_1";
		case "10_1_0_m":	return "light_1";
		case "10_1_0_b":	return "light_1";
		
		case "10_1_1_o":	return "000";
		case "10_1_1_f":	return "wall_1";
		case "10_1_1_m":	return "wall_1";
		case "10_1_1_b":	return "wall_1";
		
		case "10_1_2_o":	return "101";
		case "10_1_2_f":	return "101";
		case "10_1_2_m":	return "101";
		case "10_1_2_b":	return "101";
		
		case "10_1_3_o":	return "000";
		case "10_1_3_f":	return "wall_1";
		case "10_1_3_m":	return "wall_1";
		case "10_1_3_b":	return "wall_1";
		#endregion
		#endregion 10
	}
}
