main_state = require("main_state")

local function append_all(list, list1)
	for i, v in ipairs(list1) do
		table.insert(list, v)
	end
end

local category = {
	{name = "Main", item = {
		"main_1",
		"main_2",
		"main_3",
		"main_4",
		"main_5"
	}},
	{name = "Play", item = {
		"play_1",
		"play_2",
		"play_3",
		"play_4",
		"play_5",
		"play_6",
		"play_7",
		"play_8",
		"play_9",
		"play_10",
		"play_11",
		"play_12",
		"play_13",
		"play_14",
		"play_15",
		"play_16",
		"play_17",
		"play_18",
		"play_19",
		"play_20",
		"play_21",
		"play_22",
		"play_23",
		"play_24",
		"play_25",
		"play_26",
		"play_27"
	}},
}

local property = {

	{name = "Scratch Side", category = "play_1", item = {
		{name = "Left", op = 900},
		{name = "Right", op = 901}
	}},
	{name = "Lane Frame", category = "play_2", item = {
		{name = "Off", op = 902},
		{name = "On", op = 903},
	}},	
	{name = "Lane Center", category = "play_3", item = {
		{name = "Notes", op = 904},
		{name = "Notes + Scratch", op = 905}
	}},	
	{name = "Keybeam Display", category = "play_4", item = {
		{name = "Fast", op = 906},
		{name = "Slow", op = 907}
	}},
	{name = "Target", category = "play_5", item = {
		{name = "Off", op = 908},
		{name = "My Best", op = 909},
		{name = "Target", op = 910}
	}},
	{name = "Target2 (Left)", category = "play_6", item = {
		{name = "Off", op = 911},
		{name = "On", op = 912}
	}},
	{name = "Score Rate", category = "play_7", item = {
		{name = "Off", op = 913},
		{name = "On", op = 914}
	}},
	{name = "Fast/Slow", category = "play_8", item = {
		{name = "Off", op = 915},
		{name = "On", op = 916},
		{name = "+-ms (Normal)", op = 917},
		{name = "+-ms (All)", op = 918}
	}},
	{name = "Timing Visualizer", category = "play_9", item = {
		{name = "Off", op = 919},
		{name = "On", op = 920}
	}},
	{name = "Mascot Display", category = "main_1", item = {
		{name = "Off", op = 921},
		{name = "Stop", op = 922},
		{name = "Jump", op = 923},
		{name = "Float", op = 924}
	}},
}
local function isScratchLeft()
	return skin_config.option["Scratch Side"] == 900
end
local function isScratchRight()
	return skin_config.option["Scratch Side"] == 901
end
local function isLaneFrameOff()
	return skin_config.option["Lane Frame"] == 902
end
local function isLaneFrameOn()
	return skin_config.option["Lane Frame"] == 903
end
local function isLaneCenterPosKey()
	return skin_config.option["Lane Center"] == 904
end
local function isLaneCenterPosAll()
	return skin_config.option["Lane Center"] == 905
end
local function isKeybeamFast()
	return skin_config.option["Keybeam Display"] == 906
end
local function isKeybeamSlow()
	return skin_config.option["Keybeam Display"] == 907
end
local function isTargetOff()
	return skin_config.option["Target"] == 908
end
local function isTargetBest()
	return skin_config.option["Target"] == 909
end
local function isTargetRank()
	return skin_config.option["Target"] == 910
end
local function isTarget2Off()
	return skin_config.option["Target2 (Left)"] == 911
end
local function isTarget2On()
	return skin_config.option["Target2 (Left)"] == 912
end
local function isScoreRateOff()
	return skin_config.option["Score Rate"] == 913
end
local function isScoreRateOn()
	return skin_config.option["Score Rate"] == 914
end
local function isFastSlowOff()
	return skin_config.option["Fast/Slow"] == 915
end
local function isFastSlowOn()
	return skin_config.option["Fast/Slow"] == 916
end
local function isFastSlowMS()
	return skin_config.option["Fast/Slow"] == 917
end
local function isFastSlowMSall()
	return skin_config.option["Fast/Slow"] == 918
end 
local function isTimingVisualizerOff()
	return skin_config.option["Timing Visualizer"] == 919
end
local function isTimingVisualizerOn()
	return skin_config.option["Timing Visualizer"] == 920
end 
local function isMascotOff()
	return skin_config.option["Mascot Display"] == 921
end
local function isMascotStop()
	return skin_config.option["Mascot Display"] == 922
end
local function isMascotJump()
	return skin_config.option["Mascot Display"] == 923
end
local function isMascotFloat()
	return skin_config.option["Mascot Display"] == 924
end

local function f_play_pos()
	local value = 0
	local index = skin_config.option["Scratch Side"]
	if index == 901 then
		value = 616
	else
		value = 372
	end
	return value
end
	
local function f_score_pos()
	local value = 0
	local index = skin_config.option["Scratch Side"]
	if index == 901 then
		value = 1550
	else
		value = 0
	end
	return value
end

local function f_info_pos()
	local value = 0
	local index = skin_config.option["Scratch Side"]
	if index == 901 then
		value = 0
	else
		value = 1304
	end
	return value
end

local function f_graph_blue_pos()
	local value = 0
	local index = skin_config.option["Scratch Side"]
	if index == 901 then
		value = 72
	else
		value = 264
	end
	return value
end

local function f_graph_red_pos()
	local value = 0
	local index = skin_config.option["Scratch Side"]
	if index == 901 then
		value = 264
	else
		value = 72
	end
	return value
end

local function f_between_w()
	local value = 0
	local index = skin_config.option["Scratch Side"]
	if index == 901 then
		value = 17
	else
		value = 117
	end	
	return value
end	

local function f_center_pos()
	local value = 0
	local index1 = skin_config.option["Scratch Side"]
	local index2 = skin_config.option["Lane Center"]
	if index1 == 901 and index2 == 904 then
		value = 327
	elseif index1 == 900 and index2 == 904 then
		value = 471
	else	
		value = 399
	end
	return value
end	

local filepath = {
	{name = "Mascot", category = "main_2", path = "parts/!mascot/*.png", def = "Default"},
	{name = "BG", category = "main_3", path = "parts/bg/*.png", def = "Default"},
	{name = "Notes", category = "play_10", path = "parts/notes/*.png", def = "Square_1"},
	{name = "Judge", category = "play_11", path = "parts/!judge/*.png"},
	{name = "Judge Num", category = "play_12", path = "parts/!judgenum/*.png"},
	{name = "Judge Line", category = "play_13", path = "parts/judgeline/*.png", def = "Default"},
	{name = "Gauge", category = "play_14", path = "parts/gauge/*.png", def = "Default"},	
	{name = "Keybeam", category = "play_15", path = "parts/keybeam/*.png", def = "Default"},
	{name = "Bomb", category = "play_16", path = "parts/!bomb/*.png", def = "x150%_Blue_clear_ring_SCUROed"},
	{name = "Lane Cover", category = "play_17", path = "parts/lanecover/*.png", def = "Default"},
	{name = "Lift Cover", category = "play_18", path = "parts/liftcover/*.png", def = "Default"},
	{name = "Hidden Cover", category = "play_19", path = "parts/hiddencover/*.png", def = "Default"},
}

local offset = {

	{name = "BG Darkness 0~255", category = "main_4", id = 50, x = false, y = false, w = false, h = false, r = false, a = true},
	{name = "BGA Darkness 0~255", category = "main_5", id = 51, x = false, y = false, w = false, h = false, r = false, a = true},
	{name = "F/S Position", category = "play_20", id = 52, x = true, y = true, w = false, h = false, r = false, a = false},
	{name = "Target Position & Transparence", category = "play_21", id = 53, x = true, y = true, w = false, h = false, r = false, a = true},
	{name = "Target2 Position & Transparence", category = "play_22", id = 54, x = true, y = true, w = false, h = false, r = false, a = true},
	{name = "Score Rate Position & Transparence", category = "play_23", id = 55, x = true, y = true, w = false, h = false, r = false, a = true},
	{name = "Lane Darkness 0~255", category = "play_24", id = 56, x = false, y = false, w = false, h = false, r = false, a = true},
	{name = "Judge Transparence 0~255", category = "play_25", id = 57, x = false, y = false, w = false, h = false, r = false, a = true},
	{name = "Judge Num Transparence 0~255", category = "play_26", id = 58, x = false, y = false, w = false, h = false, r = false, a = true},
	{name = "Timing Visualizer Transparence 0~255", category = "play_27", id = 59, x = false, y = false, w = false, h = false, r = false, a = true},	
}

local header = {
	type = 0,
	name = "Rm-skin",
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
	local c_between_w = f_between_w()
	local c_graph_blue_pos = f_graph_blue_pos()
	local c_graph_red_pos = f_graph_red_pos()
	local c_center_pos = f_center_pos() 

	local geometry = {}
	geometry.play_position = c_play_pos
	geometry.score_position = c_score_pos
	geometry.info_position = c_info_pos
	geometry.lane_x = c_between_w
	geometry.lane_y = 45
	geometry.lane_w = 798
	geometry.lane_h = 1035
	geometry.lane_line_width = 4
	geometry.lane_center = c_center_pos
	geometry.judge_y = 660
	geometry.bga_x = 68
	geometry.bga_y = 480
	geometry.bga_w = 480
	geometry.bga_h = 480
	geometry.graph_blue = c_graph_blue_pos
	geometry.graph_red = c_graph_red_pos

	local notesInfo = {
		height = 40,
		Wh_width = 90,
		Bl_width = 90,
		Sc_width = 140,
		Wh_x = 0,
		Bl_x = 90,
		Ye_x = 180,
		Sc_x = 270,
		As_x = 410,
		Std_y = 0,
		lnEn_y = 40,
		lnSt_y = 80,
		lnAc_y = 120,
		lnBo_y = 160,
		hcEn_y = 40,
		hcSt_y = 80,
		hcBo_y = 160,
		hcAc_y = 120,
		hcDm_y = 160,
		hcRe_y = 120,
		mine_y = 200,
	}

	skin.source = {
		--common
		{id = "bg_src", path = "parts/bg/*.png"},
		{id = "soundonly_src", path = "!common/sound_only.png"},
		{id = "nostagefile_src", path = "!common/nostagefile.png"},

		--info
		{id = "info_system_src", path = "!common/info_system.png"},

		--score
		{id = "score_system_src", path = "!common/score_system.png"},	
		{id = "mascot_src", path = "parts/!mascot/*.png"},	

		--play
		{id = "play_system_src", path = "!common/play_system.png"},
		{id = "notes_src", path = "parts/notes/*.png"},
		{id = "judge_src", path = "parts/!judge/*.png"},
		{id = "judgenum_src", path = "parts/!judgenum/*.png"},
		{id = "judgeline_src", path = "parts/judgeline/*.png"},
		{id = "gauge_src", path = "parts/gauge/*.png"},
		{id = "keybeam_src", path = "parts/keybeam/*.png"},
		{id = "bomb_src", path = "parts/!bomb/*.png"},
		{id = "lanecover_src", path = "parts/lanecover/*.png"},
		{id = "liftcover_src", path = "parts/liftcover/*.png"},
		{id = "hiddencover_src", path = "parts/hiddencover/*.png"},

	}
	
	skin.font = {
		{id = 0, path = "font/RictyDiminished-Regular.ttf"},
		{id = 1, path = "font/RictyDiminished-Bold.ttf"},
	}

	skin.image = {
		--common image
		{id = "bg", src = "bg_src", x = 0, y = 0, w = -1, h = -1},
		{id = "bga_soundonly", src = "soundonly_src", x = 0, y = 0, w = -1, h = -1},

		{id = "head-line", src = "play_system_src", x = 15, y = 4, w = 250, h = 3},
		{id = "load-titleline", src = "play_system_src", x = 15, y = 0, w = 1450, h = 3},
		{id = "load-nostagefile", src = "nostagefile_src", x = 0, y = 0, w = -1, h = -1},

		--infomation image
		{id = "info-frame", src = "info_system_src", x = 0, y = 0, w = 616, h = 480},
		{id = "song-info", src = "info_system_src", x = 617, y = 234, w = 114, h = 67},
		{id = "bpm-tx", src = "info_system_src", x = 617, y = 302, w = 108, h = 36},

		--score image
		{id = "score-frame", src = "score_system_src", x = 0, y = 0, w = 372, h = 1080},
		{id = "op-time-colon", src = "score_system_src", x = 417, y = 112, w = 67, h = 21},

		{id = "graph-aaa", src = "score_system_src", x = 373, y = 913, w = 316, h = 13},
		{id = "graph-aa", src = "score_system_src", x = 373, y = 927, w = 316, h = 13},
		{id = "graph-a", src = "score_system_src", x = 373, y = 941, w = 316, h = 13},

		{id = "mascot", src = "mascot_src", x = 0, y = 0, w = -1, h = -1},

		--play image
		{id = "lane_frame", src = "play_system_src", x = 0, y = 0, w = 10, h = 10},

		{id = "fast", src = "play_system_src", x = 0, y = 33, w = 160, h = 42},
		{id = "slow", src = "play_system_src", x = 0, y = 76, w = 160, h = 42},

		{id = "play-rate-DnP", src = "judgenum_src", x = 364, y = 91, w = 12, h = 45},

		{id = "song-time-colon", src = "play_system_src", x = 165, y = 290, w = 9, h = 18},
		{id = "song-progress-bar", src = "play_system_src", x = 10, y = 0, w = 4, h = 10},

		{id = "judge-pg", src = "judge_src", x = 0, y = 0, w = 512, h = 200},
		{id = "judge-gr", src = "judge_src", x = 0, y = 200, w = 512, h = 200},
		{id = "judge-gd", src = "judge_src", x = 0, y = 400, w = 512, h = 200},
		{id = "judge-bd", src = "judge_src", x = 0, y = 600, w = 512, h = 200},
		{id = "judge-pr", src = "judge_src", x = 0, y = 800, w = 512, h = 200},
		{id = "judge-ms", src = "judge_src", x = 0, y = 1000, w = 512, h = 200},	

		{id = "judgeline", src = "judgeline_src", x = 0, y = 0, w = 10, h = 10},

		{id = "keybeam-w", src = "keybeam_src", x = 0, y = 0, w = 94, h = geometry.lane_h},
		{id = "keybeam-b", src = "keybeam_src", x = 94, y = 0, w = 94, h = geometry.lane_h},
		{id = "keybeam-y", src = "keybeam_src", x = 188, y = 0, w = 94, h = geometry.lane_h},
		{id = "keybeam-s", src = "keybeam_src", x = 282, y = 0, w = 144, h = geometry.lane_h},

		{id = "note-Wh", src = "notes_src", x = notesInfo.Wh_x, y = notesInfo.Std_y, w = notesInfo.Wh_width, h = notesInfo.height},
		{id = "note-Bl", src = "notes_src", x = notesInfo.Bl_x, y = notesInfo.Std_y, w = notesInfo.Bl_width, h = notesInfo.height},
		{id = "note-Ye", src = "notes_src", x = notesInfo.Ye_x, y = notesInfo.Std_y, w = notesInfo.Bl_width, h = notesInfo.height},
		{id = "note-Sc", src = "notes_src", x = notesInfo.Sc_x, y = notesInfo.Std_y, w = notesInfo.Sc_width, h = notesInfo.height},

		{id = "lnSt-Wh", src = "notes_src", x = notesInfo.Wh_x, y = notesInfo.lnSt_y, w = notesInfo.Wh_width, h = notesInfo.height},
		{id = "lnSt-Bl", src = "notes_src", x = notesInfo.Bl_x, y = notesInfo.lnSt_y, w = notesInfo.Bl_width, h = notesInfo.height},
		{id = "lnSt-Ye", src = "notes_src", x = notesInfo.Ye_x, y = notesInfo.lnSt_y, w = notesInfo.Bl_width, h = notesInfo.height},
		{id = "lnSt-Sc", src = "notes_src", x = notesInfo.Sc_x, y = notesInfo.lnSt_y, w = notesInfo.Sc_width, h = notesInfo.height},

		{id = "lnEn-Wh", src = "notes_src", x = notesInfo.Wh_x, y = notesInfo.lnEn_y, w = notesInfo.Wh_width, h = notesInfo.height},
		{id = "lnEn-Bl", src = "notes_src", x = notesInfo.Bl_x, y = notesInfo.lnEn_y, w = notesInfo.Bl_width, h = notesInfo.height},
		{id = "lnEn-Ye", src = "notes_src", x = notesInfo.Ye_x, y = notesInfo.lnEn_y, w = notesInfo.Bl_width, h = notesInfo.height},
		{id = "lnEn-Sc", src = "notes_src", x = notesInfo.Sc_x, y = notesInfo.lnEn_y, w = notesInfo.Sc_width, h = notesInfo.height},

		{id = "lnBo-Wh", src = "notes_src", x = notesInfo.Wh_x, y = notesInfo.lnAc_y, w = notesInfo.Wh_width, h = notesInfo.height},
		{id = "lnBo-Bl", src = "notes_src", x = notesInfo.Bl_x, y = notesInfo.lnAc_y, w = notesInfo.Bl_width, h = notesInfo.height},
		{id = "lnBo-Ye", src = "notes_src", x = notesInfo.Ye_x, y = notesInfo.lnAc_y, w = notesInfo.Bl_width, h = notesInfo.height},
		{id = "lnBo-Sc", src = "notes_src", x = notesInfo.Sc_x, y = notesInfo.lnAc_y, w = notesInfo.Sc_width, h = notesInfo.height},
	
		{id = "lnAc-Wh", src = "notes_src", x = notesInfo.Wh_x, y = notesInfo.lnBo_y, w = notesInfo.Wh_width, h = notesInfo.height},
		{id = "lnAc-Bl", src = "notes_src", x = notesInfo.Bl_x, y = notesInfo.lnBo_y, w = notesInfo.Bl_width, h = notesInfo.height},
		{id = "lnAc-Ye", src = "notes_src", x = notesInfo.Ye_x, y = notesInfo.lnBo_y, w = notesInfo.Bl_width, h = notesInfo.height},
		{id = "lnAc-Sc", src = "notes_src", x = notesInfo.Sc_x, y = notesInfo.lnBo_y, w = notesInfo.Sc_width, h = notesInfo.height},

		{id = "hcSt-Wh", src = "notes_src", x = notesInfo.Wh_x, y = notesInfo.hcSt_y, w = notesInfo.Wh_width, h = notesInfo.height},
		{id = "hcSt-Bl", src = "notes_src", x = notesInfo.Bl_x, y = notesInfo.hcSt_y, w = notesInfo.Bl_width, h = notesInfo.height},
		{id = "hcSt-Ye", src = "notes_src", x = notesInfo.Ye_x, y = notesInfo.hcSt_y, w = notesInfo.Bl_width, h = notesInfo.height},
		{id = "hcSt-Sc", src = "notes_src", x = notesInfo.Sc_x, y = notesInfo.hcSt_y, w = notesInfo.Sc_width, h = notesInfo.height},

		{id = "hcEn-Wh", src = "notes_src", x = notesInfo.Wh_x, y = notesInfo.hcEn_y, w = notesInfo.Wh_width, h = notesInfo.height},
		{id = "hcEn-Bl", src = "notes_src", x = notesInfo.Bl_x, y = notesInfo.hcEn_y, w = notesInfo.Bl_width, h = notesInfo.height},
		{id = "hcEn-Ye", src = "notes_src", x = notesInfo.Ye_x, y = notesInfo.hcEn_y, w = notesInfo.Bl_width, h = notesInfo.height},
		{id = "hcEn-Sc", src = "notes_src", x = notesInfo.Sc_x, y = notesInfo.hcEn_y, w = notesInfo.Sc_width, h = notesInfo.height},

		{id = "hcAc-Wh", src = "notes_src", x = notesInfo.Wh_x, y = notesInfo.hcBo_y, w = notesInfo.Wh_width, h = notesInfo.height},
		{id = "hcAc-Bl", src = "notes_src", x = notesInfo.Bl_x, y = notesInfo.hcBo_y, w = notesInfo.Bl_width, h = notesInfo.height},
		{id = "hcAc-Ye", src = "notes_src", x = notesInfo.Ye_x, y = notesInfo.hcBo_y, w = notesInfo.Bl_width, h = notesInfo.height},
		{id = "hcAc-Sc", src = "notes_src", x = notesInfo.Sc_x, y = notesInfo.hcBo_y, w = notesInfo.Sc_width, h = notesInfo.height},

		{id = "hcBo-Wh", src = "notes_src", x = notesInfo.Wh_x, y = notesInfo.hcAc_y, w = notesInfo.Wh_width, h = notesInfo.height},
		{id = "hcBo-Bl", src = "notes_src", x = notesInfo.Bl_x, y = notesInfo.hcAc_y, w = notesInfo.Bl_width, h = notesInfo.height},
		{id = "hcBo-Ye", src = "notes_src", x = notesInfo.Ye_x, y = notesInfo.hcAc_y, w = notesInfo.Bl_width, h = notesInfo.height},
		{id = "hcBo-Sc", src = "notes_src", x = notesInfo.Sc_x, y = notesInfo.hcAc_y, w = notesInfo.Sc_width, h = notesInfo.height},

		{id = "hcDm-Wh", src = "notes_src", x = notesInfo.Wh_x, y = notesInfo.hcDm_y, w = notesInfo.Wh_width, h = notesInfo.height},
		{id = "hcDm-Bl", src = "notes_src", x = notesInfo.Bl_x, y = notesInfo.hcDm_y, w = notesInfo.Bl_width, h = notesInfo.height},
		{id = "hcDm-Ye", src = "notes_src", x = notesInfo.Ye_x, y = notesInfo.hcDm_y, w = notesInfo.Bl_width, h = notesInfo.height},
		{id = "hcDm-Sc", src = "notes_src", x = notesInfo.Sc_x, y = notesInfo.hcDm_y, w = notesInfo.Sc_width, h = notesInfo.height},

		{id = "hcRe-Wh", src = "notes_src", x = notesInfo.Wh_x, y = notesInfo.hcRe_y, w = notesInfo.Wh_width, h = notesInfo.height},
		{id = "hcRe-Bl", src = "notes_src", x = notesInfo.Bl_x, y = notesInfo.hcRe_y, w = notesInfo.Bl_width, h = notesInfo.height},
		{id = "hcRe-Ye", src = "notes_src", x = notesInfo.Ye_x, y = notesInfo.hcRe_y, w = notesInfo.Bl_width, h = notesInfo.height},
		{id = "hcRe-Sc", src = "notes_src", x = notesInfo.Sc_x, y = notesInfo.hcRe_y, w = notesInfo.Sc_width, h = notesInfo.height},

		{id = "mine-Wh", src = "notes_src", x = notesInfo.Wh_x, y = notesInfo.mine_y, w = notesInfo.Wh_width, h = notesInfo.height},
		{id = "mine-Bl", src = "notes_src", x = notesInfo.Bl_x, y = notesInfo.mine_y, w = notesInfo.Bl_width, h = notesInfo.height},
		{id = "mine-Ye", src = "notes_src", x = notesInfo.Ye_x, y = notesInfo.mine_y, w = notesInfo.Ye_width, h = notesInfo.height},
		{id = "mine-Sc", src = "notes_src", x = notesInfo.Sc_x, y = notesInfo.mine_y, w = notesInfo.Sc_width, h = notesInfo.height},

		{id = "section-line", src = "play_system_src", x = 0, y = 0, w = 1, h = 1},

		{id = "timing-visualizer-frame", src = "play_system_src", x = 201, y = 290, w = 322, h = 62},

		{id = "gauge-r1", src = "gauge_src", x = 0, y = 0, w = 15, h = 24},
		{id = "gauge-r2", src = "gauge_src", x = 30, y = 0, w = 15, h = 24},
		{id = "gauge-r3", src = "gauge_src", x = 0, y = 0, w = 15, h = 24},

		{id = "gauge-b1", src = "gauge_src", x = 15, y = 0, w = 15, h = 24},
		{id = "gauge-b2", src = "gauge_src", x = 45, y = 0, w = 15, h = 24},
		{id = "gauge-b3", src = "gauge_src", x = 15, y = 0, w = 15, h = 24},
		
		{id = "gauge-y1", src = "gauge_src", x = 120, y = 0, w = 15, h = 24},
		{id = "gauge-y2", src = "gauge_src", x = 150, y = 0, w = 15, h = 24},
		{id = "gauge-y3", src = "gauge_src", x = 120, y = 0, w = 15, h = 24},
		
		{id = "gauge-p1", src = "gauge_src", x = 135, y = 0, w = 15, h = 24},
		{id = "gauge-p2", src = "gauge_src", x = 165, y = 0, w = 15, h = 24},
		{id = "gauge-p3", src = "gauge_src", x = 135, y = 0, w = 15, h = 24},
		
		{id = "gauge-g1", src = "gauge_src", x = 75, y = 0, w = 15, h = 24},
		{id = "gauge-g2", src = "gauge_src", x = 105, y = 0, w = 15, h = 24},
		{id = "gauge-g3", src = "gauge_src", x = 75, y = 0, w = 15, h = 24},
		
		{id = "gauge-w1", src = "gauge_src", x = 180, y = 0, w = 15, h = 24},
		{id = "gauge-w2", src = "gauge_src", x = 195, y = 0, w = 15, h = 24},
		{id = "gauge-w3", src = "gauge_src", x = 180, y = 0, w = 15, h = 24},

		{id = "eof", src = "play_system_src", x = 161, y = 33, w = 120, h = 42},
		{id = "replay", src = "play_system_src", x = 282, y = 32, w = 98, h = 21},
		{id = "autoplay", src = "play_system_src", x = 282, y = 54, w = 132, h = 21},

		{id = "fc-effect", src = "play_system_src", x = 663, y = 4, w = 802, h = 1035},
		{id = "fullcombo", src = "play_system_src", x = 161, y = 76, w = 360, h = 36},

	}
	skin.imageset = {}
	skin.value = {
		
		--infomation value
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

		{id = "info-rate-num", src = "info_system_src", x = 617, y = 0, w = 200, h = 21, divx = 10, digit = 3, ref = 102, align = 0},
		{id = "info-rate-adot-num", src = "info_system_src", x = 617, y = 0, w = 220, h = 21, divx = 11, digit = 2, ref = 103, align = 0},

		{id = "green-num", src = "info_system_src", x = 617, y = 22, w = 200, h = 21, divx = 10, digit = 4, ref = 313, align = 0},
		{id = "judgetiming-num", src = "info_system_src", x = 617, y = 88, w = 180, h = 34, divx = 12, divy = 2, digit = 3, ref = 12, align = 0},

		{id = "gauge-num", src = "info_system_src", x = 617, y = 339, w = 300, h = 31, divx = 10, digit = 3, ref = 107, align = 0},
		{id = "gauge-adot-num", src = "info_system_src", x = 617, y = 339, w = 300, h = 31, divx = 10, digit = 1, ref = 407, align = 0},

		{id = "bpm-now", src = "info_system_src", x = 617, y = 408, w = 720, h = 72, divx = 10, digit = 3, ref = 160, align = 0},
		{id = "bpm-max", src = "info_system_src", x = 617, y = 371, w = 360, h = 36, divx = 10, digit = 3, ref = 90, align = 0},
		{id = "bpm-min", src = "info_system_src", x = 617, y = 371, w = 360, h = 36, divx = 10, digit = 3, ref = 91, align = 0},

		--score value
		{id = "op-time-hour-num", src = "score_system_src", x = 373, y = 0, w = 220, h = 21, divx = 11, digit = 2, ref = 27, align = 1},
		{id = "op-time-minute-num", src = "score_system_src", x = 373, y = 0, w = 220, h = 21, divx = 11, digit = 2, ref = 28, align = 1},
		{id = "op-time-second-num", src = "score_system_src", x = 373, y = 0, w = 220, h = 21, divx = 11, digit = 2, ref = 29, align = 1},

		{id = "fps-num-left", src = "score_system_src", x = 373, y =22, w = 200, h = 21, divx = 10, digit = 4, ref = 20, align = 1},
		{id = "fps-num-right", src = "score_system_src", x = 373, y =22, w = 200, h = 21, divx = 10, digit = 4, ref = 20, align = 0},

		{id = "score-rate-num", src = "score_system_src", x = 373, y = 87, w = 200, h = 24, divx = 10, digit = 3, ref = 102, align = 0},
		{id = "score-rate-adot-num", src = "score_system_src", x = 373, y = 87, w = 220, h = 24, divx = 11, digit = 2, ref = 103, align = 0},

		{id = "score-score", src = "score_system_src", x = 373, y = 0, w = 200, h = 21, divx = 10, digit = 4, ref = 101, align = 0},
		{id = "score-diff-best", src = "score_system_src", x = 373, y = 44, w = 240, h = 42, divx = 12, divy = 2, digit = 5, ref = 152, align = 0},
		{id = "score-diff-target", src = "score_system_src", x = 373, y = 44, w = 240, h = 42, divx = 12, divy = 2, digit = 5, ref = 153, align = 0},	

		--play value
		{id = "diff-best", src = "play_system_src", x = 0, y = 204, w = 480, h = 84, divx = 12, divy = 2, digit = 5, ref = 152, align = 2},
		{id = "diff-target", src = "play_system_src", x = 0, y = 204, w = 480, h = 84, divx = 12, divy = 2, digit = 5, ref = 153, align = 2},	

		{id = "fsms-num", src = "play_system_src", x = 0, y = 119, w = 480, h = 84, divx = 12, divy = 2, digit = 4, ref = 525, align = 2},

		{id = "play-rate-num", src = "judgenum_src", x = 0, y = 91, w = 330, h = 45, divx = 10, digit = 3, ref = 102, align = 0},
		{id = "play-rate-adot-num", src = "judgenum_src", x = 0, y = 91, w = 363, h = 45, divx = 11, digit = 2, ref = 103, align = 0},
	
		{id = "song-left-m", src = "play_system_src", x = 0, y = 290, w = 150, h = 18, divx = 10, digit = 2, ref = 163, align = 0},
		{id = "song-left-s", src = "play_system_src", x = 0, y = 290, w = 165, h = 18, divx = 11, digit = 2, ref = 164, align = 0},

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
	
	}
	skin.text = {
		{id = "tablename-left", font = 0, size = 26, ref = 1003, overflow = 1, align = 0},
		{id = "tablename-right", font = 0, size = 26, ref = 1003, overflow = 1, align = 2},
		{id = "title-left", font = 1, size = 42, ref = 12, overflow = 1, align = 0},
		{id = "title-right", font = 1, size = 42, ref = 12, overflow = 1, align = 2},
		{id = "load-genre", font = 0, size = 27, ref = 13, overflow = 1},
		{id = "load-title", font = 1, size = 73, ref = 12, overflow = 1},
		{id = "load-artist", font = 0, size = 41, ref = 16, overflow = 1},
	}
	skin.slider = {
		--play slider
		{id = "song-progress", src = "play_system_src", x = 0, y = 11, w = 12, h = 21, angle = 2, range = 600, type = 6},
		{id = "lanecover", src = "lanecover_src", x = 0, y = 0, w = -1, h = -1, angle = 2, range = geometry.lane_h, type = 4},
	}
	skin.hiddenCover = {
		{id = "hiddencover", src = "hiddencover_src", x = 0, y = 0, w = geometry.lane_w + 4, h = geometry.lane_h, disapearLine = geometry.lane_y},
	}
	skin.liftCover = {
		{id = "liftcover", src = "liftcover_src", x = 0, y = 0, w = geometry.lane_w + 4, h = geometry.lane_h, disapearLine = geometry.lane_y},
	}
	skin.graph = {
		--score graph
		{id = "graph-now", src = "score_system_src", x = 373, y = 112, w = 10, h = 800, angle = 1, type = 110},
		{id = "graph-final", src = "score_system_src", x = 406, y = 112, w = 10, h = 800, angle = 1, type = 111},
		{id = "graph-best-now", src = "score_system_src", x = 384, y = 112, w = 10, h = 800, angle = 1, type = 112},
		{id = "graph-best-final", src = "score_system_src", x = 406, y = 112, w = 10, h = 800, angle = 1, type = 113},
		{id = "graph-target-now", src = "score_system_src", x = 395, y = 112, w = 10, h = 800, angle = 1, type = 114},
		{id = "graph-target-final", src = "score_system_src", x = 406, y = 112, w = 10, h = 800, angle = 1, type = 115},

		--play graph
		{id = "load-progress", src = "play_system_src", x = 15, y = 0, w = 1450, h = 3, angle = 0, type = 102},
		{id = "song-progress-fin", src = "play_system_src", x = 10, y = 0, w = 4, h = 10, angle = 1, type = 101},
	}
	skin.note = {
		id = "notes",
		note = {"note-Wh", "note-Bl", "note-Wh", "note-Ye", "note-Wh", "note-Bl", "note-Wh", "note-Sc"},
		lnend = {"lnEn-Wh", "lnEn-Bl", "lnEn-Wh", "lnEn-Ye", "lnEn-Wh", "lnEn-Bl", "lnEn-Wh", "lnEn-Sc"},
		lnstart = {"lnSt-Wh", "lnSt-Bl", "lnSt-Wh", "lnSt-Ye", "lnSt-Wh", "lnSt-Bl", "lnSt-Wh", "lnSt-Sc"},
		lnbody = {"lnBo-Wh", "lnBo-Bl", "lnBo-Wh", "lnBo-Ye", "lnBo-Wh", "lnBo-Bl", "lnBo-Wh", "lnBo-Sc"},
		lnactive = {"lnAc-Wh", "lnAc-Bl", "lnAc-Wh", "lnAc-Ye", "lnAc-Wh", "lnAc-Bl", "lnAc-Wh", "lnAc-Sc"},
		hcnend = {"hcEn-Wh", "hcEn-Bl", "hcEn-Wh", "hcEn-Ye", "hcEn-Wh", "hcEn-Bl", "hcEn-Wh", "hcEn-Sc"},
		hcnstart = {"hcSt-Wh", "hcSt-Bl", "hcSt-Wh", "hcSt-Ye", "hcSt-Wh", "hcSt-Bl", "hcSt-Wh", "hcSt-Sc"},
		hcnbody = {"hcBo-Wh", "hcBo-Bl", "hcBo-Wh", "hcBo-Ye", "hcBo-Wh", "hcBo-Bl", "hcBo-Wh", "hcBo-Sc"},
		hcnactive = {"hcAc-Wh", "hcAc-Bl", "hcAc-Wh", "hcAc-Ye", "hcAc-Wh", "hcAc-Bl", "hcAc-Wh", "hcAc-Sc"},
		hcndamage = {"hcDm-Wh", "hcDm-Bl", "hcDm-Wh", "hcDm-Ye", "hcDm-Wh", "hcDm-Bl", "hcDm-Wh", "hcDm-Sc"},
		hcnreactive = {"hcRe-Wh", "hcRe-Bl", "hcRe-Wh", "hcRe-Ye", "hcRe-Wh", "hcRe-Bl", "hcRe-Wh", "hcRe-Sc"},
		mine = {"mine-Wh", "mine-Bl", "mine-Wh", "mine-Ye", "mine-Wh", "mine-Bl", "mine-Wh", "mine-Sc"},
		hidden = {},
		processed = {},
		group = {
			{id = "section-line", offset = 3, dst = {
				{x = geometry.lane_x + geometry.play_position + (-2), y = geometry.lane_y, w = geometry.lane_w + 4, h = 5, r = 255, g = 255, b = 255}
			}}
		},
		time = {
			{id = "section-line", offset = 3, dst = {
				{x = geometry.lane_x + geometry.play_position + (-2), y = geometry.lane_y, w = geometry.lane_w + 4, h = 15, r = 100, g = 100, b = 255}
			}}
		},
		bpm = {
			{id = "section-line", offset = 3, dst = {
				{x = geometry.lane_x + geometry.play_position + (-2), y = geometry.lane_y, w = geometry.lane_w + 4, h = 15, r = 100, g = 255, b = 100}
			}}
		},
		stop = {
			{id = "section-line", offset = 3, dst = {
				{x = geometry.lane_x + geometry.play_position + (-2), y = geometry.lane_y, w = geometry.lane_w + 4, h = 15, r = 255, g = 100, b = 100}
			}}
		}
	}

		skin.note.dst = {}

		geometry.notes_x = {}
		geometry.notes_w = {}
		
		geometry.notes_w[8] = notesInfo.Sc_width
		geometry.notes_w[1] = notesInfo.Wh_width

		if isScratchRight() then
			geometry.notes_x[1] = geometry.lane_x
			geometry.notes_x[8] = geometry.lane_x + geometry.lane_w - geometry.notes_w[8]
		else
			geometry.notes_x[8] = geometry.lane_x
			geometry.notes_x[1] = geometry.notes_x[8] + geometry.notes_w[8] + geometry.lane_line_width
		end

		for i = 2, 7 do
			if i % 2 == 0 then
				geometry.notes_x[i] = geometry.notes_x[i-1] + notesInfo.Wh_width + geometry.lane_line_width
				geometry.notes_w[i] = notesInfo.Bl_width
			else
				geometry.notes_x[i] = geometry.notes_x[i-1] + notesInfo.Bl_width + geometry.lane_line_width
				geometry.notes_w[i] = notesInfo.Wh_width
			end
		end
	
		for i = 1, 8 do
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
				{id = "judge-pg", loop = -1, timer = 46, offsets = {3, 32, 57}, dst = {
					{time = 0, x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-256), y = geometry.judge_y, w = 512, h = 200, a = 0, acc = 2},
					{time = 500}
				}},
				{id = "judge-gr", loop = -1, timer = 46, offsets = {3, 32, 57}, dst = {
					{time = 0, x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-256), y = geometry.judge_y, w = 512, h = 200, a = 0, acc = 2},
					{time = 500}
				}},
				{id = "judge-gd", loop = -1, timer = 46, offsets = {3, 32 ,57}, dst = {
					{time = 0, x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-256), y = geometry.judge_y, w = 512, h = 200, a = 0, acc = 2},
					{time = 500}
				}},
				{id = "judge-bd", loop = -1, timer = 46, offsets = {3, 32, 57}, dst = {
					{time = 0, x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-256), y = geometry.judge_y, w = 512, h = 200, a = 0, acc = 2},
					{time = 500}
				}},
				{id = "judge-pr", loop = -1, timer = 46, offsets = {3, 32, 57}, dst = {
					{time = 0, x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-256), y = geometry.judge_y, w = 512, h = 200, a = 0, acc = 2},
					{time = 500}
				}},
				{id = "judge-ms", loop = -1, timer = 46, offsets = {3, 32, 57}, dst = {
					{time = 0, x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-256), y = geometry.judge_y, w = 512, h = 200, a = 0, acc = 2},
					{time = 500}
				}}
			},
			-- コンボ数のx,yは判定文字からの相対距離を指定
			-- The value of x and y for the combo number specifies the relative distance from the judgment character.
			numbers = {
				{id = "judge-num-pg", loop = -1, timer = 46, offsets = {32, 58}, dst = {
					{time = 0, x = 256, y = 256, w = 66, h = 90, a = 0, acc = 2},
					{time = 500}
				}},
				{id = "judge-num-gr", loop = -1, timer = 46, offsets = {32, 58}, dst = {
					{time = 0, x = 256, y = 256, w = 66, h = 90, a = 0, acc = 2},
					{time = 500}
				}},
				{id = "judge-num-gd", loop = -1, timer = 46, offsets = {32, 58}, dst = {
					{time = 0, x = 256, y = 256, w = 66, h = 90, a = 0, acc = 2},
					{time = 500}
				}},
				{id = "judge-num-bd", loop = -1, timer = 46, offsets = {32, 58}, dst = {
					{time = 0, x = 256, y = 256, w = 66, h = 90, a = 0, acc = 2},
					{time = 500}
				}},
				{id = "judge-num-pr", loop = -1, timer = 46, offsets = {32, 58}, dst = {
					{time = 0, x = 256, y = 256, w = 66, h = 90, a = 0, acc = 2},
					{time = 500}
				}},
				{id = "judge-num-ms", loop = -1, timer = 46, offsets = {32, 58}, dst = {
					{time = 0, x = 256, y = 256, w = 66, h = 90, a = 0, acc = 2},
					{time = 500}
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
	
		{id = "bga_soundonly", stretch = 1, draw = function()
			if main_state.option(40) or main_state.option(170) then
				return true
			end
		end, timer = 41, loop = 800, dst = {
			{time = 0, x = geometry.info_position + geometry.bga_x, y = geometry.bga_y, w = geometry.bga_w, h = geometry.bga_h, a = 0},
			{time = 500},
			{time = 800, a = 255}}},
					
		{id = -110, timer = 41, offset = 51, dst = {
			{x = geometry.info_position + geometry.bga_x, y = geometry.bga_y, w = geometry.bga_w, h = geometry.bga_h, a = 0}}},
	}

-- 曲情報エリア 
-- song infomation area

	-- ここから 
	-- from hare

		-- ジャンル名・曲名 
		-- genre,title
if isScratchRight() then	
	append_all(skin.destination, {
		{id = "tablename-left", timer = 41, filter = 1, dst = {
			{x = geometry.info_position + 8, y = 1034, w = 600, h = 26}
		}},
		{id = "title-left", timer = 41, filter = 1, dst = {
			{x = geometry.info_position + 8, y = 984, w = 600, h = 42}
		}},
	})
else
	append_all(skin.destination, {
		{id = "tablename-right", timer = 41, filter = 1, dst = {
			{x = geometry.info_position + 608, y = 1034, w = 600, h = 26}
		}},
		{id = "title-right", timer = 41, filter = 1, dst = {
			{x = geometry.info_position + 608, y = 984, w = 600, h = 42}
		}},
	})
end		

		-- 判定情報・曲情報・BPM・ゲージの値など
		-- Judge information, song information, BPM, gauge values, etc.
append_all(skin.destination, {
	{id = "info-frame", timer = 41, dst = {
		{x = geometry.info_position, y = 0, w = 616, h = 480}
	}},
	{id = "song-info", dst = {
		{x = geometry.info_position + 297, y = 364, w = 114, h = 67}
	}},
	{id = "bpm-tx", dst = {
		{x = geometry.info_position + 254, y = 87, w = 108, h = 36}
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
		{x = geometry.info_position + 417, y = 364, w = 20, h = 21},
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
		{x = geometry.info_position + 479, y = 269, w = 20, h = 21},
	}},	
	{id = "info-rate-adot-num", timer = 41, dst = {
		{x = geometry.info_position + 559, y = 269, w = 20, h = 21},
	}},	
	{id = "green-num", timer = 41, dst = {
		{x = geometry.info_position + 86, y = 182, w = 20, h = 21},
	}},	
	{id = "judgetiming-num", timer = 41, dst = {
		{x = geometry.info_position + 113, y = 161, w = 15, h = 17},
	}},	
	{id = "gauge-num", timer = 41, dst = {
		{x = geometry.info_position + 231, y = 143, w = 30, h = 31},
	}},	
	{id = "gauge-adot-num", timer = 41, dst = {
		{x = geometry.info_position + 333, y = 143, w = 30, h = 31},
	}},	
	{id = "bpm-now", dst = {
		{x = geometry.info_position + 200, y = 10, w = 72, h = 72},
	}},	
	{id = "bpm-min", dst = {
		{x = geometry.info_position + 82, y = 10, w = 36, h = 36},
	}},	
	{id = "bpm-max", dst = {
		{x = geometry.info_position + 426, y = 10, w = 36, h = 36},
	}},
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
	{id = "gauge-op-tx", timer = 41, dst = {
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
	{id = "lane-op-tx", timer = 41, dst = {
		{x = geometry.info_position + 407, y = 184, w = 146, h = 19}
	}})	
-- 曲情報エリア
-- song infomation area
	
	-- ここまで
	-- to here

-- スコアエリア
-- score area

	-- ここから
	-- from here

		-- 操作時間・フレームレート・グラフなど
		-- Operation time, frame rate, graphs, etc.
append_all(skin.destination, {
	{id = "score-frame", timer = 41, dst = {
		{x = geometry.score_position, y = 0, w = 372, h = 1080}
	}},
	{id = "score-rate-num", timer = 41, dst = {
		{x = geometry.score_position + 28, y = 992, w = 20, h = 24}
	}},
	{id = "score-rate-adot-num", timer = 41, dst = {
		{x = geometry.score_position + 102, y = 992, w = 20, h = 24}
	}},
	{id = "score-score", timer = 41, dst = {
		{x = geometry.score_position + 264, y = 961, w = 20, h = 21}
	}},
	{id = "score-diff-best", timer = 41, dst = {
		{x = geometry.score_position + 244, y = 935, w = 20, h = 21}
	}},
	{id = "score-diff-target", timer = 41, dst = {
		{x = geometry.score_position + 244, y = 909, w = 20, h = 21}
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
	}},
})

if isScratchRight() then
	append_all(skin.destination, {
		{id = "op-time-colon", dst = {
			{x = geometry.score_position + 255, y = 1054, w = 67, h = 21}
		}},
		{id = "op-time-hour-num", dst = {
			{x = geometry.score_position + 209, y = 1054, w = 20, h = 21}
		}},
		{id = "op-time-minute-num", dst = {
			{x = geometry.score_position + 268, y = 1054, w = 20, h = 21}
		}},
		{id = "op-time-second-num", dst = {
			{x = geometry.score_position + 327, y = 1054, w = 20, h = 21}
		}},
		{id = "fps-num-right", dst = {
			{x = geometry.score_position + 287, y = 1031, w = 20, h = 21}
		}},
	})	
else
	append_all(skin.destination, {
		{id = "op-time-colon", dst = {
			{x = geometry.score_position + 51, y = 1054, w = 67, h = 21}
		}},
		{id = "op-time-hour-num", dst = {
			{x = geometry.score_position + 5, y = 1054, w = 20, h = 21}
		}},
		{id = "op-time-minute-num", dst = {
			{x = geometry.score_position + 63, y = 1054, w = 20, h = 21}
		}},
		{id = "op-time-second-num", dst = {
			{x = geometry.score_position + 123, y = 1054, w = 20, h = 21}
		}},
		{id = "fps-num-left", dst = {
			{x = geometry.score_position + 5, y = 1031, w = 20, h = 21}
		}},	
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
		--BPM graph
table.insert(skin.destination,
	{id = "bpm-graph", dst = {
		{x = geometry.score_position, y = 0, w = 372, h = 100}
	}})

-- プレイエリア
-- play area
	
	-- ここから
	-- from here
	
		-- レーン背景
		-- lane background
table.insert(skin.destination,
	{id = -110, offset = 56, dst = {
		{x = geometry.lane_x + geometry.play_position + (-2), y = 0, w = geometry.lane_w + 4, h = 1080, a = 0, acc = 2}
	}})

		-- 判定ライン
		-- judge line
table.insert(skin.destination,
	{id = "judgeline", offset = 3, dst = {
		{x = geometry.lane_x + geometry.play_position + (-2), y = geometry.lane_y, w = geometry.lane_w + 4, h = 24}
	}})	

		-- キービーム
		-- keybeam
local kb_w = {94, 94, 94, 94, 94, 94, 94, 144}
local kb_type = {"w", "b", "w", "y", "w", "b", "w", "s"}
local kb_onTimer = {101, 102, 103, 104, 105, 106, 107, 100}
local kb_offTimer = {121, 122, 123, 124, 125, 126, 127, 120}
local kb_x = {}
local kb_move_x = {}

if isScratchRight() then
	kb_x = {-2, 92, 186, 280, 374, 468, 562, 656}
	kb_move_x = {47, 47, 47, 47, 47, 47, 47, 72}
else
	kb_x = {142, 236, 330, 424, 518, 612, 706, -2}
	kb_move_x = {72, 47, 47, 47, 47, 47, 47, 47}
end

if isKeybeamFast() then
		-- キーが押された時
		-- When a key is pressed.
	do
		for i = 1, 8, 1 do
			table.insert(skin.destination,	{
				id = "keybeam-"..kb_type[i], offset = 3, timer = kb_onTimer[i], blend = 1, dst = {
					{x = geometry.lane_x + geometry.play_position + kb_x[i], y = geometry.lane_y, w = kb_w[i], h = geometry.lane_h, a = 255}
				}
			})
		end
	end
		-- キーが離された時
		-- When a key is released.
	do
		for i = 1, 8, 1 do
			table.insert(skin.destination,	{
				id = "keybeam-"..kb_type[i], offset = 3, timer = kb_offTimer[i], loop = -1, blend = 1, dst = {
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
		for i = 1, 8, 1 do
			table.insert(skin.destination,	{
				id = "keybeam-"..kb_type[i], offset = 3, timer = kb_onTimer[i], loop = 33, blend = 1, dst = {
					{time = 0, x = geometry.lane_x + geometry.play_position + kb_x[i], y = geometry.lane_y, w = kb_w[i], h = geometry.lane_h, a = 0},
					{time = 33, a = 255}
				}
			})
		end
	end
		-- キーが離された時
		-- When a key is released.
	do
		for i = 1, 8, 1 do
			table.insert(skin.destination,	{
				id = "keybeam-"..kb_type[i], offset = 3, timer = kb_offTimer[i], loop = -1, blend = 1, dst = {
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
	{id = "hiddencover", loop = 2000, dst = {
		{time = 0, x = geometry.lane_x + geometry.play_position + (-2), y = geometry.lane_y - geometry.lane_h, w = geometry.lane_w + 4, h = geometry.lane_h, a = 0},
		{time = 1700},
		{time = 2000, a = 255}
	}})

		-- lift cover
table.insert(skin.destination,
	{id = "liftcover", loop = 1700, dst = {
		{time = 0, x = geometry.lane_x + geometry.play_position + (-2), y = geometry.lane_y - geometry.lane_h, w = geometry.lane_w + 4, h = geometry.lane_h, a = 0},
		{time = 1400},
		{time = 1700, a = 255}
	}})

		-- lanecover
table.insert(skin.destination,
	{id = "lanecover", loop = 1300, dst = {
		{time = 0, x = geometry.lane_x + geometry.play_position + (-2), y = 1500, w = geometry.lane_w + 4, h = geometry.lane_h, acc = 2},
		{time = 700},
		{time = 1300, y = 1080}
	}})

		-- レーンカバーの数値周り
		-- values for lane cover
do
	local id = {"lanecover-value", "lanecover-green", "lanecover-duration"}
	local dst_x = {70, 344, 618}
	local dst_w = {20, 20, 20}
	local dst_h = {21, 21, 21}
	for i in ipairs(id) do
		table.insert(skin.destination,
			{id = id[i], offset = 4, op = {270}, dst = {
				{x = dst_x[i] + geometry.lane_x + geometry.play_position, y = 1055, w = dst_w[i], h = dst_h[i]}
		}})		
	end
end

		-- リフトの数値周り
		-- values for lift
do
	local id = {"lift-value", "lanecover-green", "lanecover-duration"}
	local dst_x = {70, 344, 618}
	local dst_w = {20, 20, 20}
	local dst_h = {21, 21, 21}
	for i in ipairs(id) do
		table.insert(skin.destination,
			{id = id[i], offset = 3, op = {270, 272}, dst = {
				{x = dst_x[i] + geometry.lane_x + geometry.play_position, y = geometry.lane_y + 39, w = dst_w[i], h = dst_h[i]}
		}})
	end
end

		-- judge
table.insert(skin.destination,{id = "judge"})
	
		-- fast/slow
if isFastSlowOn() then
	table.insert(skin.destination,	{
		id = "fast", offsets = {3, 32, 52}, op = {1242}, loop = -1, timer = 46, dst = {
			{time = 0, x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-80), y = geometry.judge_y + (-50), w = 160, h = 42},
			{time = 500}
		}
	})
	table.insert(skin.destination,	{
		id = "slow", offsets = {3, 32, 52}, op = {1243}, loop = -1, timer = 46, dst = {
			{time = 0, x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-80), y = geometry.judge_y + (-50), w = 160, h = 42},
			{time = 500}
		}
	})
elseif isFastSlowMS() then
		-- fast/slow ms
	table.insert(skin.destination,	{
		id = "fsms-num", offsets = {3, 32, 52}, op = {-241}, loop = -1, timer = 46, dst = {
			{time = 0, x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-100), y = geometry.judge_y + (-50), w = 40, h = 42},
			{time = 500}
		}
	})
elseif isFastSlowMSall() then
	table.insert(skin.destination,	{
		id = "fsms-num", offsets = {3, 32, 52}, op = {32}, loop = -1, timer = 46, dst = {
			{time = 0, x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-100), y = geometry.judge_y + (-50), w = 40, h = 42},
			{time = 500}
		}
	})
end

		-- ターゲットとのスコア差
		-- Score difference from target.
if isTargetBest() then
	table.insert(skin.destination,	{
		id = "diff-target", offsets = {3, 32, 53}, op = {32}, timer = 41, draw = function()
			if (main_state.float_number(113) == 0) and main_state.option(32)then
				return true
			end
		end, dst = {
			{time = 0, x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-100), y = geometry.judge_y + (-258), w = 40, h = 42, a = 0, acc = 2}
		}
	})
	table.insert(skin.destination,	{
		id = "diff-best", offsets = {3, 32, 53}, op = {32}, timer = 41, draw = function()			
			if (main_state.float_number(113) ~= 0) and main_state.option(32) then
				return true
			end
		end, dst = {
			{x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-100), y = geometry.judge_y + (-258), w = 40, h = 42, a = 0, acc = 2}
		}
	})
elseif isTargetRank() then
	table.insert(skin.destination,	{
		id = "diff-target", offsets = {3, 32, 53}, op = {32}, timer = 41, dst = {
			{x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-100), y = geometry.judge_y + (-258), w = 40, h = 42, a = 0, acc = 2}
		}
	})
end

		-- ターゲット2 Targetで選択してない方を自動で表示 初回プレイでは表示されない
		-- Target2: Automatic display of the one not selected in Target. Not shown on first play.
if isTarget2On() then
	local targ_x = -132
	if isTargetRank() then
		table.insert(skin.destination,	{
			id = "diff-best", offsets = {3, 32, 54}, op = {32}, timer = 41, draw = function()
				if (main_state.float_number(113) ~= 0) and main_state.option(32) then
					return true
				end
			end, dst = {
				{x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-100), y = geometry.judge_y + (-310), w = 40, h = 42, a = 0, acc = 2}
			}
		})
	elseif isTargetBest()then
		table.insert(skin.destination,	{
			id = "diff-target", offsets = {3, 32, 54}, op = {32}, timer = 41, draw = function()
				if (main_state.float_number(113) ~= 0) and main_state.option(32) then
					return true
				end
			end,dst = {
				{x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-100), y = geometry.judge_y + (-310), w = 40, h = 42, a = 0, acc = 2}
			}
		})
	end
end

		-- レーン上でのレート表示
		-- Rate display on lanes
if isScoreRateOn() then
	append_all(skin.destination, {
		{id = "play-rate-num", offsets = {3, 55}, timer = 41, dst = {
			{x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-105), y = geometry.judge_y + (-365), w = 33, h = 45, a = 0, acc = 2}
		}},
		{id = "play-rate-adot-num", offsets = {3, 55}, timer = 41, dst = {		
			{x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-105) + 111, y = geometry.judge_y + (-365), w = 33, h = 45, a = 0, acc = 2}
		}},
		{id = "play-rate-DnP", offsets = {3, 55}, timer = 41, dst = {
			{x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-105) + 99, y = geometry.judge_y + (-365), w = 12, h = 45, a = 0, acc = 2}
		}},
	})
end

		-- タイミング・ヴィジュアライザー
		-- Timing Visualizer
if isTimingVisualizerOn() then
	skin.timingvisualizer = {{id = "timing-visualizer"}}
	append_all(skin.destination, {
		{id = "timing-visualizer", offsets = {3, 59}, op = {32}, timer = 41, dst = {
			{x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-160), y = geometry.judge_y + (-420), w = 320, h = 32, a = 0, acc = 2}
		}},
		{id = "timing-visualizer-frame", offsets = {3, 59}, op = {32}, timer = 41, dst = {
			{x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-161), y = geometry.judge_y + (-449), w = 322, h = 62, a = 0, acc = 2}
		}},
	})
end

		-- レーン枠
		-- lane frame
if isLaneFrameOn() then
	append_all(skin.destination, {
		{id = "lane_frame", dst = {
			{x = geometry.lane_x + geometry.play_position + (-17), y = 0, w = 15, h = 1080, r = 255, g = 255, b = 255, a = 255, acc = 2}
		}},
		{id = "lane_frame", dst = {
			{x = geometry.lane_x + geometry.play_position + geometry.lane_w + 2, y = 0, w = 15, h = 1080, r = 255, g = 255, b = 255, a = 255, acc = 2}
		}},
	})
end

		-- ボム
		-- bomb
local bombCycle = 251
local lnbombCycle = 160

local b_init = {"1", "2", "3", "4", "5", "6", "7", "s"}
local bombTimer = {51, 52, 53, 54, 55, 56, 57, 50}
local lnBombTimer = {71, 72, 73, 74, 75, 76, 77, 70}
local bombPosX = {}
local bombWidth = 600
local bombHeight = 450
local adjustPosY = 0

			-- ボム中心点
			-- center of bomb
if isScratchRight() then
	bombPosX = {45, 139, 233, 327, 421, 515, 609, 728}
else
	bombPosX = {189, 283, 377, 471, 565, 659, 753, 70}
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
		id = "bomb-"..b_init[i], offset = 3, loop = -1, filter = 1, timer = bombTimer[i], blend = 2, dst = {
			{time = 0, x = geometry.play_position + geometry.lane_x + bombPosX[i] - bombWidth / 2, y = geometry.lane_y - (bombHeight / 2), w = bombWidth, h = bombHeight},
			{time = bombCycle - 1}
		}
	})
end
	
				-- LN爆発エフェクトの配置
				-- LN explosion effect placement
for i = 1, #b_init, 1 do
	table.insert(skin.destination,	{
		id = "lnbomb-"..b_init[i], offset = 3, filter = 1, timer = lnBombTimer[i], blend = 2, dst = {
			{time = 0, x = geometry.play_position + geometry.lane_x + bombPosX[i] - bombWidth / 2, y = geometry.lane_y - (bombHeight / 2), w = bombWidth, h = bombHeight},
			{time = lnbombCycle - 1}
		}
	})
end

		-- ゲージ
		-- gauge
table.insert(skin.destination, {
	id = "gauge", dst = {
		{x = geometry.lane_x + geometry.play_position + 24, y = 0, w = 750, h = 24}
	}
})

		-- 曲の長さ
		-- song length
if isScratchRight() then	
	append_all(skin.destination, {
			-- 残り時間
			-- time left
		{id = "song-left-m", dst = {
			{x = geometry.play_position + geometry.lane_x + geometry.lane_w + 31, y = 30, w = 15, h = 18}
		}},
		{id = "song-left-s", dst = {
			{x = geometry.play_position + geometry.lane_x + geometry.lane_w + 70, y = 30, w = 15, h = 18}
		}},
		{id = "song-time-colon", dst = {
			{x = geometry.play_position + geometry.lane_x + geometry.lane_w + 61, y = 30, w = 9, h = 18}
		}},	
			-- 曲の長さスライダー
			-- song length slider
		{id = "song-progress-bar", dst = {
			{x = geometry.play_position + geometry.lane_x + geometry.lane_w + 76, y = 330, w = 4, h = 600, a = 100}
		}},
		{id = "song-progress-fin", dst = {
			{x = geometry.play_position + geometry.lane_x + geometry.lane_w + 76, y = 930, w = 4, h = -600}
		}},
		{id = "song-progress", dst = {
			{x = geometry.play_position + geometry.lane_x + geometry.lane_w + 72, y = 930, w = 12, h = 21}
		}},
	})
else
	append_all(skin.destination, {
			-- 残り時間
			-- time left	
		{id = "song-left-m", dst = {
			{x = geometry.play_position + geometry.lane_x + (-100), y = 30, w = 15, h = 18}
		}},
		{id = "song-left-s", dst = {
			{x = geometry.play_position + geometry.lane_x + (-61), y = 30, w = 15, h = 18}
		}},
		{id = "song-time-colon", dst = {
			{x = geometry.play_position + geometry.lane_x + (-70), y = 30, w = 9, h = 18}
		}},	
			-- 曲の長さスライダー
			-- song length slider		
		{id = "song-progress-bar", dst = {
			{x = geometry.play_position + geometry.lane_x + (-80), y = 330, w = 4, h = 600, a = 100}
		}},
		{id = "song-progress-fin", dst = {
			{x = geometry.play_position + geometry.lane_x + (-80), y = 930, w = 4, h = -600}
		}},
		{id = "song-progress", dst = {
			{x = geometry.play_position + geometry.lane_x + (-84), y = 930, w = 12, h = 21}
		}},
	})
end	

		-- 曲終了表示
		-- end of song
append_all(skin.destination, {
	{id = "eof", timer = 143, offset = 3, dst = {
		{x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-60), y = geometry.lane_y + 90, w = 120, h = 42}
	}},
		-- リプレイ表示
		-- replay
	{id = "replay", op = {84}, offset = 3, dst = {
		{x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-49), y = geometry.lane_y + 45, w = 98, h = 21}
	}},	
		-- オートプレイ表示
		-- auto play
	{id = "autoplay", op = {33}, offset = 3, dst = {
		{x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-66), y = geometry.lane_y + 45, w = 132, h = 21}
	}},
})

		--fullcombo
append_all(skin.destination, {
	{id = "fc-effect", loop = -1, timer = 48, stretch = 3, blend = 2, dst = {
		{time = 0, x = geometry.lane_x + geometry.play_position + (-2), y = geometry.lane_y, w = geometry.lane_w + 4, h = geometry.lane_h, a = 128},
		{time = 2100, y = geometry.lane_y + 100, a = 0}
	}},
	{id = "fullcombo", loop = -1, timer = 48, dst = {
		{time = 550, x = geometry.lane_x + geometry.play_position + geometry.lane_center + (-180), y = geometry.lane_y + 500, w = 360, h = 36, a = 0},
		{time = 650, a = 255},
		{time = 1600},
		{time = 1800, y = geometry.lane_y + 470, a = 0}
	}},
})
-- プレイエリア
-- play area

	-- ここまで
	-- to here

-- ロード中曲情報
-- song infomation in loading

	-- ここから
	-- from here

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
{id = "load-nostagefile", loop = 600, filter = 1, op = {80, 190}, dst = {
	{time = 0, x = 50, y = 420, w = 320, h = 240, a = 0},
	{time = 300},
	{time = 600, a = 255}
}})

			-- ロード終了
			-- loading end
table.insert(skin.destination,
{id = "load-nostagefile", timer = 40, loop = 300, filter = 1, op = {81, 190}, dst = {
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
-- ロード中曲情報
-- song infomation in loading

	-- ここまで
	-- to here

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