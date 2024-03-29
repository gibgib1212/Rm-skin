main_state = require("main_state")

local function append_all(list, list1)
	for i, v in ipairs(list1) do
		table.insert(list, v)
	end
end

local category = {

	{name = "Option", item = {
		"option_1",
		"option_2",
		"option_3",
		"option_4",
		"option_5",
		"option_6",
		"option_7",
		"option_8",
		"option_9",
		"option_10",
		"option_11",
		"option_12"
	}},

	{name = "Common", item = {
		"common_1",
		"common_2"
	}},

	{name = "Notes : 1-5", item = {
		"notes_wh_1",
		"notes_wh_2",
		"notes_wh_3",
		"notes_wh_4",
		"notes_wh_5"
	}},

	{name = "Notes : 2-4", item = {
		"notes_bl_1",
		"notes_bl_2",
		"notes_bl_3",
		"notes_bl_4",
		"notes_bl_5"
	}},

	{name = "Notes : 3", item = {
		"notes_ye_1",
		"notes_ye_2",
		"notes_ye_3",
		"notes_ye_4",
		"notes_ye_5"
	}},

	{name = "Notes : Scratch", item = {
		"notes_sc_1",
		"notes_sc_2",
		"notes_sc_3",
		"notes_sc_4",
		"notes_sc_5"
	}},

	{name = "Keybeam", item = {
		"keybeam_1",
		"keybeam_2",
		"keybeam_3",
		"keybeam_4"
	}},

	{name = "Judge", item = {
		"judge_1",
		"judge_2",
		"judge_3",
		"judge_4",
		"judge_5",
		"judge_6"
	}},

	{name = "Other", item = {
		"other_1",
		"other_2",
		"other_3",
		"other_4"
	}},

	{name = "Colors", item = {
		"color_1",
		"color_2",
		"color_3",
		"color_4",
		"color_5",
		"color_6",
		"color_7"
	}},

	{name = "Custom", item = {
		"custom_1",
		"custom_2",
		"custom_3",
		"custom_4",
		"custom_5",
		"custom_6",
		"custom_7",
		"custom_8",
		"custom_9",
		"custom_10",
		"custom_11",
		"custom_12",
		"custom_13",
		"custom_14",
		"custom_15",
		"custom_16",
		"custom_17",
		"custom_18"
	}}
}

local property = {

	{name = "Scratch Side", category = "option_1", item = {
		{name = "Left", op = 900},
		{name = "Right", op = 901}
	}},

	{name = "Lane Frame", category = "option_2", item = {
		{name = "Off", op = 902},
		{name = "On", op = 903},
	}},

	{name = "Lane Center & Notes Position", category = "option_3", item = {
		{name = "Notes & 2,3,4,5,6", op = 904},
		{name = "Notes + Scratch & 1,2,3,4,5 ( or 3,4,5,6,7 )", op = 905}
	}},

	{name = "Keybeam Display", category = "option_4", item = {
		{name = "Fast", op = 906},
		{name = "Slow", op = 907}
	}},

	{name = "Target", category = "option_5", item = {
		{name = "Off", op = 908},
		{name = "My Best", op = 909},
		{name = "Target", op = 910}
	}},

	{name = "Target2 (Left)", category = "option_6", item = {
		{name = "Off", op = 911},
		{name = "On", op = 912}
	}},

	{name = "Score Rate", category = "option_7", item = {
		{name = "Off", op = 913},
		{name = "On", op = 914}
	}},

	{name = "Fast/Slow", category = "option_8", item = {
		{name = "Off", op = 915},
		{name = "Center", op = 916},
		{name = "Right and Left", op = 917},
		{name = "+-MS", op = 918}
	}},

	{name = "Timing Visualizer", category = "option_9", item = {
		{name = "Off", op = 919},
		{name = "On", op = 920}
	}},

	{name = "F/S Count On Pleyground", category = "option_10", item = {
		{name = "Off", op = 921},
		{name = "On", op = 922}
	}},

	{name = "Bomb Under the Gauge", category = "option_11", item = {
		{name = "Off", op = 923},
		{name = "On", op = 924}
	}},

	{name = "Mascot Display", category = "option_12", item = {
		{name = "Off", op = 950},
		{name = "Stop", op = 951},
		{name = "Jump", op = 952},
		{name = "Float", op = 953}
	}}
}

local function isScratchLeft()
	return skin_config.option["Scratch Side"] == 900
end

local function isScratchRight()
	return skin_config.option["Scratch Side"] == 901
end

local function isLaneFrameOn()
	return skin_config.option["Lane Frame"] == 903
end

local function isLaneCenterPosKey()
	return skin_config.option["Lane Center & Notes Position"] == 904
end

local function isLaneCenterPosAll()
	return skin_config.option["Lane Center & Notes Position"] == 905
end

local function isKeybeamFast()
	return skin_config.option["Keybeam Display"] == 906
end

local function isTargetBest()
	return skin_config.option["Target"] == 909
end

local function isTargetRank()
	return skin_config.option["Target"] == 910
end

local function isTarget2On()
	return skin_config.option["Target2 (Left)"] == 912
end

local function isScoreRateOn()
	return skin_config.option["Score Rate"] == 914
end

local function isFastSlowCenterOn()
	return skin_config.option["Fast/Slow"] == 916
end

local function isFastSlowRnLOn()
	return skin_config.option["Fast/Slow"] == 917
end

local function isFastSlowMS()
	return skin_config.option["Fast/Slow"] == 918
end

local function isTimingVisualizerOn()
	return skin_config.option["Timing Visualizer"] == 920
end

local function isFSCountOnPlayOn()
	return skin_config.option["F/S Count On Pleyground"] == 922
end

local function isBombUnderTheGaugeOn()
	return skin_config.option["Bomb Under the Gauge"] == 924
end

local function isMascotStop()
	return skin_config.option["Mascot Display"] == 951
end

local function isMascotJump()
	return skin_config.option["Mascot Display"] == 952
end

local function isMascotFloat()
	return skin_config.option["Mascot Display"] == 953
end

local function f_play_pos()
	if isScratchRight() then
		return 616
	else
		return 372
	end
end

local function f_score_pos()
	if isScratchRight() then
		return 1550
	else
		return 0
	end
end

local function f_info_pos()
	if isScratchRight() then
		return 0
	else
		return 1304
	end
end

local function f_graph_blue_pos()
	if isScratchRight() then
		return 72
	else
		return 264
	end
end

local function f_graph_red_pos()
	if isScratchRight() then
		return 264
	else
		return 72
	end
end

local function f_between_width()
	if isScratchRight() then
		return 15
	else
		return 115
	end
end

local function f_center_pos()
	if isLaneCenterPosKey() and isScratchRight() then
		return 329
	elseif isLaneCenterPosKey() and isScratchLeft() then
		return 473
	else
		return 401
	end
end

local function remain_notes()
	return main_state.number(106) - main_state.number(110) - main_state.number(111) - main_state.number(112) - main_state.number(113) - main_state.number(114)
end

local function remain_notes_rate()
	return remain_notes() / main_state.number(106)
end

local function display_number(number)
	if main_state.number(106) == remain_notes() then
		return 0
	else
		return main_state.number(number)
	end
end

local filepath = {

	{name = "Mascot", 								category = "common_1", path = "parts/!mascot/*.png", 	def = "!_Default"},
	{name = "Background Image", 					category = "common_2", path = "parts/bg/*.png", 		def = "Black"},

	{name = "Notes (White)", 						category = "notes_wh_1", path = "parts/notes/white/*.png", 			def = "White_#Square_#f3f3f3"},
	{name = "Long-Start (White)", 					category = "notes_wh_2", path = "parts/notes/white_lnSt/*.png", 	def = "White_#Line_#f3f3f3"},
	{name = "Long-End (White)", 					category = "notes_wh_3", path = "parts/notes/white_lnEn/*.png", 	def = "General_#Fadeout"},
	{name = "Long-Body (White)", 					category = "notes_wh_4", path = "parts/notes/white_lnBo/*.png", 	def = "General_#808088"},
	{name = "Mine (White)", 						category = "notes_wh_5", path = "parts/notes/white_mine/*.png", 	def = "Off"},

	{name = "Notes (Blue)", 						category = "notes_bl_1", path = "parts/notes/blue/*.png", 			def = "LightBlue_#Square_#35eaff"},
	{name = "Long-Start (Blue)", 					category = "notes_bl_2", path = "parts/notes/blue_lnSt/*.png", 		def = "LightBlue_#Line_#35eaff"},
	{name = "Long-End (Blue)", 						category = "notes_bl_3", path = "parts/notes/blue_lnEn/*.png", 		def = "General_#Fadeout"},
	{name = "Long-Body (Blue)", 					category = "notes_bl_4", path = "parts/notes/blue_lnBo/*.png", 		def = "General_#808088"},
	{name = "Mine (Blue)", 							category = "notes_bl_5", path = "parts/notes/blue_mine/*.png", 		def = "Off"},

	{name = "Notes (Yellow)", 						category = "notes_ye_1", path = "parts/notes/yellow/*.png", 		def = "Yellow_#Square_#ffde35"},
	{name = "Long-Start (Yellow)", 					category = "notes_ye_2", path = "parts/notes/yellow_lnSt/*.png", 	def = "Yellow_#Line_#ffde35"},
	{name = "Long-End (Yellow)", 					category = "notes_ye_3", path = "parts/notes/yellow_lnEn/*.png", 	def = "General_#Fadeout"},
	{name = "Long-Body (Yellow)", 					category = "notes_ye_4", path = "parts/notes/yellow_lnBo/*.png", 	def = "General_#808088"},
	{name = "Mine (Yellow)", 						category = "notes_ye_5", path = "parts/notes/yellow_mine/*.png", 	def = "Off"},

	{name = "Notes (Scratch)", 						category = "notes_sc_1", path = "parts/notes/scratch/*.png", 		def = "LightCoral_#Square_#ff6d6d"},
	{name = "Long-Start (Scratch)", 				category = "notes_sc_2", path = "parts/notes/scratch_lnSt/*.png", 	def = "LightCoral_#Line_#ff6d6d"},
	{name = "Long-End (Scratch)", 					category = "notes_sc_3", path = "parts/notes/scratch_lnEn/*.png", 	def = "General_#Fadeout"},
	{name = "Long-Body (Scratch)", 					category = "notes_sc_4", path = "parts/notes/scratch_lnBo/*.png", 	def = "General_#808088"},
	{name = "Mine (Scratch)", 						category = "notes_sc_5", path = "parts/notes/scratch_mine/*.png", 	def = "Off"},

	{name = "Keybeam: 1-5", 						category = "keybeam_1", path = "parts/keybeam/white/*.png", 		def = "Default_Wh"},
	{name = "Keybeam: 2-4", 						category = "keybeam_2", path = "parts/keybeam/blue/*.png", 			def = "Default_Bl"},
	{name = "Keybeam: 3", 							category = "keybeam_3", path = "parts/keybeam/yellow/*.png", 		def = "Default_Bl"},
	{name = "Keybeam: Scratch", 					category = "keybeam_4", path = "parts/keybeam/scratch/*.png", 		def = "Default_Sc"},

	{name = "Judge: Perfect", 						category = "judge_1", path = "parts/judge/pg/*.png", 	def = "x75%_Default"},
	{name = "Judge: Great", 						category = "judge_2", path = "parts/judge/gr/*.png", 	def = "x75%_Default"},
	{name = "Judge: Good",	 						category = "judge_3", path = "parts/judge/gd/*.png", 	def = "x75%_Default"},
	{name = "Judge: Bad", 							category = "judge_4", path = "parts/judge/bd/*.png", 	def = "x75%_Default"},
	{name = "Judge: Poor", 							category = "judge_5", path = "parts/judge/pr/*.png", 	def = "x75%_Default"},
	{name = "Judge: Miss",	 						category = "judge_6", path = "parts/judge/ms/*.png",	def = "x75%_Default"},

	{name = "Judge Num", 							category = "other_1", path = "parts/judgenum/*.png", 	def = "Simple_Thin"},
	{name = "Bomb", 								category = "other_2", path = "parts/!bomb/*.png", 		def = "!_x150%_White_clear_ring_SCUROed"},
	{name = "Lane Cover", 							category = "other_3", path = "parts/lanecover/*.png", 	def = "Simple"},
	{name = "Fast/Slow(except \"+-MS\")", 			category = "other_4", path = "parts/fast_slow/*.png", 	def = "Default_Medium"},

	{name = "Judge Line", 							category = "color_1", path = "parts/colors/judgeline/*.png", 	def = "White4_#a3d1ff"},
	{name = "Gauge: Hazard", 						category = "color_2", path = "parts/colors/hazard/*.png", 		def = "Blue1_#389eff"},
	{name = "Gauge: Ex Hard", 						category = "color_3", path = "parts/colors/exhard/*.png", 		def = "Yellow1_#ffff40"},
	{name = "Gauge: Hard", 							category = "color_4", path = "parts/colors/hard/*.png", 		def = "White1_#ffffff"},
	{name = "Gauge: Normal", 						category = "color_5", path = "parts/colors/normal/*.png", 		def = "LightBlue1_#74f7f7"},
	{name = "Gauge: Easy", 							category = "color_6", path = "parts/colors/easy/*.png", 		def = "Green1_#80ff40"},
	{name = "Gauge: Asist Easy", 					category = "color_7", path = "parts/colors/aseasy/*.png", 		def = "Pink1_#ffb6c1"}

}

local offset = {

	{name = "BG Darkness", 									category = "custom_1", id = 50, x = false, y = false, w = false, h = false, r = false, a = true},
	{name = "BGA Darkness", 								category = "custom_2", id = 51, x = false, y = false, w = false, h = false, r = false, a = true},
	{name = "Lane Transparence", 							category = "custom_3", id = 52, x = false, y = false, w = false, h = false, r = false, a = true},
	{name = "Barline Position & Transparence", 				category = "custom_4", id = 53, x = false, y = true, w = false, h = false, r = false, a = true},
	{name = "Hidden Cover Position & Height", 				category = "custom_5", id = 54, x = false, y = true, w = false, h = true, r = false, a = false},

	{name = "Judge Position & Transparence", 				category = "custom_6", id = 60, x = true, y = true, w = false, h = false, r = false, a = true},
	{name = "Judge Num Position & Transparence", 			category = "custom_7", id = 61, x = true, y = true, w = false, h = false, r = false, a = true},
	{name = "F/S Position & Transparence", 					category = "custom_8", id = 62, x = true, y = true, w = false, h = false, r = false, a = true},
	{name = "Target Position & Transparence", 				category = "custom_9", id = 63, x = true, y = true, w = false, h = false, r = false, a = true},
	{name = "Target2 Position & Transparence", 				category = "custom_10", id = 64, x = true, y = true, w = false, h = false, r = false, a = true},
	{name = "Score Rate Position & Transparence", 			category = "custom_11", id = 65, x = true, y = true, w = false, h = false, r = false, a = true},
	{name = "Timing Visualizer Position & Transparence", 	category = "custom_12", id = 66, x = true, y = true, w = true, h = true, r = false, a = true},
	{name = "F/S Count Position & Transparence", 			category = "custom_13", id = 67, x = true, y = true, w = false, h = false, r = false, a = true},

	{name = "Judgeline & Keybeam Y-Position", 				category = "custom_14", id = 70, x = false, y = true, w = false, h = false, r = false, a = false},
	{name = "Judgeline Height", 							category = "custom_15", id = 71, x = false, y = false, w = false, h = true, r = false, a = false},
	{name = "Bomb Position & Transparance", 				category = "custom_16", id = 72, x = false, y = true, w = false, h = false, r = false, a = true},
	{name = "Gauge Position", 								category = "custom_17", id = 73, x = true, y = true, w = true, h = true, r = false, a = false},
	{name = "Gauge Transparance", 							category = "custom_18", id = 74, x = false, y = false, w = false, h = false, r = false, a = true}

}

local header = {
	type = 1,
	name = "Rm-skin_for5key",
	w = 1920,
	h = 1080,
	loadend = 3000,
	playstart = 1000,
	scene = 3600000,
	input = 0,
	close = 1500,
	fadeout = 500,
	property = property,
	filepath = filepath,
	offset = offset,
	category = category
}

local function main()

	local skin = {}
	for k, v in pairs(header) do
		skin[k] = v
	end

	local c_play_pos = f_play_pos()
	local c_score_pos = f_score_pos()
	local c_info_pos = f_info_pos()
	local c_between_width = f_between_width()
	local c_graph_blue_pos = f_graph_blue_pos()
	local c_graph_red_pos = f_graph_red_pos()
	local c_center_pos = f_center_pos()

	local notesInfo = {
		height = 40,
		Ot_width = 94,
		Sc_width = 144
	}

	local geometry = {}
	geometry.play_position = c_play_pos
	geometry.score_position = c_score_pos
	geometry.info_position = c_info_pos
	geometry.lane_x = c_between_width
	geometry.lane_y = 0
	geometry.lane_w = notesInfo.Ot_width * 7 + notesInfo.Sc_width
	geometry.lane_h = 1080
	geometry.lane_center = c_center_pos
	geometry.judge_y = 680
	geometry.bga_x = 68
	geometry.bga_y = 480
	geometry.bga_w = 480
	geometry.bga_h = 480
	geometry.graph_blue = c_graph_blue_pos
	geometry.graph_red = c_graph_red_pos

	skin.source = {
		-- ## common ##
		{id = "bg_src", 			path = "parts/bg/*.png"},
		{id = "alt_image_src", 		path = "!common/!_alt_image.png"},

		-- ## info ##
		{id = "info_system_src", 	path = "!common/!_info_system.png"},

		-- ## score ##
		{id = "score_system_src", 	path = "!common/!_score_system.png"},
		{id = "mascot_src", 		path = "parts/!mascot/*.png"},

		-- ## play ##
		{id = "play_system_src", 	path = "!common/!_play_system.png"},

		-- note
		{id = "notes_wh_src", 	path = "parts/notes/white/*.png"},
		{id = "notes_bl_src", 	path = "parts/notes/blue/*.png"},
		{id = "notes_ye_src", 	path = "parts/notes/yellow/*.png"},
		{id = "notes_sc_src", 	path = "parts/notes/scratch/*.png"},

		-- lnend	
		{id = "lnEn_wh_src", 	path = "parts/notes/white_lnEn/*.png"},
		{id = "lnEn_bl_src", 	path = "parts/notes/blue_lnEn/*.png"},
		{id = "lnEn_ye_src", 	path = "parts/notes/yellow_lnEn/*.png"},
		{id = "lnEn_sc_src", 	path = "parts/notes/scratch_lnEn/*.png"},

		-- lnstart	
		{id = "lnSt_wh_src", 	path = "parts/notes/white_lnSt/*.png"},
		{id = "lnSt_bl_src", 	path = "parts/notes/blue_lnSt/*.png"},
		{id = "lnSt_ye_src", 	path = "parts/notes/yellow_lnSt/*.png"},
		{id = "lnSt_sc_src", 	path = "parts/notes/scratch_lnSt/*.png"},

		-- lnbody	
		{id = "lnBo_wh_src", 	path = "parts/notes/white_lnBo/*.png"},
		{id = "lnBo_bl_src", 	path = "parts/notes/blue_lnBo/*.png"},
		{id = "lnBo_ye_src", 	path = "parts/notes/yellow_lnBo/*.png"},
		{id = "lnBo_sc_src", 	path = "parts/notes/scratch_lnBo/*.png"},

		-- lnactive
		{id = "lnAc_wh_src", 	path = "parts/notes/white_lnBo/*.png"},
		{id = "lnAc_bl_src", 	path = "parts/notes/blue_lnBo/*.png"},
		{id = "lnAc_ye_src", 	path = "parts/notes/yellow_lnBo/*.png"},
		{id = "lnAc_sc_src", 	path = "parts/notes/scratch_lnBo/*.png"},

		-- hcnend	
		{id = "hcEn_wh_src", 	path = "parts/notes/white_lnEn/*.png"},
		{id = "hcEn_bl_src", 	path = "parts/notes/blue_lnEn/*.png"},
		{id = "hcEn_ye_src", 	path = "parts/notes/yellow_lnEn/*.png"},
		{id = "hcEn_sc_src", 	path = "parts/notes/scratch_lnEn/*.png"},

		-- hcnstart	
		{id = "hcSt_wh_src", 	path = "parts/notes/white_lnSt/*.png"},
		{id = "hcSt_bl_src", 	path = "parts/notes/blue_lnSt/*.png"},
		{id = "hcSt_ye_src", 	path = "parts/notes/yellow_lnSt/*.png"},
		{id = "hcSt_sc_src", 	path = "parts/notes/scratch_lnSt/*.png"},

		-- hcnbody	
		{id = "hcBo_wh_src", 	path = "parts/notes/white_lnBo/*.png"},
		{id = "hcBo_bl_src", 	path = "parts/notes/blue_lnBo/*.png"},
		{id = "hcBo_ye_src", 	path = "parts/notes/yellow_lnBo/*.png"},
		{id = "hcBo_sc_src", 	path = "parts/notes/scratch_lnBo/*.png"},

		-- hcnactive
		{id = "hcAc_wh_src", 	path = "parts/notes/white_lnBo/*.png"},
		{id = "hcAc_bl_src", 	path = "parts/notes/blue_lnBo/*.png"},
		{id = "hcAc_ye_src", 	path = "parts/notes/yellow_lnBo/*.png"},
		{id = "hcAc_sc_src", 	path = "parts/notes/scratch_lnBo/*.png"},

		-- hcndamage
		{id = "hcBo_wh_src", 	path = "parts/notes/white_lnBo/*.png"},
		{id = "hcBo_bl_src", 	path = "parts/notes/blue_lnBo/*.png"},
		{id = "hcBo_ye_src", 	path = "parts/notes/yellow_lnBo/*.png"},
		{id = "hcBo_sc_src", 	path = "parts/notes/scratch_lnBo/*.png"},

		-- mine
		{id = "mine_wh_src", 	path = "parts/notes/white_mine/*.png"},
		{id = "mine_bl_src", 	path = "parts/notes/blue_mine/*.png"},
		{id = "mine_ye_src", 	path = "parts/notes/yellow_mine/*.png"},
		{id = "mine_sc_src", 	path = "parts/notes/scratch_mine/*.png"},

		{id = "keybeam_wh_src", path = "parts/keybeam/white/*.png"},
		{id = "keybeam_bl_src", path = "parts/keybeam/blue/*.png"},
		{id = "keybeam_ye_src", path = "parts/keybeam/yellow/*.png"},
		{id = "keybeam_sc_src", path = "parts/keybeam/scratch/*.png"},

		{id = "judge_pg_src", 	path = "parts/judge/pg/*.png"},
		{id = "judge_gr_src", 	path = "parts/judge/gr/*.png"},
		{id = "judge_gd_src", 	path = "parts/judge/gd/*.png"},
		{id = "judge_bd_src", 	path = "parts/judge/bd/*.png"},
		{id = "judge_pr_src", 	path = "parts/judge/pr/*.png"},
		{id = "judge_ms_src", 	path = "parts/judge/ms/*.png"},

		{id = "judgenum_src", 	path = "parts/judgenum/*.png"},
		{id = "bomb_src", 		path = "parts/!bomb/*.png"},
		{id = "lanecover_src", 	path = "parts/lanecover/*.png"},
		{id = "fast_slow_src", 	path = "parts/fast_slow/*.png"},

		{id = "judgeline_src", 	path = "parts/colors/judgeline/*.png"},

		{id = "gaugeHazard_src", 	path = "parts/colors/hazard/*.png"},
		{id = "gaugeExHard_src", 	path = "parts/colors/exhard/*.png"},
		{id = "gaugeHard_src", 		path = "parts/colors/hard/*.png"},
		{id = "gaugeNormal_src", 	path = "parts/colors/normal/*.png"},
		{id = "gaugeEasy_src", 		path = "parts/colors/easy/*.png"},
		{id = "gaugeAsEasy_src", 	path = "parts/colors/aseasy/*.png"}

	}

	skin.font = {
		{id = 0, path = "font/RictyDiminished-Regular.ttf"},
		{id = 1, path = "font/RictyDiminished-Bold.ttf"},
	}

	skin.image = {
		-- ## common image ##
		{id = "bg", 			src = "bg_src", x = 0, y = 0, w = -1, h = -1},
		{id = "alt-bga-1", 		src = "alt_image_src", x = 0, y = 0, w = 480, h = 480},
		{id = "alt-bga-2", 		src = "alt_image_src", x = 0, y = 481, w = 480, h = 480},

		{id = "head-line", 		src = "play_system_src", x = 15, y = 4, w = 250, h = 3},
		{id = "load-titleline", src = "play_system_src", x = 15, y = 0, w = 1450, h = 3},
		{id = "alt-stagefile", 	src = "alt_image_src", x = 0, y = 962, w = 320, h = 240},

		-- ## infomation image ##
		{id = "bf-info-frame", src = "info_system_src", x = 0, y = 0, w = 616, h = 480},
		{id = "af-info-frame", src = "info_system_src", x = 0, y = 481, w = 616, h = 480},
		{id = "info-rate-DnP", src = "info_system_src", x = 617, y = 481, w = 74, h = 21},

		-- ## score image ##
		{id = "score-frame", 	src = "score_system_src", x = 0, y = 0, w = 372, h = 1080},
		{id = "op-time-colon", 	src = "score_system_src", x = 373, y = 994, w = 68, h = 21},
		{id = "score-rate-DnP", src = "score_system_src", x = 373, y = 1016, w = 76, h = 22},

		{id = "graph-aaa", 	src = "score_system_src", x = 373, y = 1039, w = 316, h = 13},
		{id = "graph-aa", 	src = "score_system_src", x = 373, y = 1053, w = 316, h = 13},
		{id = "graph-a", 	src = "score_system_src", x = 373, y = 1067, w = 316, h = 13},

		{id = "mascot", 	src = "mascot_src", x = 0, y = 0, w = -1, h = -1},

		-- ## play image ##
		{id = "lane-frame", src = "play_system_src", x = 0, y = 0, w = 10, h = 10},

		{id = "fast", 	src = "fast_slow_src", x = 0, y = 0, w = 160, h = 42},
		{id = "slow", 	src = "fast_slow_src", x = 0, y = 43, w = 160, h = 42},

		{id = "play-rate-dot", src = "judgenum_src", x = 364, y = 91, w = 12, h = 45},

		{id = "remain-rate-dot", 	src = "play_system_src", x = 342, y = 290, w = 9, h = 18},
		{id = "song-time-colon", 	src = "play_system_src", x = 0, y = 290, w = 9, h = 18},
		{id = "song-progress-bar",	src = "play_system_src", x = 10, y = 0, w = 4, h = 10},

		{id = "judge-pg", src = "judge_pg_src", x = 0, y = 0, w = 600, h = 200},
		{id = "judge-gr", src = "judge_gr_src", x = 0, y = 0, w = 600, h = 200},
		{id = "judge-gd", src = "judge_gd_src", x = 0, y = 0, w = 600, h = 200},
		{id = "judge-bd", src = "judge_bd_src", x = 0, y = 0, w = 600, h = 200},
		{id = "judge-pr", src = "judge_pr_src", x = 0, y = 0, w = 600, h = 200},
		{id = "judge-ms", src = "judge_ms_src", x = 0, y = 0, w = 600, h = 200},

		{id = "judgeline", src = "judgeline_src", x = 0, y = 0, w = 10, h = 10},

		-- note
		{id = "note-Wh", src = "notes_wh_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "note-Bl", src = "notes_bl_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "note-Ye", src = "notes_ye_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "note-Sc", src = "notes_sc_src", x = 0, y = 0, w = notesInfo.Sc_width, h = notesInfo.height},

		-- lnend
		{id = "lnEn-Wh", src = "lnEn_wh_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "lnEn-Bl", src = "lnEn_bl_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "lnEn-Ye", src = "lnEn_ye_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "lnEn-Sc", src = "lnEn_sc_src", x = 0, y = 0, w = notesInfo.Sc_width, h = notesInfo.height},

		-- lnstart
		{id = "lnSt-Wh", src = "lnSt_wh_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "lnSt-Bl", src = "lnSt_bl_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "lnSt-Ye", src = "lnSt_ye_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "lnSt-Sc", src = "lnSt_sc_src", x = 0, y = 0, w = notesInfo.Sc_width, h = notesInfo.height},

		-- lnbody
		{id = "lnBo-Wh", src = "lnBo_wh_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "lnBo-Bl", src = "lnBo_bl_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "lnBo-Ye", src = "lnBo_ye_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "lnBo-Sc", src = "lnBo_sc_src", x = 0, y = 0, w = notesInfo.Sc_width, h = notesInfo.height},

		-- lnactive
		{id = "lnAc-Wh", src = "lnAc_wh_src", x = 0, y = notesInfo.height, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "lnAc-Bl", src = "lnAc_bl_src", x = 0, y = notesInfo.height, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "lnAc-Ye", src = "lnAc_ye_src", x = 0, y = notesInfo.height, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "lnAc-Sc", src = "lnAc_sc_src", x = 0, y = notesInfo.height, w = notesInfo.Sc_width, h = notesInfo.height},

		-- hcnend
		{id = "hcEn-Wh", src = "hcEn_wh_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcEn-Bl", src = "hcEn_bl_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcEn-Ye", src = "hcEn_ye_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcEn-Sc", src = "hcEn_sc_src", x = 0, y = 0, w = notesInfo.Sc_width, h = notesInfo.height},

		-- hcnstart
		{id = "hcSt-Wh", src = "hcSt_wh_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcSt-Bl", src = "hcSt_bl_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcSt-Ye", src = "hcSt_ye_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcSt-Sc", src = "hcSt_sc_src", x = 0, y = 0, w = notesInfo.Sc_width, h = notesInfo.height},

		-- hcnbody
		{id = "hcBo-Wh", src = "hcBo_wh_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcBo-Bl", src = "hcBo_bl_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcBo-Ye", src = "hcBo_ye_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcBo-Sc", src = "hcBo_sc_src", x = 0, y = 0, w = notesInfo.Sc_width, h = notesInfo.height},

		-- hcnactive
		{id = "hcAc-Wh", src = "hcAc_wh_src", x = 0, y = notesInfo.height, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcAc-Bl", src = "hcAc_bl_src", x = 0, y = notesInfo.height, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcAc-Ye", src = "hcAc_ye_src", x = 0, y = notesInfo.height, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcAc-Sc", src = "hcAc_sc_src", x = 0, y = notesInfo.height, w = notesInfo.Sc_width, h = notesInfo.height},

		-- hcndamage
		{id = "hcDm-Wh", src = "hcBo_wh_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcDm-Bl", src = "hcBo_bl_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcDm-Ye", src = "hcBo_ye_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcDm-Sc", src = "hcBo_sc_src", x = 0, y = 0, w = notesInfo.Sc_width, h = notesInfo.height},

		-- hcnreactive
		{id = "hcRe-Wh", src = "hcAc_wh_src", x = 0, y = notesInfo.height, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcRe-Bl", src = "hcAc_bl_src", x = 0, y = notesInfo.height, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcRe-Ye", src = "hcAc_ye_src", x = 0, y = notesInfo.height, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcRe-Sc", src = "hcAc_sc_src", x = 0, y = notesInfo.height, w = notesInfo.Sc_width, h = notesInfo.height},

		-- mine
		{id = "mine-Wh", src = "mine_wh_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "mine-Bl", src = "mine_bl_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "mine-Ye", src = "mine_ye_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "mine-Sc", src = "mine_sc_src", x = 0, y = 0, w = notesInfo.Sc_width, h = notesInfo.height},

		{id = "section-line", src = "play_system_src", x = 0, y = 0, w = 1, h = 1},

		{id = "keybeam-w", src = "keybeam_wh_src", x = 0, y = 0, w = notesInfo.Ot_width, h = geometry.lane_h},
		{id = "keybeam-b", src = "keybeam_bl_src", x = 0, y = 0, w = notesInfo.Ot_width, h = geometry.lane_h},
		{id = "keybeam-y", src = "keybeam_ye_src", x = 0, y = 0, w = notesInfo.Ot_width, h = geometry.lane_h},
		{id = "keybeam-s", src = "keybeam_sc_src", x = 0, y = 0, w = notesInfo.Sc_width, h = geometry.lane_h},

		{id = "fs-opg-frame", src = "play_system_src", x = 0, y = 353, w = 600, h = 21},

		{id = "gauge-w1", src = "gaugeHazard_src", x = 0, y = 0, w = 10, h = 10},
		{id = "gauge-w2", src = "gaugeHazard_src", x = 10, y = 0, w = 10, h = 10},
		{id = "gauge-w3", src = "gaugeHazard_src", x = 0, y = 0, w = 10, h = 10},

		{id = "gauge-y1", src = "gaugeExHard_src", x = 0, y = 0, w = 10, h = 10},
		{id = "gauge-y2", src = "gaugeExHard_src", x = 10, y = 0, w = 10, h = 10},
		{id = "gauge-y3", src = "gaugeExHard_src", x = 0, y = 0, w = 10, h = 10},

		{id = "gauge-r1", src = "gaugeHard_src", x = 0, y = 0, w = 10, h = 10},
		{id = "gauge-r2", src = "gaugeHard_src", x = 10, y = 0, w = 10, h = 10},
		{id = "gauge-r3", src = "gaugeHard_src", x = 0, y = 0, w = 10, h = 10},

		{id = "gauge-b1", src = "gaugeNormal_src", x = 0, y = 0, w = 10, h = 10},
		{id = "gauge-b2", src = "gaugeNormal_src", x = 10, y = 0, w = 10, h = 10},
		{id = "gauge-b3", src = "gaugeNormal_src", x = 0, y = 0, w = 10, h = 10},

		{id = "gauge-g1", src = "gaugeEasy_src", x = 0, y = 0, w = 10, h = 10},
		{id = "gauge-g2", src = "gaugeEasy_src", x = 10, y = 0, w = 10, h = 10},
		{id = "gauge-g3", src = "gaugeEasy_src", x = 0, y = 0, w = 10, h = 10},

		{id = "gauge-p1", src = "gaugeAsEasy_src", x = 0, y = 0, w = 10, h = 10},
		{id = "gauge-p2", src = "gaugeAsEasy_src", x = 10, y = 0, w = 10, h = 10},
		{id = "gauge-p3", src = "gaugeAsEasy_src", x = 0, y = 0, w = 10, h = 10},

		{id = "hiddencover", src = "play_system_src", x = 652, y = 4, w = 10, h = 1000},

		{id = "eof", src = "play_system_src", x = 0, y = 39, w = 120, h = 42},
		{id = "replay", src = "play_system_src", x = 15, y = 8, w = 171, h = 30},
		{id = "autoplay", src = "play_system_src", x = 187, y = 8, w = 240, h = 30},

		{id = "fc-effect", src = "play_system_src", x = 663, y = 4, w = 802, h = 1080},
		{id = "fullcombo", src = "play_system_src", x = 0, y = 82, w = 360, h = 36}

	}
	skin.imageset = {}
	skin.value = {

		-- ## infomation value ##
		{id = "pf-num", src = "info_system_src", x = 617, y = 0, w = 200, h = 21, divx = 10, digit = 5, ref = 110, align = 0},
		{id = "gr-num", src = "info_system_src", x = 617, y = 0, w = 200, h = 21, divx = 10, digit = 5, ref = 111, align = 0},
		{id = "gd-num", src = "info_system_src", x = 617, y = 0, w = 200, h = 21, divx = 10, digit = 5, ref = 112, align = 0},
		{id = "bd-num", src = "info_system_src", x = 617, y = 0, w = 200, h = 21, divx = 10, digit = 5, ref = 113, align = 0},
		{id = "pr-num", src = "info_system_src", x = 617, y = 0, w = 200, h = 21, divx = 10, digit = 5, ref = 114, align = 0},
		{id = "ms-num", src = "info_system_src", x = 617, y = 0, w = 200, h = 21, divx = 10, digit = 5, ref = 420, align = 0},
		{id = "fl-num", src = "info_system_src", x = 617, y = 0, w = 200, h = 21, divx = 10, digit = 5, ref = 427, align = 0},

		{id = "total-num", src = "info_system_src", x = 617, y = 0, w = 200, h = 21, divx = 10, digit = 4, ref = 368, align = 0},

		{id = "m-combo", src = "info_system_src", x = 617, y = 0, w = 200, h = 21, divx = 10, digit = 4, ref = 105, align = 0},
		{id = "t-notes", src = "info_system_src", x = 617, y = 0, w = 200, h = 21, divx = 10, digit = 4, ref = 74, align = 0},

		{id = "fs-num", src = "info_system_src", x = 617, y = 44, w = 200, h = 21, divx = 10, digit = 4, ref = 423, align = 0},
		{id = "sl-num", src = "info_system_src", x = 617, y = 66, w = 200, h = 21, divx = 10, digit = 4, ref = 424, align = 0},
		{id = "br-num", src = "info_system_src", x = 617, y = 0, w = 200, h = 21, divx = 10, digit = 4, ref = 425, align = 0},

		{id = "info-rate-num", src = "info_system_src", x = 617, y = 0, w = 200, h = 21, divx = 10, digit = 3, align = 0, value = function()
			return display_number(102)
		end},
		{id = "info-rate-adot-num", src = "info_system_src", x = 617, y = 0, w = 220, h = 21, divx = 11, digit = 2, align = 0, value = function()
			return display_number(103)
		end},

		{id = "green-num", 			src = "info_system_src", x = 617, y = 22, w = 200, h = 21, divx = 10, digit = 4, ref = 313, align = 0},
		{id = "judgetiming-num", 	src = "info_system_src", x = 617, y = 88, w = 180, h = 34, divx = 12, divy = 2, digit = 3, ref = 12, align = 1},

		{id = "gauge-num", 			src = "info_system_src", x = 617, y = 339, w = 300, h = 31, divx = 10, digit = 3, ref = 107, align = 0},
		{id = "gauge-adot-num", 	src = "info_system_src", x = 617, y = 339, w = 300, h = 31, divx = 10, digit = 1, ref = 407, align = 0},

		{id = "bpm-now", src = "info_system_src", x = 617, y = 408, w = 720, h = 72, divx = 10, digit = 3, ref = 160, align = 0},
		{id = "bpm-max", src = "info_system_src", x = 617, y = 371, w = 360, h = 36, divx = 10, digit = 3, ref = 90, align = 0},
		{id = "bpm-min", src = "info_system_src", x = 617, y = 371, w = 360, h = 36, divx = 10, digit = 3, ref = 91, align = 0},

		-- ## score value ##
		{id = "op-time-hour-num", 	src = "score_system_src", x = 373, y = 0, w = 220, h = 21, divx = 11, digit = 2, ref = 27, align = 1},
		{id = "op-time-minute-num", src = "score_system_src", x = 373, y = 0, w = 220, h = 21, divx = 11, digit = 2, ref = 28, align = 1},
		{id = "op-time-second-num", src = "score_system_src", x = 373, y = 0, w = 220, h = 21, divx = 11, digit = 2, ref = 29, align = 1},

		{id = "fps-num-left", 	src = "score_system_src", x = 373, y =22, w = 200, h = 21, divx = 10, digit = 4, ref = 20, align = 1},
		{id = "fps-num-right", 	src = "score_system_src", x = 373, y =22, w = 200, h = 21, divx = 10, digit = 4, ref = 20, align = 0},

		{id = "score-rate-num", 		src = "score_system_src", x = 373, y = 87, w = 200, h = 24, divx = 10, digit = 3, align = 0, value = function()
			return display_number(102)
		end},
		{id = "score-rate-adot-num", 	src = "score_system_src", x = 373, y = 87, w = 220, h = 24, divx = 11, digit = 2, align = 0, value = function()
			return display_number(103)
		end},

		{id = "score-score", 			src = "score_system_src", x = 373, y = 0, w = 200, h = 21, divx = 10, digit = 5, align = 0, value = function()
			return display_number(101)
		end},
		{id = "score-diff-best", 	src = "score_system_src", x = 373, y = 44, w = 240, h = 42, divx = 12, divy = 2, digit = 6, ref = 152, align = 0},
		{id = "score-diff-target", 	src = "score_system_src", x = 373, y = 44, w = 240, h = 42, divx = 12, divy = 2, digit = 6, ref = 153, align = 0},

		-- ## play value ##
		{id = "diff-best", 		src = "play_system_src", x = 0, y = 204, w = 480, h = 84, divx = 12, divy = 2, digit = 5, ref = 152, align = 2},
		{id = "diff-target",	src = "play_system_src", x = 0, y = 204, w = 480, h = 84, divx = 12, divy = 2, digit = 5, ref = 153, align = 2},

		{id = "fsms-num", 		src = "play_system_src", x = 0, y = 119, w = 480, h = 84, divx = 12, divy = 2, digit = 4, ref = 525, align = 2},

		{id = "play-rate-num", 			src = "judgenum_src", x = 0, y = 91, w = 330, h = 45, divx = 10, digit = 3, align = 0, value = function()
				return display_number(102)
		end},
		{id = "play-rate-adot-num", 	src = "judgenum_src", x = 0, y = 91, w = 363, h = 45, divx = 11, digit = 2, align = 0, value = function()
				return display_number(103)
		end},

		{id = "remain-rate-num", 		src = "play_system_src", x = 10, y = 290, w = 165, h = 18, divx = 11, digit = 3, align = 0, value = function()
			return remain_notes_rate() * 100 - 100
		end},
		{id = "remain-rate-adot-num", 	src = "play_system_src", x = 176, y = 290, w = 165, h = 18, divx = 11, digit = 2, align = 0, value = function()
			return remain_notes_rate() * 10000 - 10000
		end},
		{id = "remain-notes", 			src = "play_system_src", x = 10, y = 290, w = 165, h = 18, divx = 11, digit = 5, align = 0, value = function()
			return remain_notes()
		end},

		{id = "song-left-m", src = "play_system_src", x = 10, y = 290, w = 165, h = 18, divx = 11, digit = 2, ref = 163, align = 0},
		{id = "song-left-s", src = "play_system_src", x = 176, y = 290, w = 165, h = 18, divx = 11, digit = 2, ref = 164, align = 0},

		{id = "lanecover-value", src = "play_system_src", x = 0, y = 309, w = 200, h = 21, divx = 10, digit = 4, ref = 14, align = 0},
		{id = "lanecover-green", src = "play_system_src", x = 0, y = 331, w = 200, h = 21, divx = 10, digit = 4, ref = 313, align = 0},
		{id = "lanecover-duration", src = "play_system_src", x = 0, y = 309, w = 200, h = 21, divx = 10, digit = 4, ref = 312, align = 0},
		{id = "lift-value", src = "play_system_src", x = 0, y = 309, w = 200, h = 21, divx = 10, digit = 4, ref = 314, align = 0},

		{id = "judge-num-pg", src = "judgenum_src", x = 0, y = 0, w = 660, h = 90, divx = 10, digit = 6, ref = 75, align = 1},
		{id = "judge-num-gr", src = "judgenum_src", x = 0, y = 0, w = 660, h = 90, divx = 10, digit = 6, ref = 75, align = 1},
		{id = "judge-num-gd", src = "judgenum_src", x = 0, y = 0, w = 660, h = 90, divx = 10, digit = 6, ref = 75, align = 1},
		{id = "judge-num-bd", src = "judgenum_src", x = 0, y = 0, w = 660, h = 90, divx = 10, digit = 6, ref = 75, align = 1},
		{id = "judge-num-pr", src = "judgenum_src", x = 0, y = 0, w = 660, h = 90, divx = 10, digit = 6, ref = 75, align = 1},
		{id = "judge-num-ms", src = "judgenum_src", x = 0, y = 0, w = 660, h = 90, divx = 10, digit = 6, ref = 75, align = 1},

		{id = "fs-opg-num", src = "play_system_src", x = 201, y = 309, w = 200, h = 21, divx = 10, digit = 4, ref = 423, align = 1},
		{id = "sl-opg-num", src = "play_system_src", x = 201, y = 331, w = 200, h = 21, divx = 10, digit = 4, ref = 424, align = 0}

	}
	skin.text = {
		{id = "tablename-left", font = 0, size = 26, ref = 1003, overflow = 1, align = 0},
		{id = "tablename-right", font = 0, size = 26, ref = 1003, overflow = 1, align = 2},
		{id = "title-left", font = 1, size = 42, ref = 12, overflow = 1, align = 0},
		{id = "title-right", font = 1, size = 42, ref = 12, overflow = 1, align = 2},
		{id = "load-genre", font = 0, size = 27, ref = 13, overflow = 1},
		{id = "load-title", font = 1, size = 73, ref = 12, overflow = 1},
		{id = "load-artist", font = 0, size = 41, ref = 16, overflow = 1}

	}
	skin.slider = {
		-- play slider
		{id = "song-progress", src = "play_system_src", x = 0, y = 11, w = 12, h = 21, angle = 2, range = 600, type = 6},
		{id = "lanecover", src = "lanecover_src", x = 0, y = 0, w = -1, h = -1, angle = 2, range = geometry.lane_h, type = 4}

	}
	skin.graph = {
		-- score graph
		{id = "graph-now", src = "score_system_src", x = 699, y = 0, w = 10, h = 800, angle = 1, type = 110},
		{id = "graph-final", src = "score_system_src", x = 732, y = 0, w = 10, h = 800, angle = 1, type = 111},
		{id = "graph-best-now", src = "score_system_src", x = 710, y = 0, w = 10, h = 800, angle = 1, type = 112},
		{id = "graph-best-final", src = "score_system_src", x = 732, y = 0, w = 10, h = 800, angle = 1, type = 113},
		{id = "graph-target-now", src = "score_system_src", x = 721, y = 0, w = 10, h = 800, angle = 1, type = 114},
		{id = "graph-target-final", src = "score_system_src", x = 732, y = 0, w = 10, h = 800, angle = 1, type = 115},

		-- play graph
		{id = "load-progress", src = "play_system_src", x = 15, y = 0, w = 1450, h = 3, angle = 0, type = 102},
		{id = "song-progress-fin", src = "play_system_src", x = 10, y = 0, w = 4, h = 10, angle = 1, type = 101}

	}
	skin.note = {
		id = "notes",
		note = {"note-Wh", "note-Bl", "note-Ye", "note-Bl", "note-Wh", "note-Sc"},
		lnend = {"lnEn-Wh", "lnEn-Bl", "lnEn-Ye", "lnEn-Bl", "lnEn-Wh", "lnEn-Sc"},
		lnstart = {"lnSt-Wh", "lnSt-Bl", "lnSt-Ye", "lnSt-Bl", "lnSt-Wh", "lnSt-Sc"},
		lnbody = {"lnBo-Wh", "lnBo-Bl", "lnBo-Ye", "lnBo-Bl", "lnBo-Wh", "lnBo-Sc"},
		lnactive = {"lnAc-Wh", "lnAc-Bl", "lnAc-Ye", "lnAc-Bl", "lnAc-Wh", "lnAc-Sc"},
		hcnend = {"hcEn-Wh", "hcEn-Bl", "hcEn-Ye", "hcEn-Bl", "hcEn-Wh", "hcEn-Sc"},
		hcnstart = {"hcSt-Wh", "hcSt-Bl", "hcSt-Ye", "hcSt-Bl", "hcSt-Wh", "hcSt-Sc"},
		hcnbody = {"hcBo-Wh", "hcBo-Bl", "hcBo-Ye", "hcBo-Bl", "hcBo-Wh", "hcBo-Sc"},
		hcnactive = {"hcAc-Wh", "hcAc-Bl", "hcAc-Ye", "hcAc-Bl", "hcAc-Wh", "hcAc-Sc"},
		hcndamage = {"hcDm-Wh", "hcDm-Bl", "hcDm-Ye", "hcDm-Bl", "hcDm-Wh", "hcDm-Sc"},
		hcnreactive = {"hcRe-Wh", "hcRe-Bl", "hcRe-Ye", "hcRe-Bl", "hcRe-Wh", "hcRe-Sc"},
		mine = {"mine-Wh", "mine-Bl", "mine-Ye", "mine-Bl", "mine-Wh", "mine-Sc"},
		hidden = {},
		processed = {},
		group = {
			{id = "section-line", timer = 41, offsets = {3, 53}, dst = {
				{x = geometry.lane_x + geometry.play_position, y = geometry.lane_y, w = geometry.lane_w, h = 5, r = 255, g = 255, b = 255, a = 0, acc = 2}
			}}
		},
		time = {
			{id = "section-line", timer = 41, offsets = {3, 53}, dst = {
				{x = geometry.lane_x + geometry.play_position, y = geometry.lane_y, w = geometry.lane_w, h = 15, r = 100, g = 100, b = 255, a = 0, acc = 2}
			}}
		},
		bpm = {
			{id = "section-line", timer = 41, offsets = {3, 53}, dst = {
				{x = geometry.lane_x + geometry.play_position, y = geometry.lane_y, w = geometry.lane_w, h = 15, r = 100, g = 255, b = 100, a = 0, acc = 2}
			}}
		},
		stop = {
			{id = "section-line", timer = 41, offsets = {3, 53}, dst = {
				{x = geometry.lane_x + geometry.play_position, y = geometry.lane_y, w = geometry.lane_w, h = 15, r = 255, g = 100, b = 100, a = 0, acc = 2}
			}}
		}
	}

		skin.note.dst = {}

		geometry.notes_x = {}
		geometry.notes_w = {}

		geometry.notes_w[6] = notesInfo.Sc_width
		geometry.notes_w[1] = notesInfo.Ot_width

		-- Right Side
		if isScratchRight() and isLaneCenterPosAll() then
			-- 3,4,5,6,7,S
			geometry.notes_x[1] = geometry.lane_x + notesInfo.Ot_width * 2
			geometry.notes_x[6] = geometry.lane_x + geometry.lane_w - geometry.notes_w[6]
			-- 2,3,4,5,6,S
		elseif isScratchRight() and isLaneCenterPosKey() then
			geometry.notes_x[1] = geometry.lane_x + notesInfo.Ot_width
			geometry.notes_x[6] = geometry.lane_x + geometry.lane_w - geometry.notes_w[6]
			-- S,1,2,3,4,5
		elseif isScratchLeft() and isLaneCenterPosAll() then
			geometry.notes_x[6] = geometry.lane_x
			geometry.notes_x[1] = geometry.notes_x[6] + geometry.notes_w[6]
			-- S,2,3,4,5,6
		elseif isScratchLeft() and isLaneCenterPosKey() then
			geometry.notes_x[6] = geometry.lane_x
			geometry.notes_x[1] = geometry.notes_x[6] + geometry.notes_w[6] + notesInfo.Ot_width
		end

		for i = 2, 5 do
			geometry.notes_x[i] = geometry.notes_x[i-1] + notesInfo.Ot_width
			geometry.notes_w[i] = notesInfo.Ot_width
		end

		for i = 1, 6 do
			skin.note.dst[i] = {
				x = geometry.notes_x[i] + geometry.play_position,
				y = geometry.lane_y,
				w = geometry.notes_w[i],
				h = geometry.lane_h}
		end

	skin.gauge = {
		id = "gauge",
		nodes = {
		-- 並び順はoverclear(明),underclear(明),overclear(暗),underclear(暗),先端の色(明),先端の色(暗)
		-- Order: overclear(light),underclear(light),overclear(dark),underclear(dark),tip color(light),tip color(dark)

		-- アシストイージーゲージ 
		-- assist easy gauge
		"gauge-r1","gauge-p1","gauge-r2","gauge-p2","gauge-r3","gauge-p3",
		-- イージーゲージ 
		-- easy gauge
		"gauge-r1","gauge-g1","gauge-r2","gauge-g2","gauge-r3","gauge-g3",
		-- ノーマルゲージ 
		-- normal gauge
		"gauge-r1","gauge-b1","gauge-r2","gauge-b2","gauge-r3","gauge-b3",
		-- ハードゲージ(2,4,6番目はダミー？) 
		-- hard gauge(Are the second, fourth, and sixth dummies?)
		"gauge-r1","gauge-p1","gauge-r2","gauge-p2","gauge-r3","gauge-p3",
		-- EXハードゲージ(2,4,6番目はダミー？) 
		-- ex hard gauge(Are the second, fourth, and sixth dummies?)
		"gauge-y1","gauge-p1","gauge-y2","gauge-p2","gauge-y3","gauge-p3",
		-- ハザードゲージ(2,4,6番目はダミー？) 
		-- hazard gauge(Are the second, fourth, and sixth dummies?)
		"gauge-w1","gauge-w1","gauge-w2","gauge-w2","gauge-w3","gauge-w3"
		}
	}

	skin.judge = {
		{
			id = "judge",
			index = 0,
			images = {
				{id = "judge-pg", loop = -1, timer = 46, offsets = {32, 60, 70}, dst = {
					{time = 0, x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-300), y = geometry.judge_y, w = 600, h = 200, a = 0, acc = 2},
					{time = 2000}
				}},
				{id = "judge-gr", loop = -1, timer = 46, offsets = {32, 60, 70}, dst = {
					{time = 0, x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-300), y = geometry.judge_y, w = 600, h = 200, a = 0, acc = 2},
					{time = 2000}
				}},
				{id = "judge-gd", loop = -1, timer = 46, offsets = {32 ,60, 70}, dst = {
					{time = 0, x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-300), y = geometry.judge_y, w = 600, h = 200, a = 0, acc = 2},
					{time = 2000}
				}},
				{id = "judge-bd", loop = -1, timer = 46, offsets = {32, 60, 70}, dst = {
					{time = 0, x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-300), y = geometry.judge_y, w = 600, h = 200, a = 0, acc = 2},
					{time = 2000}
				}},
				{id = "judge-pr", loop = -1, timer = 46, offsets = {32, 60, 70}, dst = {
					{time = 0, x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-300), y = geometry.judge_y, w = 600, h = 200, a = 0, acc = 2},
					{time = 2000}
				}},
				{id = "judge-ms", loop = -1, timer = 46, offsets = {32, 60, 70}, dst = {
					{time = 0, x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-300), y = geometry.judge_y, w = 600, h = 200, a = 0, acc = 2},
					{time = 2000}
				}}
			},
			-- コンボ数のx,yは判定文字からの相対距離を指定
			-- The value of x and y for the combo number specifies the relative distance from the judgment character.
			numbers = {
				{id = "judge-num-pg", loop = -1, timer = 46, offsets = {32, 61}, dst = {
					{time = 0, x = 300, y = 256, w = 66, h = 90, a = 0, acc = 2},
					{time = 2000}
				}},
				{id = "judge-num-gr", loop = -1, timer = 46, offsets = {32, 61}, dst = {
					{time = 0, x = 300, y = 256, w = 66, h = 90, a = 0, acc = 2},
					{time = 2000}
				}},
				{id = "judge-num-gd", loop = -1, timer = 46, offsets = {32, 61}, dst = {
					{time = 0, x = 300, y = 256, w = 66, h = 90, a = 0, acc = 2},
					{time = 2000}
				}},
				{id = "judge-num-bd", loop = -1, timer = 46, offsets = {32, 61}, dst = {
					{time = 0, x = 300, y = 256, w = 66, h = 90, a = 0, acc = 2},
					{time = 2000}
				}},
				{id = "judge-num-pr", loop = -1, timer = 46, offsets = {32, 61}, dst = {
					{time = 0, x = 300, y = 256, w = 66, h = 90, a = 0, acc = 2},
					{time = 2000}
				}},
				{id = "judge-num-ms", loop = -1, timer = 46, offsets = {32, 61}, dst = {
					{time = 0, x = 300, y = 256, w = 66, h = 90, a = 0, acc = 2},
					{time = 2000}
				}}
			},
			-- judgeとcomboを合わせて一つの定義とするか。二段に分ける場合はfalse
			-- Whether judge and combo together constitute one definition. If dividing into two tiers, false.
			shift = false
		}
	}

	skin.judgegraph = {{id = "notes-graph", noGap = 0, orderReverse = 1, type = 1, backTexOff = 1}}
	skin.bpmgraph = {{id = "bpm-graph"}}
	skin.bga = {id = "bga"}
	skin.destination = {
		{id = "bg", stretch = 1, dst = {
			{x = 0, y = 0, w = 1920, h = 1080}}},
		{id = -110, offset = 50, dst = {
			{x = 0, y = 0, w = 1920, h = 1080, r = 255, g = 255, b = 255, a = 0}}},
		-- BGA関連 
		-- BGA related
		{id = -110, dst = {
			{x = geometry.info_position + geometry.bga_x, y = geometry.bga_y, w = geometry.bga_w, h = geometry.bga_h}}},

		{id = "bga", stretch = 1, dst = {
			{x = geometry.info_position + geometry.bga_x, y = geometry.bga_y, w = geometry.bga_w, h = geometry.bga_h}}},

		{id = -101, loop = 400, op = {80, 195}, filter = 1, stretch = 1, dst = {
			{time = 0, x = geometry.info_position + geometry.bga_x, y = geometry.bga_y, w = geometry.bga_w, h = geometry.bga_h, a = 0},
			{time = 400, a = 255}}},

		{id = "alt-bga-1", stretch = 1, draw = function()
			if main_state.option(40) or main_state.option(170) then
				return true
			end
		end, timer = 41, loop = 400, dst = {
			{time = 0, x = geometry.info_position + geometry.bga_x, y = geometry.bga_y, w = geometry.bga_w, h = geometry.bga_h, a = 0},
			{time = 400, a = 255}
		}},

		{id = "alt-bga-2", stretch = 1, draw = function()
			if main_state.option(40) or main_state.option(170) then
				return true
			end
		end, timer = 41, loop = 400, dst = {
			{time = 0, x = geometry.info_position + geometry.bga_x, y = geometry.bga_y, w = geometry.bga_w, h = geometry.bga_h, angle = 180, a = 0},
			{time = 400, angle = 360, a = 255},
			{time = 4400, angle = 0}
		}},

		{id = -110, timer = 41, offset = 51, dst = {
			{x = geometry.info_position + geometry.bga_x, y = geometry.bga_y, w = geometry.bga_w, h = geometry.bga_h, a = 0}}}
	}

-- ### 曲情報エリア開始 ###
-- ### song infomation area start ###

-- ジャンル名・曲名 
-- genre,title
if isScratchRight() then
	append_all(skin.destination, {
		{id = "tablename-left", timer = 41, filter = 1, dst = {
			{x = geometry.info_position + 8, y = 1034, w = 600, h = 26}
		}},
		{id = "title-left", timer = 41, filter = 1, dst = {
			{x = geometry.info_position + 8, y = 984, w = 600, h = 42}
		}}
	})
else
	append_all(skin.destination, {
		{id = "tablename-right", timer = 41, filter = 1, dst = {
			{x = geometry.info_position + 608, y = 1034, w = 600, h = 26}
		}},
		{id = "title-right", timer = 41, filter = 1, dst = {
			{x = geometry.info_position + 608, y = 984, w = 600, h = 42}
		}}
	})
end

-- 判定情報・曲情報・BPM・ゲージの値など
-- Judge information, song information, BPM, gauge values, etc.
append_all(skin.destination, {
	{id = "bf-info-frame", dst = {
		{x = geometry.info_position, y = 0, w = 616, h = 480}
	}},
	{id = "af-info-frame", timer = 41, dst = {
		{x = geometry.info_position, y = 0, w = 616, h = 480}
	}},
	{id = "info-rate-DnP", timer = 41, dst = {
		{x = geometry.info_position + 525, y = 269, w = 74, h = 21}
	}},
	{id = "pf-num", timer = 41, dst = {
		{x = geometry.info_position + 178, y = 410, w = 20, h = 21},
	}},
	{id = "gr-num", timer = 41, dst = {
		{x = geometry.info_position + 178, y = 387, w = 20, h = 21},
	}},
	{id = "gd-num", timer = 41, dst = {
		{x = geometry.info_position + 178, y = 364, w = 20, h = 21},
	}},
	{id = "bd-num", timer = 41, dst = {
		{x = geometry.info_position + 178, y = 341, w = 20, h = 21},
	}},
	{id = "pr-num", timer = 41, dst = {
		{x = geometry.info_position + 178, y = 318, w = 20, h = 21},
	}},
	{id = "ms-num", timer = 41, dst = {
		{x = geometry.info_position + 178, y = 295, w = 20, h = 21},
	}},
	{id = "fl-num", timer = 41, dst = {
		{x = geometry.info_position + 178, y = 269, w = 20, h = 21},
	}},
	{id = "total-num", dst = {
		{x = geometry.info_position + 519, y = 410, w = 20, h = 21},
	}},
	{id = "m-combo", timer = 41, dst = {
		{x = geometry.info_position + 419, y = 364, w = 20, h = 21},
	}},
	{id = "t-notes", dst = {
		{x = geometry.info_position + 519, y = 364, w = 20, h = 21},
	}},
	{id = "fs-num", timer = 41, dst = {
		{x = geometry.info_position + 519, y = 341, w = 20, h = 21},
	}},
	{id = "sl-num", timer = 41, dst = {
		{x = geometry.info_position + 519, y = 318, w = 20, h = 21},
	}},
	{id = "br-num", timer = 41, dst = {
		{x = geometry.info_position + 519, y = 295, w = 20, h = 21},
	}},
	{id = "info-rate-num", timer = 41, dst = {
		{x = geometry.info_position + 459, y = 269, w = 20, h = 21},
	}},
	{id = "info-rate-adot-num", timer = 41, dst = {
		{x = geometry.info_position + 539, y = 269, w = 20, h = 21},
	}},
	{id = "green-num", dst = {
		{x = geometry.info_position + 86, y = 182, w = 20, h = 21},
	}},
	{id = "judgetiming-num", dst = {
		{x = geometry.info_position + 113, y = 162, w = 15, h = 17},
	}},
	{id = "gauge-num", dst = {
		{x = geometry.info_position + 231, y = 143, w = 30, h = 31},
	}},
	{id = "gauge-adot-num", dst = {
		{x = geometry.info_position + 333, y = 143, w = 30, h = 31},
	}},
	{id = "bpm-now", dst = {
		{x = geometry.info_position + 200, y = 10, w = 72, h = 72},
	}},
	{id = "bpm-min", dst = {
		{x = geometry.info_position + 82, y = 10, w = 36, h = 36},
	}},
	{id = "bpm-max", dst = {
		{x = geometry.info_position + 426, y = 10, w = 36, h = 36}
	}}
})

-- 判定レベル
-- judge level
do
	local id = {"jd-veasy-tx", "jd-easy-tx", "jd-normal-tx", "jd-hard-tx", "jd-vhard-tx"}
	for i in ipairs(id) do
		table.insert(skin.image,
			{id = id[i], src = "info_system_src", x = 1114, y = 21 * (i - 1), w = 170, h = 21})
		table.insert(skin.destination,
			{id = id[i], op = {184 - (i - 1)}, dst = {
				{x = geometry.info_position + 429, y = 387, w = 170, h = 21}
		}})
	end
end

-- ゲージの種類
-- gauge type
do
	local id = {"ga-aeasy-tx", "ga-easy-tx", "ga-nor-tx", "ga-hard-tx", "ga-exh-tx", "ga-haz-tx", "ga-gra", "ga-egra", "ga-ehgra"}
	for i in ipairs(id) do
		table.insert(skin.image,
			{id = id[i], src = "info_system_src", x = 838, y = 19 * (i - 1), w = 128, h = 19}
		)
		table.insert(skin.imageset,
			{id = "gauge-op-tx", value = function() return main_state.gauge_type() end, images = { id[1], id[2], id[3], id[4], id[5], id[6], id[7], id[8], id[9] }
		})
	end
end
table.insert(skin.destination,
	{id = "gauge-op-tx", dst = {
		{x = geometry.info_position + 244, y = 184, w = 128, h = 19}
	}})

-- ランダムの種類
-- random type
do
	local id = {"la-orig-tx", "la-mir-tx", "laran-tx", "la-rran-tx", "la-sran-tx", "la-spir-tx", "la-hran-tx", "la-alls-tx", "la-exran-tx", "la-exs-tx"}
	for i in ipairs(id) do
		table.insert(skin.image,
			{id = id[i], src = "info_system_src", x = 967, y = 19 * (i - 1), w = 146, h = 19}
		)
		table.insert(skin.imageset,
			{id = "lane-op-tx", ref = 42, images = { id[1], id[2], id[3], id[4], id[5], id[6], id[7], id[8], id[9], id[10] }
		})
	end
end
table.insert(skin.destination,
	{id = "lane-op-tx", dst = {
		{x = geometry.info_position + 407, y = 184, w = 146, h = 19}
	}})

-- ### 曲情報エリア終了 ###
-- ### song infomation area end ###

-- ### スコアエリア開始 ###
-- ### score area start ###

-- 操作時間・フレームレート・グラフなど
-- Operation time, frame rate, graphs, etc.
append_all(skin.destination, {
	{id = "score-frame", timer = 41, dst = {
		{x = geometry.score_position, y = 0, w = 372, h = 1080}
	}},
	{id = "score-rate-DnP", timer = 41, dst = {
		{x = geometry.score_position + 91, y = 993, w = 76, h = 22}
	}},
	{id = "score-rate-num", timer = 41, dst = {
		{x = geometry.score_position + 28, y = 992, w = 20, h = 24}
	}},
	{id = "score-rate-adot-num", timer = 41, dst = {
		{x = geometry.score_position + 102, y = 992, w = 20, h = 24}
	}},
	{id = "score-score", timer = 41, dst = {
		{x = geometry.score_position + 244, y = 961, w = 20, h = 21}
	}},
	{id = "score-diff-best", timer = 41, dst = {
		{x = geometry.score_position + 224, y = 935, w = 20, h = 21}
	}},
	{id = "score-diff-target", timer = 41, dst = {
		{x = geometry.score_position + 224, y = 909, w = 20, h = 21}
	}},
	{id = "graph-final", timer = 41, dst = {
		{x = geometry.score_position + geometry.graph_blue, y = 102, w = 80, h = 800}
	}},
	{id = "graph-now", timer = 41, dst = {
		{x = geometry.score_position + geometry.graph_blue, y = 102, w = 80, h = 800}
	}},
	{id = "graph-best-final", timer = 41, dst = {
		{x = geometry.score_position + 168, y = 102, w = 80, h = 800}
	}},
	{id = "graph-best-now", timer = 41, dst = {
		{x = geometry.score_position + 168, y = 102, w = 80, h = 800}
	}},
	{id = "graph-target-final", timer = 41, dst = {
		{x = geometry.score_position + geometry.graph_red, y = 102, w = 80, h = 800}
	}},
	{id = "graph-target-now", timer = 41, dst = {
		{x = geometry.score_position + geometry.graph_red, y = 102, w = 80, h = 800}
	}},
	{id = "graph-aaa", timer = 350, dst = {
		{x = geometry.score_position + 28, y = 813, w = 316, h = 13}
	}},
	{id = "graph-aa", timer = 349, dst = {
		{x = geometry.score_position + 28, y = 725, w = 316, h = 13}
	}},
	{id = "graph-a", timer = 348, dst = {
		{x = geometry.score_position + 28, y = 637, w = 316, h = 13}
	}}
})

if isScratchRight() then
	append_all(skin.destination, {
		{id = "op-time-colon", dst = {
			{x = geometry.score_position + 251, y = 1054, w = 68, h = 21}
		}},
		{id = "op-time-hour-num", dst = {
			{x = geometry.score_position + 205, y = 1054, w = 20, h = 21}
		}},
		{id = "op-time-minute-num", dst = {
			{x = geometry.score_position + 265, y = 1054, w = 20, h = 21}
		}},
		{id = "op-time-second-num", dst = {
			{x = geometry.score_position + 325, y = 1054, w = 20, h = 21}
		}},
		{id = "fps-num-right", dst = {
			{x = geometry.score_position + 285, y = 1031, w = 20, h = 21}
		}}
	})
else
	append_all(skin.destination, {
		{id = "op-time-colon", dst = {
			{x = geometry.score_position + 51, y = 1054, w = 68, h = 21}
		}},
		{id = "op-time-hour-num", dst = {
			{x = geometry.score_position + 5, y = 1054, w = 20, h = 21}
		}},
		{id = "op-time-minute-num", dst = {
			{x = geometry.score_position + 65, y = 1054, w = 20, h = 21}
		}},
		{id = "op-time-second-num", dst = {
			{x = geometry.score_position + 125, y = 1054, w = 20, h = 21}
		}},
		{id = "fps-num-left", dst = {
			{x = geometry.score_position + 5, y = 1031, w = 20, h = 21}
		}}
	})
end

-- score rank
do
	local id = {"rankAAA", "rankAA", "rankA", "rankB", "rankC", "rankD", "rankE", "rankF"}
	for i in ipairs(id) do
		table.insert(skin.image,
			{id = id[i], src = "score_system_src", x = 614, y = 31 * (i - 1), w = 84, h = 31})
		table.insert(skin.destination,
			{id = id[i], op = {200 + (i - 1)}, dst = {
				{x = geometry.score_position + 260, y = 992, w = 84, h = 31}
		}})
	end
end

-- mascot
if isMascotStop() then
	table.insert(skin.destination,
		{id = "mascot", filter = 1, dst = {
			{x = geometry.score_position + 58, y = 102, w = 256, h = 256}
		}})
elseif isMascotJump() then
	table.insert(skin.destination,
		{id = "mascot", filter = 1, loop = 0, dst = {
			{time = 0, x = geometry.score_position + 58, y = 102, w = 256, h = 256, acc = 2},
			{time = 75, h = 250, acc = 1},
			{time = 300, y = 112,	h = 262, acc = 1},
			{time = 450, y = 102, h = 256},
			{time = 500, y = 102, h = 250},
			{time = 600, y = 102, h = 256, acc = 2},
			{time = 5000},
		}})
elseif isMascotFloat() then
	table.insert(skin.destination,
		{id = "mascot", filter = 1, loop = 0, dst = {
			{time = 0, x = geometry.score_position + 58, y = 102, w = 256, h = 256, acc = 2},
			{time = 1000, y = 112},
			{time = 2000, y = 102},
		}})
end

-- notes graph
table.insert(skin.destination,
	{id = "notes-graph", dst = {
		{x = geometry.score_position, y = 0, w = 372, h = 100}
	}})
-- BPM graph
table.insert(skin.destination,
	{id = "bpm-graph", dst = {
		{x = geometry.score_position, y = 0, w = 372, h = 100}
	}})

-- ### プレイエリア開始 ###
-- ### play area start ###

-- レーン背景
-- lane background
append_all(skin.destination, {
	{id = -110, offset = 52, dst = {
		{x = geometry.lane_x + geometry.play_position, y = 0, w = geometry.lane_w, h = 1080, a = 0, acc = 2},
	}},
	-- 演出
	-- effect
	{id = -111, offsets = {3, 70}, loop = 1400, dst = {
		{time = 0, x = geometry.lane_x + geometry.play_position, y = geometry.lane_y, w = geometry.lane_w, h = 2160, a = 0, acc = 2},
		{time = 600, a = 0},
		{time = 650, a = 255},
		{time = 1300, a = 0}
	}}
})

-- 判定ライン
-- judge line
table.insert(skin.destination,
	{id = "judgeline", offsets = {3, 70, 71}, dst = {
		{x = geometry.lane_x + geometry.play_position, y = geometry.lane_y, w = geometry.lane_w, h = 24}
	}})

-- キービーム
-- keybeam
local kb_w = {
	notesInfo.Ot_width,
	notesInfo.Ot_width,
	notesInfo.Ot_width,
	notesInfo.Ot_width,
	notesInfo.Ot_width,
	notesInfo.Sc_width
}
local kb_type = {"w", "b", "y", "b", "w", "s"}
local kb_onTimer = {101, 102, 103, 104, 105, 100}
local kb_offTimer = {121, 122, 123, 124, 125, 120}
local kb_x = {}
local kb_move_x = {
	notesInfo.Ot_width / 2,
	notesInfo.Ot_width / 2,
	notesInfo.Ot_width / 2,
	notesInfo.Ot_width / 2,
	notesInfo.Ot_width / 2,
	notesInfo.Sc_width / 2
}

-- Right Side
if isScratchRight() and isLaneCenterPosAll() then
	-- 3,4,5,6,7,S
	kb_x = {
		notesInfo.Ot_width * 2,
		notesInfo.Ot_width * 3,
		notesInfo.Ot_width * 4,
		notesInfo.Ot_width * 5,
		notesInfo.Ot_width * 6,
		notesInfo.Ot_width * 7
	}
elseif isScratchRight() and isLaneCenterPosKey() then
	-- 2,3,4,5,6,S
	kb_x = {
		notesInfo.Ot_width,
		notesInfo.Ot_width * 2,
		notesInfo.Ot_width * 3,
		notesInfo.Ot_width * 4,
		notesInfo.Ot_width * 5,
		notesInfo.Ot_width * 7
	}
-- Left Side
elseif isScratchLeft() and isLaneCenterPosAll() then
	-- S,1,2,3,4,5 
	kb_x = {
		notesInfo.Sc_width,
		notesInfo.Sc_width + notesInfo.Ot_width,
		notesInfo.Sc_width + notesInfo.Ot_width * 2,
		notesInfo.Sc_width + notesInfo.Ot_width * 3,
		notesInfo.Sc_width + notesInfo.Ot_width * 4,
		0
	}
elseif isScratchLeft() and isLaneCenterPosKey() then
	-- S,2,3,4,5,6
	kb_x = {
		notesInfo.Sc_width + notesInfo.Ot_width,
		notesInfo.Sc_width + notesInfo.Ot_width * 2,
		notesInfo.Sc_width + notesInfo.Ot_width * 3,
		notesInfo.Sc_width + notesInfo.Ot_width * 4,
		notesInfo.Sc_width + notesInfo.Ot_width * 5,
		0
	}
end

if isKeybeamFast() then
	-- キーが押された時
	-- When a key is pressed.
	do
		for i = 1, 6, 1 do
			table.insert(skin.destination,	{
				id = "keybeam-"..kb_type[i], offsets = {3, 70}, timer = kb_onTimer[i], blend = 1, op = {-273} ,dst = {
					{x = geometry.lane_x + geometry.play_position + kb_x[i], y = geometry.lane_y, w = kb_w[i], h = geometry.lane_h, a = 255}
				}
			})
		end
	end
	-- キーが離された時
	-- When a key is released.
	do
		for i = 1, 6, 1 do
			table.insert(skin.destination,	{
				id = "keybeam-"..kb_type[i], offsets = {3, 70}, timer = kb_offTimer[i], loop = -1, blend = 1, op = {-273} ,dst = {
					{time = 0, x = geometry.lane_x + geometry.play_position + kb_x[i], y = geometry.lane_y, w = kb_w[i], h = geometry.lane_h, a = 255},
					{time = 100, x = geometry.lane_x + geometry.play_position + kb_x[i] + kb_move_x[i], w = 0, a = 0}
				}
			})
		end
	end
else
	-- キーが押された時
	-- When a key is pressed.
	do
		for i = 1, 6, 1 do
			table.insert(skin.destination,	{
				id = "keybeam-"..kb_type[i], offsets = {3, 70}, timer = kb_onTimer[i], loop = 33, blend = 1, op = {-273} ,dst = {
					{time = 0, x = geometry.lane_x + geometry.play_position + kb_x[i], y = geometry.lane_y, w = kb_w[i], h = geometry.lane_h, a = 0},
					{time = 33, a = 255}
				}
			})
		end
	end
	-- キーが離された時
	-- When a key is released.
	do
		for i = 1, 6, 1 do
			table.insert(skin.destination,	{
				id = "keybeam-"..kb_type[i], offsets = {3, 70}, timer = kb_offTimer[i], loop = -1, blend = 1, op = {-273} ,dst = {
					{time = 0, x = geometry.lane_x + geometry.play_position + kb_x[i], y = geometry.lane_y, w = kb_w[i], h = geometry.lane_h + 230, a = 200},
					{time = 200, x = geometry.lane_x + geometry.play_position + kb_x[i] + kb_move_x[i], w = 0, a = 0}
				}
			})
		end
	end
end

-- notes
table.insert(skin.destination,{id = "notes", offset = 30})

-- hidden cover
table.insert(skin.destination,
	{id = "hiddencover", offsets = {3, 54, 70}, timer = 41, op = {273}, dst = {
		{x = geometry.lane_x + geometry.play_position, y = geometry.lane_y + 24, w = geometry.lane_w, h = 1000}
	}})

-- Keybeam for hiddencover
if isKeybeamFast() then
	-- キーが押された時
	-- When a key is pressed.
	do
		for i = 1, 6, 1 do
			table.insert(skin.destination,	{
				id = "keybeam-"..kb_type[i], offsets = {3, 70}, timer = kb_onTimer[i], blend = 1, op = {273} ,dst = {
					{x = geometry.lane_x + geometry.play_position + kb_x[i], y = geometry.lane_y, w = kb_w[i], h = geometry.lane_h, a = 255}
				}
			})
		end
	end
	-- キーが離された時
	-- When a key is released.
	do
		for i = 1, 6, 1 do
			table.insert(skin.destination,	{
				id = "keybeam-"..kb_type[i], offsets = {3, 70}, timer = kb_offTimer[i], loop = -1, blend = 1, op = {273} ,dst = {
					{time = 0, x = geometry.lane_x + geometry.play_position + kb_x[i], y = geometry.lane_y, w = kb_w[i], h = geometry.lane_h, a = 255},
					{time = 100, x = geometry.lane_x + geometry.play_position + kb_x[i] + kb_move_x[i], w = 0, a = 0}
				}
			})
		end
	end
else
	-- キーが押された時
	-- When a key is pressed.
	do
		for i = 1, 6, 1 do
			table.insert(skin.destination,	{
				id = "keybeam-"..kb_type[i], offsets = {3, 70}, timer = kb_onTimer[i], loop = 33, blend = 1, op = {273} ,dst = {
					{time = 0, x = geometry.lane_x + geometry.play_position + kb_x[i], y = geometry.lane_y, w = kb_w[i], h = geometry.lane_h, a = 0},
					{time = 33, a = 255}
				}
			})
		end
	end
	-- キーが離された時
	-- When a key is released.
	do
		for i = 1, 6, 1 do
			table.insert(skin.destination,	{
				id = "keybeam-"..kb_type[i], offsets = {3, 70}, timer = kb_offTimer[i], loop = -1, blend = 1, op = {273} ,dst = {
					{time = 0, x = geometry.lane_x + geometry.play_position + kb_x[i], y = geometry.lane_y, w = kb_w[i], h = geometry.lane_h + 230, a = 200},
					{time = 200, x = geometry.lane_x + geometry.play_position + kb_x[i] + kb_move_x[i], w = 0, a = 0}
				}
			})
		end
	end
end

-- lanecover
table.insert(skin.destination,
	{id = "lanecover", loop = 1700, dst = {
		{time = 0, x = geometry.lane_x + geometry.play_position, y = 1500, w = geometry.lane_w, h = geometry.lane_h, acc = 2},
		{time = 1300},
		{time = 1700, y = 1080}
	}})

-- レーンカバーの数値周り
-- values for lane cover
do
	local id = {"lanecover-value", "lanecover-green", "lanecover-duration"}
	local dst_x = {68, 342, 616}
	local dst_w = {20, 20, 20}
	local dst_h = {21, 21, 21}
	for i in ipairs(id) do
		table.insert(skin.destination,
			{id = id[i], offset = 4, op = {270}, dst = {
				{x = dst_x[i] + geometry.lane_x + geometry.play_position, y = 1049, w = dst_w[i], h = dst_h[i]}
		}})
	end
end
table.insert(skin.destination,
	{id = -111, offset = 4, op = {270, 271}, loop = 0, dst = {
		{time = 0, x = geometry.lane_x + geometry.play_position, y = 1080, w = geometry.lane_w, h = 24, a = 255, acc = 2},
		{time = 500, a = 64},
		{time = 1000, a = 255}
	}})

-- リフトの数値周り
-- values for lift
do
	local id = {"lift-value", "lanecover-green", "lanecover-duration"}
	local dst_x = {68, 342, 616}
	local dst_w = {20, 20, 20}
	local dst_h = {21, 21, 21}
	for i in ipairs(id) do
		table.insert(skin.destination,
			{id = id[i], offset = 3, op = {270}, dst = {
				{x = dst_x[i] + geometry.lane_x + geometry.play_position, y = geometry.lane_y + 40, w = dst_w[i], h = dst_h[i]}
		}})
	end
end
table.insert(skin.destination,
	{id = -111, offset = 3, op = {270, 272}, loop = 0, dst = {
		{time = 0, x = geometry.lane_x + geometry.play_position, y = geometry.lane_y, w = geometry.lane_w, h = 24, a = 255, acc = 2},
		{time = 500, a = 64},
		{time = 1000, a = 255}
	}})


-- judge
table.insert(skin.destination,{id = "judge"})

-- fast/slow center
if isFastSlowCenterOn() then
	table.insert(skin.destination,	{
		id = "fast", offsets = {32, 62, 70}, op = {1242}, loop = -1, timer = 46, dst = {
			{time = 0, x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-80), y = geometry.judge_y + (-52), w = 160, h = 42, a = 0, acc = 2},
			{time = 500}
		}
	})
	table.insert(skin.destination,	{
		id = "slow", offsets = {32, 62, 70}, op = {1243}, loop = -1, timer = 46, dst = {
			{time = 0, x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-80), y = geometry.judge_y + (-52), w = 160, h = 42, a = 0, acc = 2},
			{time = 500}
		}
	})
-- fast/slow right and left
elseif isFastSlowRnLOn() then
	table.insert(skin.destination,	{
		id = "fast", offsets = {32, 62, 70}, op = {1242}, loop = -1, timer = 46, dst = {
			{time = 0, x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-300), y = geometry.judge_y + (-52), w = 160, h = 42, a = 0, acc = 2},
			{time = 500}
		}
	})
	table.insert(skin.destination,	{
		id = "slow", offsets = {32, 62, 70}, op = {1243}, loop = -1, timer = 46, dst = {
			{time = 0, x = geometry.lane_x + geometry.play_position + geometry.lane_center + 300 + (-160), y = geometry.judge_y + (-52), w = 160, h = 42, a = 0, acc = 2},
			{time = 500}
		}
	})
-- fast/slow ms
elseif isFastSlowMS() then
	table.insert(skin.destination,	{
		id = "fsms-num", offsets = {32, 62, 70}, op = {-241}, loop = -1, timer = 46, dst = {
			{time = 0, x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-100), y = geometry.judge_y + (-52), w = 40, h = 42, a = 0, acc = 2},
			{time = 500}
		}
	})
end

-- ターゲットとのスコア差
-- Score difference from target.
if isTargetBest() then
	table.insert(skin.destination,	{
		id = "diff-target", offsets = {3, 63, 70}, op = {32}, timer = 41, draw = function()
			if (main_state.float_number(113) == 0) and main_state.option(32)then
				return true
			end
		end, dst = {
			{time = 0, x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-100), y = geometry.lane_y + 330, w = 40, h = 42, a = 0, acc = 2}
		}
	})
	table.insert(skin.destination,	{
		id = "diff-best", offsets = {3, 63, 70}, op = {32}, timer = 41, draw = function()
			if (main_state.float_number(113) ~= 0) and main_state.option(32) then
				return true
			end
		end, dst = {
			{x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-100), y = geometry.lane_y + 330, w = 40, h = 42, a = 0, acc = 2}
		}
	})
elseif isTargetRank() then
	table.insert(skin.destination,	{
		id = "diff-target", offsets = {3, 63, 70}, op = {32}, timer = 41, dst = {
			{x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-100), y = geometry.lane_y + 330, w = 40, h = 42, a = 0, acc = 2}
		}
	})
end

-- ターゲット2 Targetで選択してない方を自動で表示 初回プレイでは表示されない
-- Target2: Automatic display of the one not selected in Target. Not shown on first play.
if isTarget2On() then
	local targ_x = -132
	if isTargetRank() then
		table.insert(skin.destination,	{
			id = "diff-best", offsets = {3, 64, 70}, op = {32}, timer = 41, draw = function()
				if (main_state.float_number(113) ~= 0) and main_state.option(32) then
					return true
				end
			end, dst = {
				{x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-100), y = geometry.lane_y + 382, w = 40, h = 42, a = 0, acc = 2}
			}
		})
	elseif isTargetBest()then
		table.insert(skin.destination,	{
			id = "diff-target", offsets = {3, 64, 70}, op = {32}, timer = 41, draw = function()
				if (main_state.float_number(113) ~= 0) and main_state.option(32) then
					return true
				end
			end,dst = {
				{x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-100), y = geometry.lane_y + 382, w = 40, h = 42, a = 0, acc = 2}
			}
		})
	end
end

-- レーン上でのレート表示
-- Rate display on lanes
if isScoreRateOn() then
	append_all(skin.destination, {
		{id = "play-rate-num", offsets = {3, 65, 70}, timer = 41, dst = {
			{x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-105), y = geometry.lane_y + 275, w = 33, h = 45, a = 0, acc = 2}
		}},
		{id = "play-rate-adot-num", offsets = {3, 65, 70}, timer = 41, dst = {
			{x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-105) + 111, y = geometry.lane_y + 275, w = 33, h = 45, a = 0, acc = 2}
		}},
		{id = "play-rate-dot", offsets = {3, 65, 70}, timer = 41, dst = {
			{x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-105) + 99, y = geometry.lane_y + 275, w = 12, h = 45, a = 0, acc = 2}
		}}
	})
end

-- タイミング・ヴィジュアライザー
-- Timing Visualizer
if isTimingVisualizerOn() then
	skin.timingvisualizer = {{id = "timing-visualizer"}}
	append_all(skin.destination, {
		{id = "timing-visualizer", offsets = {3, 66, 70}, op = {32}, timer = 41, dst = {
			{x = geometry.lane_x + geometry.play_position + geometry.lane_center + 150, y = geometry.lane_y + 205, w = -300, h = 15, a = 0, r = 230, g = 200, b = 255, acc = 2}
		}}
	})
end

-- プレイエリア上でのFast/Slowカウンター
-- Fast/Slow counter on playground
if isFSCountOnPlayOn() then
	append_all(skin.destination, {
		{id = "fs-opg-frame", offsets = {3, 67, 70}, op = {32}, timer = 46, dst = {
			{x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-300), y = geometry.lane_y + 301, w = 600, h = 21, a = 0, acc = 2}
		}},
		{id = "fs-opg-num", offsets = {3, 67, 70}, op = {32}, timer = 46, dst = {
			{x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-300), y = geometry.lane_y + 275, w = 20, h = 21, a = 0, acc = 2}
		}},
		{id = "sl-opg-num", offsets = {3, 67, 70}, op = {32}, timer = 46, dst = {
			{x = geometry.lane_x + geometry.play_position + geometry.lane_center + 300 - 80, y = geometry.lane_y + 275, w = 20, h = 21, a = 0, acc = 2}
		}}
	})
end

		-- レーン枠
		-- lane frame
if isLaneFrameOn() then
	append_all(skin.destination, {
		{id = "lane-frame", loop = 600, dst = {
			{x = geometry.lane_x + geometry.play_position + (-15), y = 0, w = 15, h = 0, r = 255, g = 255, b = 255, a = 255, acc = 2},
			{time = 600, h = 1080}
		}},
		{id = "lane-frame", loop = 600, dst = {
			{x = geometry.lane_x + geometry.play_position + geometry.lane_w, y = 0, w = 15, h = 0, r = 255, g = 255, b = 255, a = 255, acc = 2},
			{time = 600, h = 1080}
		}}
	})
end

		-- ゲージ
		-- gauge
if not isBombUnderTheGaugeOn() and isScratchRight() then
	append_all(skin.destination, {
		{id = -110, offset = 73, loop = 250, dst = {
			{x = geometry.lane_x + geometry.play_position + 750 + 26, y = 0, w = -750, h = 0, a = 255, acc = 2},
			{time = 200},
			{time = 250, h = 25}
		}},
		{id = "gauge", offsets = {73, 74}, loop = 250, dst = {
			{x = geometry.lane_x + geometry.play_position + 750 + 26, y = 0, w = -750, h = 0, a = 0, acc = 2},
			{time = 200},
			{time = 250, h = 25}
		}}
	})
elseif not isBombUnderTheGaugeOn() and isScratchLeft() then
	append_all(skin.destination, {
		{id = -110, offset = 73, loop = 250, dst = {
			{x = geometry.lane_x + geometry.play_position + 26, y = 0, w = 750, h = 0, a = 255, acc = 2},
			{time = 200},
			{time = 250, h = 25}
		}},
		{id = "gauge", offsets = {73, 74}, loop = 250, dst = {
			{x = geometry.lane_x + geometry.play_position + 26, y = 0, w = 750, h = 0, a = 0, acc = 2},
			{time = 200},
			{time = 250, h = 25}
		}}
	})
end

-- ボム
-- bomb
local bombCycle = 251
local lnbombCycle = 160

local b_init = {"1", "2", "3", "4", "5", "s"}
local bombTimer = {51, 52, 53, 54, 55, 50}
local lnBombTimer = {71, 72, 73, 74, 75, 70}
local bombPosX = {}
local bombWidth = 600
local bombHeight = 450

-- ボム中心点
-- center of bomb

-- Right Side
if isScratchRight() and isLaneCenterPosAll() then
	-- 3,4,5,6,7,S
	bombPosX = {
		notesInfo.Ot_width / 2 + notesInfo.Ot_width * 2,
		notesInfo.Ot_width / 2 + notesInfo.Ot_width * 3,
		notesInfo.Ot_width / 2 + notesInfo.Ot_width * 4,
		notesInfo.Ot_width / 2 + notesInfo.Ot_width * 5,
		notesInfo.Ot_width / 2 + notesInfo.Ot_width * 6,
		notesInfo.Sc_width / 2 + notesInfo.Ot_width * 7
	}
elseif isScratchRight() and isLaneCenterPosKey() then
	-- 2,3,4,5,6,S
	bombPosX = {
		notesInfo.Ot_width / 2 + notesInfo.Ot_width,
		notesInfo.Ot_width / 2 + notesInfo.Ot_width * 2,
		notesInfo.Ot_width / 2 + notesInfo.Ot_width * 3,
		notesInfo.Ot_width / 2 + notesInfo.Ot_width * 4,
		notesInfo.Ot_width / 2 + notesInfo.Ot_width * 5,
		notesInfo.Sc_width / 2 + notesInfo.Ot_width * 7
	}
-- Left Side	
elseif isScratchLeft() and isLaneCenterPosAll() then
	-- S,1,2,3,4,5
	bombPosX = {
		notesInfo.Sc_width + notesInfo.Ot_width / 2,
		notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width,
		notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width * 2,
		notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width * 3,
		notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width * 4,
		notesInfo.Sc_width / 2
	}
elseif isScratchLeft() and isLaneCenterPosKey() then
	-- S,2,3,4,5,6
	bombPosX = {
		notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width,
		notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width * 2,
		notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width * 3,
		notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width * 4,
		notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width * 5,
		notesInfo.Sc_width / 2
	}
end

-- ボム切り出し
-- cutting out bomb
table.insert(skin.image, {
	id = "bomb", src = "bomb_src", x = 0, y = 0, w = -1, h = -1
})
for i = 1, #b_init, 1 do
	table.insert(skin.image, {
		id = "bomb-"..b_init[i], src = "bomb_src", x = 0, y = 0, w = 9600, h = 450, divx = 16, divy = 1, cycle = bombCycle, timer = bombTimer[i]
	})
end

-- LNボム切り出し
-- cutting out LNbomb
table.insert(skin.image, {
	id = "lnbomb", src = "bomb_src", x = 0, y = 0, w = -1, h = -1
})
for i = 1, #b_init, 1 do
	table.insert(skin.image, {
		id = "lnbomb-"..b_init[i], src = "bomb_src", x = 0, y = 0, w = 4800, h = 450, divx = 8, divy = 1, cycle = lnbombCycle, timer = lnBombTimer[i]
	})
end

-- ボム配置
-- bomb placement

-- ボム先読み
-- bomb preload
table.insert(skin.destination,{
	id = "bomb", dst = {
		{x = 0, y = 0, w = 1, h = 1},
	}
})
table.insert(skin.destination,{
	id = "lnbomb", dst = {
		{x = 0, y = 0, w = 1, h = 1},
	}
})

-- 爆発エフェクト
-- Explosion effect

-- 通常爆発エフェクトの配置
-- Normal explosion effect placement
for i = 1, #b_init, 1 do
	table.insert(skin.destination, {
		id = "bomb-"..b_init[i], offsets = {3, 70, 72}, loop = -1, filter = 1, timer = bombTimer[i], blend = 2, dst = {
			{time = 0, x = geometry.play_position + geometry.lane_x + bombPosX[i] - bombWidth / 2, y = geometry.lane_y - (bombHeight / 2), w = bombWidth, h = bombHeight, a = 0, acc = 2},
			{time = bombCycle - 1}
		}
	})
end

-- LN爆発エフェクトの配置
-- LN explosion effect placement
for i = 1, #b_init, 1 do
	table.insert(skin.destination,	{
		id = "lnbomb-"..b_init[i], offsets = {3, 70, 72}, filter = 1, timer = lnBombTimer[i], blend = 2, dst = {
			{time = 0, x = geometry.play_position + geometry.lane_x + bombPosX[i] - bombWidth / 2, y = geometry.lane_y - (bombHeight / 2), w = bombWidth, h = bombHeight, a = 0, acc = 2},
			{time = lnbombCycle - 1}
		}
	})
end

-- ゲージ
-- gauge
if isBombUnderTheGaugeOn() and isScratchRight() then
	append_all(skin.destination, {
		{id = -110, offset = 73, loop = 250, dst = {
			{x = geometry.lane_x + geometry.play_position + 750 + 26, y = 0, w = -750, h = 0, a = 255, acc = 2},
			{time = 200},
			{time = 250, h = 25}
		}},
		{id = "gauge", offsets = {73, 74}, loop = 250, dst = {
			{x = geometry.lane_x + geometry.play_position + 750 + 26, y = 0, w = -750, h = 0, a = 0, acc = 2},
			{time = 200},
			{time = 250, h = 25}
		}}
	})
elseif isBombUnderTheGaugeOn() and isScratchLeft() then
	append_all(skin.destination, {
		{id = -110, offset = 73, loop = 250, dst = {
			{x = geometry.lane_x + geometry.play_position + 26, y = 0, w = 750, h = 0, a = 255, acc = 2},
			{time = 200},
			{time = 250, h = 25}
		}},
		{id = "gauge", offsets = {73, 74}, loop = 250, dst = {
			{x = geometry.lane_x + geometry.play_position + 26, y = 0, w = 750, h = 0, a = 0, acc = 2},
			{time = 200},
			{time = 250, h = 25}
		}}
	})
end

-- 曲の長さ + 残りノーツ
-- song length + remain notes
if isScratchRight() then
	append_all(skin.destination, {
		-- 残りノーツ パーセント
		-- remain notes persent
		{id = "remain-rate-num", dst = {
			{x = geometry.play_position + geometry.lane_x + geometry.lane_w + 23, y = 74, w = 15, h = 18}
		}},
		{id = "remain-rate-adot-num", dst = {
			{x = geometry.play_position + geometry.lane_x + geometry.lane_w + 77, y = 74, w = 15, h = 18}
		}},
		{id = "remain-rate-dot", dst = {
			{x = geometry.play_position + geometry.lane_x + geometry.lane_w + 68, y = 74, w = 9, h = 18}
		}},
		-- 残りノーツ
		-- remain notes
		{id = "remain-notes", dst = {
			{x = geometry.play_position + geometry.lane_x + geometry.lane_w + 23, y = 44, w = 15, h = 18}
		}},
		-- 残り時間
		-- time left
		{id = "song-left-m", dst = {
			{x = geometry.play_position + geometry.lane_x + geometry.lane_w + 23, y = 10, w = 15, h = 18}
		}},
		{id = "song-left-s", dst = {
			{x = geometry.play_position + geometry.lane_x + geometry.lane_w + 62, y = 10, w = 15, h = 18}
		}},
		{id = "song-time-colon", dst = {
			{x = geometry.play_position + geometry.lane_x + geometry.lane_w + 53, y = 10, w = 9, h = 18}
		}},
		-- 曲の長さスライダー
		-- song length slider
		{id = "song-progress-bar", timer = 41, dst = {
			{x = geometry.play_position + geometry.lane_x + geometry.lane_w + 74, y = 330, w = 4, h = 600, a = 100}
		}},
		{id = "song-progress-fin", timer = 41, dst = {
			{x = geometry.play_position + geometry.lane_x + geometry.lane_w + 74, y = 930, w = 4, h = -600}
		}},
		{id = "song-progress", timer = 41, dst = {
			{x = geometry.play_position + geometry.lane_x + geometry.lane_w + 70, y = 930, w = 12, h = 21}
		}}
	})
else
	append_all(skin.destination, {
		-- 残りノーツ パーセント
		-- remain notes persent
		{id = "remain-rate-num", dst = {
			{x = geometry.play_position + geometry.lane_x + (-104), y = 74, w = 15, h = 18}
		}},
		{id = "remain-rate-adot-num", dst = {
			{x = geometry.play_position + geometry.lane_x + (-50), y = 74, w = 15, h = 18}
		}},
		{id = "remain-rate-dot", dst = {
			{x = geometry.play_position + geometry.lane_x + (-59), y = 74, w = 9, h = 18}
		}},
		-- 残りノーツ
		-- remain notes
		{id = "remain-notes", dst = {
			{x = geometry.play_position + geometry.lane_x + (-95), y = 44, w = 15, h = 18}
		}},
		-- 残り時間
		-- time left	
		{id = "song-left-m", dst = {
			{x = geometry.play_position + geometry.lane_x + (-89), y = 10, w = 15, h = 18}
		}},
		{id = "song-left-s", dst = {
			{x = geometry.play_position + geometry.lane_x + (-50), y = 10, w = 15, h = 18}
		}},
		{id = "song-time-colon", dst = {
			{x = geometry.play_position + geometry.lane_x + (-59), y = 10, w = 9, h = 18}
		}},
		-- 曲の長さスライダー
		-- song length slider		
		{id = "song-progress-bar", timer = 41, dst = {
			{x = geometry.play_position + geometry.lane_x + (-78), y = 330, w = 4, h = 600, a = 100}
		}},
		{id = "song-progress-fin", timer = 41, dst = {
			{x = geometry.play_position + geometry.lane_x + (-78), y = 930, w = 4, h = -600}
		}},
		{id = "song-progress", timer = 41, dst = {
			{x = geometry.play_position + geometry.lane_x + (-82), y = 930, w = 12, h = 21}
		}}
	})
end

-- 曲終了表示
-- end of song
append_all(skin.destination, {
	{id = "eof", timer = 143, offsets = {3, 70}, dst = {
		{x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-60), y = geometry.lane_y + 140, w = 120, h = 42}
	}},
	-- リプレイ表示
	-- replay
	{id = "replay", offsets = {3, 70}, op = {84}, dst = {
		{x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-85), y = geometry.lane_y + 90, w = 171, h = 30}
	}},
	-- オートプレイ表示
	-- auto play
	{id = "autoplay", offsets = {3, 70}, op = {33}, dst = {
		{x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-120), y = geometry.lane_y + 90, w = 240, h = 30}
	}}
})

-- fullcombo
append_all(skin.destination, {
	{id = "fc-effect", loop = -1, timer = 48, stretch = 3, blend = 2, dst = {
		{time = 0, x = geometry.lane_x + geometry.play_position, y = 0, w = geometry.lane_w, h = 1080, a = 128},
		{time = 2100, y = 100, a = 0}
	}},
	{id = "fullcombo", loop = -1, timer = 48, dst = {
		{time = 550, x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-180), y = geometry.lane_y + 500, w = 360, h = 36, a = 0},
		{time = 650, a = 255},
		{time = 1600},
		{time = 1800, y = geometry.lane_y + 470, a = 0}
	}}
})

-- ### プレイエリア終了 ###
-- ### play area end ###

-- ### ロード中曲情報開始 ###
-- ### song infomation in loading end ###

-- 枠
-- background
table.insert(skin.destination,
{id = -110, loop = 600, op = {80}, dst = {
	{time = 0, x = 0, y = 360, w = 1920, h = 360, a = 0},
	{time = 300},
	{time = 600, a = 150}
}})

-- ロード終了
-- loading end		
table.insert(skin.destination,
{id = -110, timer = 40, loop = 300, op = {81}, dst = {
	{time = 0, x = 0, y = 360, w = 1920, h = 360, a = 150},
	{time = 300, a = 0}
}})

-- ジャンル名・曲名・アーティスト名
-- genre, title, artist
table.insert(skin.destination,
{id = "load-genre", loop = 600, op = {80}, filter = 1, dst = {
	{time = 0, x = 445, y = 608, w = 1405, h = 27, a = 0},
	{time = 300},
	{time = 600, a = 255}
}})

table.insert(skin.destination,
{id = "load-title", loop = 600, op = {80}, filter = 1, dst = {
	{time = 0, x = 445, y = 520, w = 1405, h = 73, a = 0},
	{time = 300},
	{time = 600, a = 255}
}})

table.insert(skin.destination,
{id = "load-artist", loop = 600, op = {80}, filter = 1, dst = {
	{time = 0, x = 445, y = 425, w = 1405, h = 41, a = 0},
	{time = 300},
	{time = 600, a = 255}
}})

-- ロード終了
-- loading end
table.insert(skin.destination,
{id = "load-genre", timer = 40,loop = 300, op = {81}, filter = 1, dst = {
	{time = 0, x = 445, y = 608, w = 1405, h = 27, a = 255},
	{time = 300, a = 0}
}})

table.insert(skin.destination,
{id = "load-title", tiemr = 40, loop = 300, op = {81}, filter = 1, dst = {
	{time = 0, x = 445, y = 520, w = 1405, h = 73, a = 255},
	{time = 300, a = 0}
}})

table.insert(skin.destination,
{id = "load-artist", timer = 40, loop = 300, op = {81}, filter = 1, dst = {
	{time = 0, x = 445, y = 425, w = 1405, h = 41, a = 255},
	{time = 300, a = 0}
}})

-- ステージファイル
-- stagefile
table.insert(skin.destination,
{id = -100, loop = 600, filter = 1, op = {80, 191}, dst = {
	{time = 0, x = 50, y = 420, w = 320, h = 240, a = 0},
	{time = 300},
	{time = 600, a = 255}
}})

-- ロード終了
-- loading end
table.insert(skin.destination,
{id = -100, timer = 40, loop = 300, filter = 1, op = {81, 191}, dst = {
	{time = 0, x = 50, y = 420, w = 320, h = 240, a = 255},
	{time = 300, a = 0}
}})

-- ステージファイルが無い時
-- no stagefile
table.insert(skin.destination,
{id = "alt-stagefile", loop = 600, filter = 1, op = {80, 190}, dst = {
	{time = 0, x = 50, y = 420, w = 320, h = 240, a = 0},
	{time = 300},
	{time = 600, a = 255}
}})

-- ロード終了
-- loading end
table.insert(skin.destination,
{id = "alt-stagefile", timer = 40, loop = 300, filter = 1, op = {81, 190}, dst = {
	{time = 0, x = 50, y = 420, w = 320, h = 240, a = 255},
	{time = 300, a = 0}
}})

-- 曲名下の線
-- line under the song title
table.insert(skin.destination,
	{id = "load-titleline", loop = 900, op = {80}, dst = {
		{time = 0, x = 400, y = 505, w = 0, h = 3, a = 100, acc = 2},
		{time = 300, w = 0},
		{time = 400},
		{time = 900, w = 1450}
	}})
table.insert(skin.destination,
	{id = "load-progress", loop = 900, op = {80}, dst = {
		{time = 0, x = 400, y = 505, w = 0, h = 3, acc = 2},
		{time = 300, w = 0},
		{time = 400},
		{time = 900, w = 1450}
	}})

-- ロード終了
-- loading end
table.insert(skin.destination,
	{id = "load-progress", timer = 40, loop = 300, op = {81}, dst = {
		{time = 0, x = 400, y = 505, w = 1450, h = 3, a = 100},
		{time = 300, a = 0}
	}})

-- ### ロード中曲情報終了 ###
-- ### song infomation in loading end ###

-- フェードイン
-- fade in
table.insert(skin.destination,
	{id = -110, loop = 250, dst = {
		{time = 0, x = 0, y = 0, w = 1920, h = 1080, a = 255},
		{time = 250, a = 0}
	}})

-- 閉店
-- shut
table.insert(skin.destination,
	{id = -110, timer = 3, loop = 250, dst = {
		{time = 0, x = 0, y = 0, w = 1920, h = 1080, a = 0},
		{time = 250, a = 255}
	}})

-- フェードアウト
-- fade out
table.insert(skin.destination,
	{id = -110, loop = 250, timer = 2, dst = {
		{time = 0, x = 0, y = 0, w = 1920, h = 1080, a = 0},
		{time = 250, a = 255}
	}})

	return skin
end

return {
	header = header,
	main = main
}