main_state = require("main_state")

local function append_all(list, list1)
	for _, v in ipairs(list1) do
		table.insert(list, v)
	end
end

local OPTION = 899
local function optionCount()
	OPTION = OPTION + 1
	return OPTION
end

local SC_LEFT = 							optionCount()
local SC_RIGHT = 							optionCount()

local LANE_FRAME_ON = 						optionCount()
local LANE_FRAME_OFF = 						optionCount()

local LANE_CENTER_NOTES = 					optionCount()
local LANE_CENTER_ALL = 					optionCount()

local NOTES_WIDTH_TEMPLATE = 				optionCount()
local NOTES_WIDTH_CUSTOM = 					optionCount()

local NOTES_5KEY_ALIGN_RL = 				optionCount()
local NOTES_5KEY_ALIGN_CENTER = 			optionCount()
local NOTES_5KEY_ALIGN_ENLARGE = 			optionCount()

local NOTES_HEIGHT_60_PIX = 				optionCount()
local NOTES_HEIGHT_50_PIX = 				optionCount()
local NOTES_HEIGHT_40_PIX = 				optionCount()
local NOTES_HEIGHT_30_PIX = 				optionCount()
local NOTES_HEIGHT_CUSTOM = 				optionCount()

local JUDGE_SIZE_MULUTIPLIER_x40 =			optionCount()
local JUDGE_SIZE_MULUTIPLIER_x60 =			optionCount()
local JUDGE_SIZE_MULUTIPLIER_x80 =			optionCount()
local JUDGE_SIZE_MULUTIPLIER_x100 =			optionCount()

local KEYBEAM_DISPLAY_FAST = 				optionCount()
local KEYBEAM_DISPLAY_SLOW = 				optionCount()

local KEYBEAM_HEIGHT_MULUTIPLIER_x100 =		optionCount()
local KEYBEAM_HEIGHT_MULUTIPLIER_x90 =		optionCount()
local KEYBEAM_HEIGHT_MULUTIPLIER_x80 =		optionCount()
local KEYBEAM_HEIGHT_MULUTIPLIER_x70 =		optionCount()
local KEYBEAM_HEIGHT_MULUTIPLIER_x60 =		optionCount()
local KEYBEAM_HEIGHT_MULUTIPLIER_x50 =		optionCount()
local KEYBEAM_HEIGHT_MULUTIPLIER_x40 =		optionCount()
local KEYBEAM_HEIGHT_MULUTIPLIER_x30 =		optionCount()
local KEYBEAM_HEIGHT_MULUTIPLIER_x20 =		optionCount()
local KEYBEAM_HEIGHT_MULUTIPLIER_x10 =		optionCount()

local KEYBEAM_ALPHA_MULUTIPLIER_x100 =		optionCount()
local KEYBEAM_ALPHA_MULUTIPLIER_x90 =		optionCount()
local KEYBEAM_ALPHA_MULUTIPLIER_x80 =		optionCount()
local KEYBEAM_ALPHA_MULUTIPLIER_x70 =		optionCount()
local KEYBEAM_ALPHA_MULUTIPLIER_x60 =		optionCount()
local KEYBEAM_ALPHA_MULUTIPLIER_x50 =		optionCount()
local KEYBEAM_ALPHA_MULUTIPLIER_x40 =		optionCount()
local KEYBEAM_ALPHA_MULUTIPLIER_x30 =		optionCount()
local KEYBEAM_ALPHA_MULUTIPLIER_x20 =		optionCount()
local KEYBEAM_ALPHA_MULUTIPLIER_x10 =		optionCount()

local TARGET_OFF = 							optionCount()
local TARGET_MYBEST = 						optionCount()
local TARGET_TARGET = 						optionCount()

local TARGET2_OFF = 						optionCount()
local TARGET2_ON = 							optionCount()

local SCORE_RATE_OFF = 						optionCount()
local SCORE_RATE_ON = 						optionCount()

local FAST_SLOW_CENTER = 					optionCount()
local FAST_SLOW_RL = 						optionCount()
local FAST_SLOW_MS_CENTER = 				optionCount()
local FAST_SLOW_MS_RL = 					optionCount()

local TIMINGVISUALIZER_OFF = 				optionCount()
local TIMINGVISUALIZER_ON = 				optionCount()

local FAST_SLOW_COUNT_OFF = 				optionCount()
local FAST_SLOW_COUNT_ON = 					optionCount()
local FAST_SLOW_THRESHOLD_DEFAULT = 		optionCount()
local FAST_SLOW_THRESHOLD_CUSTOM = 			optionCount()

local BOMB_UNDER_GAUGE_OFF = 				optionCount()
local BOMB_UNDER_GAUGE_ON = 				optionCount()
local BOMB_PROPERTY_TEMPLATE =				optionCount()
local BOMB_PROPERTY_CUSTOM =				optionCount()

local HI_SPEED_RELATIVE =					optionCount()
local HI_SPEED_ABSOLUTE =					optionCount()

local MASCOT_STOP = 						optionCount()
local MASCOT_JUMP = 						optionCount()
local MASCOT_FLOAT = 						optionCount()

local OFFSET = 59
local function offsetCount()
	OFFSET = OFFSET + 1
	return OFFSET
end

local BG_DARKNESS = 						offsetCount()
local BGA_DARKNESS = 						offsetCount()
local BARLINE_ALPHA = 						offsetCount()
local JUDGE_POS_ALPHA = 					offsetCount()
local JUDGE_NUM_POS_ALPHA = 				offsetCount()
local FAST_SLOW_POS_ALPHA = 				offsetCount()
local TARGET_POS_ALPHA = 					offsetCount()
local TARGET2_POS_ALPHA = 					offsetCount()
local SCORE_RATE_POS_ALPHA = 				offsetCount()
local TIMINGVISUALIZER_POS_ALPHA =		 	offsetCount()
local FAST_SLOW_COUNT_POS_ALPHA = 			offsetCount()
local JUDGELINE_POS = 						offsetCount()
local JUDGELINE_HEIGHT = 					offsetCount()
local BOMB_POS_ALPHA = 						offsetCount()
local GAUGE_POS = 							offsetCount()
local GAUGE_ALPHA = 						offsetCount()

local original_offset = {
	{name = "Background Darkness", 						id = BG_DARKNESS, 																	a = true},
	{name = "BGA Darkness", 							id = BGA_DARKNESS, 																	a = true},
	{name = "Barline Alpha", 							id = BARLINE_ALPHA, 																a = true},
	{name = "Judge Position & Alpha", 					id = JUDGE_POS_ALPHA, 				x = true, 	y = true, 							a = true},
	{name = "Combo Number Position & Alpha", 			id = JUDGE_NUM_POS_ALPHA, 			x = true, 	y = true, 							a = true},
	{name = "F/S Position & Alpha", 					id = FAST_SLOW_POS_ALPHA, 			x = true, 	y = true, 							a = true},
	{name = "Target Position & Alpha", 					id = TARGET_POS_ALPHA, 				x = true, 	y = true, 							a = true},
	{name = "Target2 Position & Alpha", 				id = TARGET2_POS_ALPHA, 			x = true, 	y = true, 							a = true},
	{name = "Score Rate Position & Alpha", 				id = SCORE_RATE_POS_ALPHA, 			x = true, 	y = true, 							a = true},
	{name = "T-Visualizer Position & Alpha",			id = TIMINGVISUALIZER_POS_ALPHA,	x = true, 	y = true, 	w = true, 	h = true, 	a = true},
	{name = "F/S Count Position & Alpha", 				id = FAST_SLOW_COUNT_POS_ALPHA, 	x = true, 	y = true, 							a = true},
	{name = "Judgeline Position", 						id = JUDGELINE_POS, 							y = true},
	{name = "Judgeline Height (Default = 24 pixel)",	id = JUDGELINE_HEIGHT, 													h = true},
	{name = "Bomb Position & Alpha", 					id = BOMB_POS_ALPHA,	 						y = true,							a = true},
	{name = "Gauge Position (Inverted display at 2P)", 	id = GAUGE_POS, 					x = true, 	y = true, 	w = true, 	h = true},
	{name = "Gauge Alpha", 								id = GAUGE_ALPHA, 																	a = true}
}

local original_filepath = {
	{name = "Mascot", 									path = "parts/!_mascot/*.png", 					def = "!_Default"},
	{name = "Background Image", 						path = "parts/bg/*.png", 						def = "Black"},

	{name = "White-Notes: 1-3-5-7 / 1-5", 				path = "parts/notes/1-1_white/*.png", 			def = "White_#Simple_#f3f3f3"},
	{name = "White-Long-Start: 1-3-5-7 / 1-5", 			path = "parts/notes/1-2_white_lnSt/*.png", 		def = "White_#Simple_#f3f3f3"},
	{name = "White-Long-End: 1-3-5-7 / 1-5", 			path = "parts/notes/1-3_white_lnEn/*.png", 		def = "Off"},
	{name = "White-Long-Body: 1-3-5-7 / 1-5", 			path = "parts/notes/1-4_white_lnBo/*.png", 		def = "White_#Simple_#f3f3f3"},
	{name = "White-Long-Active: 1-3-5-7 / 1-5", 		path = "parts/notes/1-5_white_lnAc/*.png", 		def = "White_#Simple_#f3f3f3"},
	{name = "White-Mine: 1-3-5-7 / 1-5", 				path = "parts/notes/1-6_white_mine/*.png", 		def = "Off"},

	{name = "Blue-Notes: 2-6 / 2-4", 					path = "parts/notes/2-1_blue/*.png", 			def = "LightBlue_#Simple_#35eaff"},
	{name = "Blue-Long-Start: 2-6 / 2-4", 				path = "parts/notes/2-2_blue_lnSt/*.png", 		def = "LightBlue_#Simple_#35eaff"},
	{name = "Blue-Long-End: 2-6 / 2-4", 				path = "parts/notes/2-3_blue_lnEn/*.png", 		def = "Off"},
	{name = "Blue-Long-Body: 2-6 / 2-4", 				path = "parts/notes/2-4_blue_lnBo/*.png", 		def = "LightBlue_#Simple_#35eaff"},
	{name = "Blue-Long-Active: 2-6 / 2-4", 				path = "parts/notes/2-5_blue_lnAc/*.png", 		def = "LightBlue_#Simple_#35eaff"},
	{name = "Blue-Mine: 2-6 / 2-4", 					path = "parts/notes/2-6_blue_mine/*.png", 		def = "Off"},

	{name = "Yellow-Notes: 4 / 3", 						path = "parts/notes/3-1_yellow/*.png", 			def = "Yellow_#Simple_#ffde35"},
	{name = "Yellow-Long-Start: 4 / 3", 				path = "parts/notes/3-2_yellow_lnSt/*.png", 	def = "Yellow_#Simple_#ffde35"},
	{name = "Yellow-Long-End: 4 / 3", 					path = "parts/notes/3-3_yellow_lnEn/*.png", 	def = "Off"},
	{name = "Yellow-Long-Body: 4 / 3", 					path = "parts/notes/3-4_yellow_lnBo/*.png", 	def = "Yellow_#Simple_#ffde35"},
	{name = "Yellow-Long-Active: 4 / 3", 				path = "parts/notes/3-5_yellow_lnAc/*.png", 	def = "Yellow_#Simple_#ffde35"},
	{name = "Yellow-Mine: 4 / 3", 						path = "parts/notes/3-6_yellow_mine/*.png", 	def = "Off"},

	{name = "Scratch-Notes: 0-8", 						path = "parts/notes/4-1_scratch/*.png", 	 	def = "Green_#Simple_#5def35"},
	{name = "Scratch-Long-Start: 0-8", 					path = "parts/notes/4-2_scratch_lnSt/*.png", 	def = "Green_#Simple_#5def35"},
	{name = "Scratch-Long-End: 0-8", 					path = "parts/notes/4-3_scratch_lnEn/*.png", 	def = "Off"},
	{name = "Scratch-Long-Body: 0-8", 					path = "parts/notes/4-4_scratch_lnBo/*.png", 	def = "Green_#Simple_#5def35"},
	{name = "Scratch-Long-Active: 0-8", 				path = "parts/notes/4-5_scratch_lnAc/*.png", 	def = "Green_#Simple_#5def35"},
	{name = "Scratch-Mine: 0-8", 						path = "parts/notes/4-6_scratch_mine/*.png", 	def = "Off"},

	{name = "White-Keybeam: 1-3-5-7 / 1-5", 			path = "parts/keybeam/1_white/*.png", 			def = "Blue"},
	{name = "Blue-Keybeam: 2-6 / 2-4", 					path = "parts/keybeam/2_blue/*.png", 			def = "Blue"},
	{name = "Yellow-Keybeam: 4 / 3", 					path = "parts/keybeam/3_yellow/*.png", 			def = "Blue"},
	{name = "Scratch-Keybeam: 0-8", 					path = "parts/keybeam/4_scratch/*.png", 		def = "Blue"},

	{name = "Judge: Perfect", 							path = "parts/judge/1_pg/*.png", 				def = "PERFECT_Default"},
	{name = "Judge: Great", 							path = "parts/judge/2_gr/*.png", 				def = "GREAT_Default"},
	{name = "Judge: Good",	 							path = "parts/judge/3_gd/*.png", 				def = "GOOD_Default"},
	{name = "Judge: Bad", 								path = "parts/judge/4_bd/*.png", 				def = "BAD_Default"},
	{name = "Judge: Poor", 								path = "parts/judge/5_pr/*.png", 				def = "POOR_Default"},
	{name = "Judge: Miss",	 							path = "parts/judge/6_ms/*.png",				def = "MISS_Default"},
	{name = "Judge: Num", 								path = "parts/judgenum/*.png", 					def = "Default_Square"},

	{name = "Gauge: Hazard", 							path = "parts/colors/1_hazard/*.png", 			def = "Blue1_#389eff"},
	{name = "Gauge: Ex-Hard", 							path = "parts/colors/2_exhard/*.png", 			def = "Yellow1_#ffff40"},
	{name = "Gauge: Hard", 								path = "parts/colors/3_hard/*.png", 			def = "White1_#ffffff"},
	{name = "Gauge: Normal", 							path = "parts/colors/4_normal/*.png", 			def = "LightBlue1_#74f7f7"},
	{name = "Gauge: Easy", 								path = "parts/colors/5_easy/*.png", 			def = "Green1_#80ff40"},
	{name = "Gauge: Assist-Easy", 						path = "parts/colors/6_aseasy/*.png", 			def = "Pink1_#ffb6c1"},

	{name = "Judge Line", 								path = "parts/colors/7_judgeline/*.png", 		def = "White4_#a3d1ff"},
	{name = "Bomb", 									path = "parts/!_bomb/*.png", 					def = "!_x150%_White_clear_ring_SCUROed"},
	{name = "Lane Cover", 								path = "parts/lanecover/*.png", 				def = "Simple"},
	{name = "Fast/Slow: Character", 					path = "parts/fast_slow/character/*.png", 		def = "Fast_Slow"},
	{name = "Fast/Slow: Number", 						path = "parts/fast_slow/number/*.png", 			def = "Default"},
	{name = "Mybest Number", 							path = "parts/scorenum/mybest/*.png", 			def = "Default"},
	{name = "Target Number", 							path = "parts/scorenum/target/*.png", 			def = "Default"}
}

local original_property = {
	{name = "Scratch Side", 							item = {
		{name = "Left", 								op = SC_LEFT},
		{name = "Right", 								op = SC_RIGHT}
	}},
	{name = "Lane Frame", 								item = {
		{name = "Off", 									op = LANE_FRAME_OFF},
		{name = "On", 									op = LANE_FRAME_ON}
	}},
	{name = "Lane Center", 								item = {
		{name = "Notes", 								op = LANE_CENTER_NOTES},
		{name = "Notes + Scratch", 						op = LANE_CENTER_ALL}
	}},
	{name = "Notes Width", 								item = {
		{name = "Template", 							op = NOTES_WIDTH_TEMPLATE},
		{name = "Custom", 								op = NOTES_WIDTH_CUSTOM}
	}},
	{name = "Notes 5Key Align", 						item = {
		{name = "Align Right or Left", 					op = NOTES_5KEY_ALIGN_RL},
		{name = "Center", 								op = NOTES_5KEY_ALIGN_CENTER},
		{name = "Enlarge (拡大)", 						op = NOTES_5KEY_ALIGN_ENLARGE}
	}},
	{name = "Notes Height", 							item = {
		{name = "60 pixel", 							op = NOTES_HEIGHT_60_PIX},
		{name = "50 pixel", 							op = NOTES_HEIGHT_50_PIX},
		{name = "40 pixel", 							op = NOTES_HEIGHT_40_PIX},
		{name = "30 pixel", 							op = NOTES_HEIGHT_30_PIX},
		{name = "Custom", 								op = NOTES_HEIGHT_CUSTOM}
	}},
	{name = "Judge Size",		 						item = {
		{name = "40%", 									op = JUDGE_SIZE_MULUTIPLIER_x40},
		{name = "60%", 									op = JUDGE_SIZE_MULUTIPLIER_x60},
		{name = "80%", 									op = JUDGE_SIZE_MULUTIPLIER_x80},
		{name = "100%",		 							op = JUDGE_SIZE_MULUTIPLIER_x100}
	}},
	{name = "Keybeam Display", 							item = {
		{name = "Fast", 								op = KEYBEAM_DISPLAY_FAST},
		{name = "Slow", 								op = KEYBEAM_DISPLAY_SLOW}
	}},
	{name = "Keybeam Height Multiplier", 				item = {
		{name = "100%", 								op = KEYBEAM_HEIGHT_MULUTIPLIER_x100},
		{name = "90%", 									op = KEYBEAM_HEIGHT_MULUTIPLIER_x90},
		{name = "80%", 									op = KEYBEAM_HEIGHT_MULUTIPLIER_x80},
		{name = "70%", 									op = KEYBEAM_HEIGHT_MULUTIPLIER_x70},
		{name = "60%", 									op = KEYBEAM_HEIGHT_MULUTIPLIER_x60},
		{name = "50%", 									op = KEYBEAM_HEIGHT_MULUTIPLIER_x50},
		{name = "40%", 									op = KEYBEAM_HEIGHT_MULUTIPLIER_x40},
		{name = "30%", 									op = KEYBEAM_HEIGHT_MULUTIPLIER_x30},
		{name = "20%", 									op = KEYBEAM_HEIGHT_MULUTIPLIER_x20},
		{name = "10%", 									op = KEYBEAM_HEIGHT_MULUTIPLIER_x10}
	}},
	{name = "Keybeam Alpha Multiplier", 				item = {
		{name = "100%", 								op = KEYBEAM_ALPHA_MULUTIPLIER_x100},
		{name = "90%", 									op = KEYBEAM_ALPHA_MULUTIPLIER_x90},
		{name = "80%", 									op = KEYBEAM_ALPHA_MULUTIPLIER_x80},
		{name = "70%", 									op = KEYBEAM_ALPHA_MULUTIPLIER_x70},
		{name = "60%", 									op = KEYBEAM_ALPHA_MULUTIPLIER_x60},
		{name = "50%", 									op = KEYBEAM_ALPHA_MULUTIPLIER_x50},
		{name = "40%", 									op = KEYBEAM_ALPHA_MULUTIPLIER_x40},
		{name = "30%", 									op = KEYBEAM_ALPHA_MULUTIPLIER_x30},
		{name = "20%", 									op = KEYBEAM_ALPHA_MULUTIPLIER_x20},
		{name = "10%", 									op = KEYBEAM_ALPHA_MULUTIPLIER_x10}
	}},
	{name = "Target", 									item = {
		{name = "Off", 									op = TARGET_OFF},
		{name = "My Best", 								op = TARGET_MYBEST},
		{name = "Target", 								op = TARGET_TARGET}
	}},
	{name = "Target2 (Left)", 							item = {
		{name = "Off", 									op = TARGET2_OFF},
		{name = "On", 									op = TARGET2_ON}
	}},
	{name = "Score Rate", 								item = {
		{name = "Off", 									op = SCORE_RATE_OFF},
		{name = "On", 									op = SCORE_RATE_ON}
	}},
	{name = "Fast/Slow", 								item = {
		{name = "Sign (Center)", 						op = FAST_SLOW_CENTER},
		{name = "Sign (Right and Left)", 				op = FAST_SLOW_RL},
		{name = "+-MS (Center)", 						op = FAST_SLOW_MS_CENTER},
		{name = "+-MS (Right and Left)",				op = FAST_SLOW_MS_RL}
	}},
	{name = "Timing Visualizer", 						item = {
		{name = "Off", 									op = TIMINGVISUALIZER_OFF},
		{name = "On", 									op = TIMINGVISUALIZER_ON}
	}},
	{name = "F/S Count on the Lane",					item = {
		{name = "Off", 									op = FAST_SLOW_COUNT_OFF},
		{name = "On", 									op = FAST_SLOW_COUNT_ON}
	}},
	{name = "F/S Threshold (しきい値)",					item = {
		{name = "Default", 								op = FAST_SLOW_THRESHOLD_DEFAULT},
		{name = "Custom", 								op = FAST_SLOW_THRESHOLD_CUSTOM}
	}},
	{name = "Bomb Under the Gauge", 					item = {
		{name = "Off", 									op = BOMB_UNDER_GAUGE_OFF},
		{name = "On", 									op = BOMB_UNDER_GAUGE_ON}
	}},
	{name = "Bomb Property",		 					item = {
		{name = "Template", 							op = BOMB_PROPERTY_TEMPLATE},
		{name = "Custom", 								op = BOMB_PROPERTY_CUSTOM}
	}},
	{name = "Hi-Speed Type",		 					item = {
		{name = "Relative", 							op = HI_SPEED_RELATIVE},
		{name = "Absolute", 							op = HI_SPEED_ABSOLUTE}
	}},
	{name = "Mascot Display", 							item = {
		{name = "Stop", 								op = MASCOT_STOP},
		{name = "Jump", 								op = MASCOT_JUMP},
		{name = "Float", 								op = MASCOT_FLOAT}
	}}
}

local function createTable(original_table, exclude_names, category_name)
    local t = {}
    local c = {name = category_name, item = {}}
    for i, v in ipairs(original_table) do
        local exclude = false
        for _, name in ipairs(exclude_names) do
            if v.name == name then
                exclude = true
                break
            end
        end
        if not exclude then
            local new_item = {}
            for orig_key, orig_value in next, v, nil do
                exclude = false
                for _, name in ipairs(exclude_names) do
                    if orig_key == name then
                        exclude = true
                        break
                    end
                end
                if not exclude then
                    if type(orig_value) == "table" then
                        new_item[orig_key] = createTable(orig_value, exclude_names, category_name)
                    else
                        new_item[orig_key] = orig_value
                    end
                end
                exclude = false
            end
            new_item.category = category_name .. tostring(i)
            table.insert(t, new_item)
            table.insert(c.item, category_name .. tostring(i))
        end
    end
    return t, c
end

local function processHeader(type)
	do
		local exclude_names = 	{}
		local _tmp = 			{}
		local _header = 		{}
		local _category = 		{}

		if type == 0 then

			_header.offset, _tmp = createTable(original_offset, exclude_names, "Offset")
			_category.Offset = _tmp

			_header.filepath, _tmp = createTable(original_filepath, exclude_names, "Filepath")
			_category.Filepath = _tmp

			exclude_names = {"Notes 5Key Align"}
			_header.property, _tmp = createTable(original_property, exclude_names, "Property")
			_category.Property = _tmp

		elseif type == 1 then

			_header.offset, _tmp = createTable(original_offset, exclude_names, "Offset")
			_category.Offset = _tmp

			_header.filepath, _tmp = createTable(original_filepath, exclude_names, "Filepath")
			_category.Filepath = _tmp

			_header.property, _tmp = createTable(original_property, exclude_names, "Property")
			_category.Property = _tmp

		elseif type == 4 then

			_header.offset, _tmp = createTable(original_offset, exclude_names, "Offset")
			_category.Offset = _tmp

			_header.filepath, _tmp = createTable(original_filepath, exclude_names, "Filepath")
			_category.Filepath = _tmp

			exclude_names = {"Lane Center", "Notes 5Key Align",}
			_header.property, _tmp = createTable(original_property, exclude_names, "Property")
			_category.Property = _tmp

		end
		return _header, _category
	end
end

local header = {
	--[[
		Skin Type
		0:7keys
		1:5keys
		4:9keys
	--]]
	type = 		nil, -- set in ".luaskin"
	name = 		"Rm-skin ver0.2.0",
	w = 		1920,
	h = 		1080,
	loadend = 	3000,
	playstart = 1000,
	scene = 	3600000,
	input = 	0,
	close = 	1500,
	fadeout = 	500,
	property = 	nil,
	filepath = 	nil,
	offset = 	nil,
	category = 	nil,
	process = 	processHeader
}

local function is7key() return header.type == 0 end
local function is5key() return header.type == 1 end
local function is9key() return header.type == 4 end

local function isScratchLeft() 			return skin_config.option["Scratch Side"] == 				SC_LEFT end
local function isScratchRight() 		return skin_config.option["Scratch Side"] == 				SC_RIGHT end
local function isLaneFrameOn() 			return skin_config.option["Lane Frame"] == 					LANE_FRAME_ON end
local function isLaneCenterPosKey() 	return skin_config.option["Lane Center"] == 				LANE_CENTER_NOTES end

local function isNotesWidthTemplate() 	return skin_config.option["Notes Width"] == 				NOTES_WIDTH_TEMPLATE end
local function isNotesWidthCustom() 	return skin_config.option["Notes Width"] == 				NOTES_WIDTH_CUSTOM end

local function is5keyAlignRL() 			return skin_config.option["Notes 5Key Align"] ==			NOTES_5KEY_ALIGN_RL end
local function is5keyAlignCenter() 		return skin_config.option["Notes 5Key Align"] ==			NOTES_5KEY_ALIGN_CENTER end
local function is5keyAlignEnlarge() 	return skin_config.option["Notes 5Key Align"] ==			NOTES_5KEY_ALIGN_ENLARGE end

local function isNotesHeight_60() 		return skin_config.option["Notes Height"] == 				NOTES_HEIGHT_60_PIX end
local function isNotesHeight_50() 		return skin_config.option["Notes Height"] == 				NOTES_HEIGHT_50_PIX end
local function isNotesHeight_40() 		return skin_config.option["Notes Height"] == 				NOTES_HEIGHT_40_PIX end
local function isNotesHeight_30() 		return skin_config.option["Notes Height"] == 				NOTES_HEIGHT_30_PIX end
local function isNotesHeightCustom() 	return skin_config.option["Notes Height"] == 				NOTES_HEIGHT_CUSTOM end

local function isJudgeSize_x40() 		return skin_config.option["Judge Size"] ==	 				JUDGE_SIZE_MULUTIPLIER_x40 end
local function isJudgeSize_x60() 		return skin_config.option["Judge Size"] ==	 				JUDGE_SIZE_MULUTIPLIER_x60 end
local function isJudgeSize_x80() 		return skin_config.option["Judge Size"] ==	 				JUDGE_SIZE_MULUTIPLIER_x80 end

local function isKeybeamFast() 			return skin_config.option["Keybeam Display"] == 			KEYBEAM_DISPLAY_FAST end

local function isKeybeamHeight_x100() 	return skin_config.option["Keybeam Height Multiplier"] == 	KEYBEAM_HEIGHT_MULUTIPLIER_x100 end
local function isKeybeamHeight_x90() 	return skin_config.option["Keybeam Height Multiplier"] == 	KEYBEAM_HEIGHT_MULUTIPLIER_x90 end
local function isKeybeamHeight_x80() 	return skin_config.option["Keybeam Height Multiplier"] == 	KEYBEAM_HEIGHT_MULUTIPLIER_x80 end
local function isKeybeamHeight_x70() 	return skin_config.option["Keybeam Height Multiplier"] == 	KEYBEAM_HEIGHT_MULUTIPLIER_x70 end
local function isKeybeamHeight_x60() 	return skin_config.option["Keybeam Height Multiplier"] == 	KEYBEAM_HEIGHT_MULUTIPLIER_x60 end
local function isKeybeamHeight_x50() 	return skin_config.option["Keybeam Height Multiplier"] == 	KEYBEAM_HEIGHT_MULUTIPLIER_x50 end
local function isKeybeamHeight_x40() 	return skin_config.option["Keybeam Height Multiplier"] == 	KEYBEAM_HEIGHT_MULUTIPLIER_x40 end
local function isKeybeamHeight_x30() 	return skin_config.option["Keybeam Height Multiplier"] == 	KEYBEAM_HEIGHT_MULUTIPLIER_x30 end
local function isKeybeamHeight_x20() 	return skin_config.option["Keybeam Height Multiplier"] == 	KEYBEAM_HEIGHT_MULUTIPLIER_x20 end

local function isKeybeamAlpha_x100() 	return skin_config.option["Keybeam Alpha Multiplier"] == 	KEYBEAM_ALPHA_MULUTIPLIER_x100 end
local function isKeybeamAlpha_x90() 	return skin_config.option["Keybeam Alpha Multiplier"] == 	KEYBEAM_ALPHA_MULUTIPLIER_x90 end
local function isKeybeamAlpha_x80() 	return skin_config.option["Keybeam Alpha Multiplier"] == 	KEYBEAM_ALPHA_MULUTIPLIER_x80 end
local function isKeybeamAlpha_x70() 	return skin_config.option["Keybeam Alpha Multiplier"] == 	KEYBEAM_ALPHA_MULUTIPLIER_x70 end
local function isKeybeamAlpha_x60() 	return skin_config.option["Keybeam Alpha Multiplier"] == 	KEYBEAM_ALPHA_MULUTIPLIER_x60 end
local function isKeybeamAlpha_x50() 	return skin_config.option["Keybeam Alpha Multiplier"] == 	KEYBEAM_ALPHA_MULUTIPLIER_x50 end
local function isKeybeamAlpha_x40() 	return skin_config.option["Keybeam Alpha Multiplier"] == 	KEYBEAM_ALPHA_MULUTIPLIER_x40 end
local function isKeybeamAlpha_x30() 	return skin_config.option["Keybeam Alpha Multiplier"] == 	KEYBEAM_ALPHA_MULUTIPLIER_x30 end
local function isKeybeamAlpha_x20() 	return skin_config.option["Keybeam Alpha Multiplier"] == 	KEYBEAM_ALPHA_MULUTIPLIER_x20 end

local function isTargetBest() 			return skin_config.option["Target"] == 						TARGET_MYBEST end
local function isTargetRank() 			return skin_config.option["Target"] == 						TARGET_TARGET end
local function isTarget2On() 			return skin_config.option["Target2 (Left)"] == 				TARGET2_ON end

local function isScoreRateOn() 			return skin_config.option["Score Rate"] == 					SCORE_RATE_ON end

local function isFastSlowCenter() 		return skin_config.option["Fast/Slow"] == 					FAST_SLOW_CENTER end
local function isFastSlowRnL() 			return skin_config.option["Fast/Slow"] == 					FAST_SLOW_RL end
local function isFastSlowMSCenter() 	return skin_config.option["Fast/Slow"] == 					FAST_SLOW_MS_CENTER end
local function isFastSlowMSRnL() 		return skin_config.option["Fast/Slow"] == 					FAST_SLOW_MS_RL end

local function isTimingVisualizerOn() 	return skin_config.option["Timing Visualizer"] == 			TIMINGVISUALIZER_ON end
local function isFSCountOnPlayOn() 		return skin_config.option["F/S Count on the Lane"] == 		FAST_SLOW_COUNT_ON end
local function isFSThresholdDef() 		return skin_config.option["F/S Threshold (しきい値)"] == 	FAST_SLOW_THRESHOLD_DEFAULT end

local function isBombUnderTheGaugeOn() 	return skin_config.option["Bomb Under the Gauge"] == 		BOMB_UNDER_GAUGE_ON end
local function isBombPropertyCustom()	return skin_config.option["Bomb Property"] == 				BOMB_PROPERTY_CUSTOM end

local function isHiSpeedRelative()		return skin_config.option["Hi-Speed Type"] == 				HI_SPEED_RELATIVE end
local function isMascotStop() 			return skin_config.option["Mascot Display"] == 				MASCOT_STOP end
local function isMascotJump() 			return skin_config.option["Mascot Display"] == 				MASCOT_JUMP end

local function main()

	local skin = {}
	for k, v in pairs(header) do
		skin[k] = v
	end

	local notesInfo = {}

	local function checkValue(obj, val)
		if obj and obj ~= false then
			if type(obj) == "number" then
				if val == 0 then
					if math.floor(obj) == obj then
						return obj >= 1 and obj <= 255
					else
						return false
					end
				else
					return obj >= 0.1 and obj <= 10.0
				end
			elseif type(obj) == "string" then
				return checkValue(tonumber(obj), val)
			end
		else
			return false
		end
	end

	local function setDefaultNotesWidth()
		if is5key() and is5keyAlignEnlarge() then
			notesInfo.Ot_width = 132
			notesInfo.Sc_width = 142
		elseif is9key() then
			notesInfo.Ot_width = 84
			notesInfo.Sc_width = 107
		else
			notesInfo.Ot_width = 94
			notesInfo.Sc_width = 144
		end
	end

	if isNotesWidthCustom() and is7key() then
		local lua_path = skin_config.get_path("CUSTOMIZE.lua")
		local status, result = pcall(function()
			return dofile(lua_path).load("CUSTOM_NOTES_WIDTH_7KEY")
		end)
		if status and result and type(result) == "table" and checkValue(result.OTHER_WIDTH, 0) and checkValue(result.SCRATCH_WIDTH, 0) then
			if result.OTHER_WIDTH * 7 + result.SCRATCH_WIDTH == 802 then
				notesInfo.Ot_width = result.OTHER_WIDTH
				notesInfo.Sc_width = result.SCRATCH_WIDTH
			else
				setDefaultNotesWidth()
			end
		else
			setDefaultNotesWidth()
		end
	elseif isNotesWidthCustom() and is5key() then
		local lua_path = skin_config.get_path("CUSTOMIZE.lua")
		local status, result = pcall(function()
			return dofile(lua_path).load("CUSTOM_NOTES_WIDTH_5KEY")
		end)
		if status and result and type(result) == "table" and checkValue(result.OTHER_WIDTH, 0) and checkValue(result.SCRATCH_WIDTH, 0) then
			if result.OTHER_WIDTH * 5 + result.SCRATCH_WIDTH == 802 then
				notesInfo.Ot_width = result.OTHER_WIDTH
				notesInfo.Sc_width = result.SCRATCH_WIDTH
			else
				setDefaultNotesWidth()
			end
		else
			setDefaultNotesWidth()
		end
	elseif isNotesWidthCustom() and is9key() then
		local lua_path = skin_config.get_path("CUSTOMIZE.lua")
		local status, result = pcall(function()
			return dofile(lua_path).load("CUSTOM_NOTES_WIDTH_9KEY")
		end)
		if status and result and type(result) == "table" and checkValue(result.OTHER_WIDTH, 0) and checkValue(result.SCRATCH_WIDTH, 0) then
			if result.OTHER_WIDTH * 7 + result.SCRATCH_WIDTH * 2 == 802 then
				notesInfo.Ot_width = result.OTHER_WIDTH
				notesInfo.Sc_width = result.SCRATCH_WIDTH
			else
				setDefaultNotesWidth()
			end
		else
			setDefaultNotesWidth()
		end
	else
		setDefaultNotesWidth()
	end

	if isNotesHeight_60() then
		notesInfo.height = 60
	elseif isNotesHeight_50() then
		notesInfo.height = 50
	elseif isNotesHeight_40() then
		notesInfo.height = 40
	elseif isNotesHeight_30() then
		notesInfo.height = 30
	elseif isNotesHeightCustom() and is7key() then
		local lua_path = skin_config.get_path("CUSTOMIZE.lua")
		local status, result = pcall(function()
			return dofile(lua_path).load("CUSTOM_NOTES_HEIGHT_7KEY")
		end)
		if status and result and type(result) == "table" then
			if checkValue(result.CUSTOM_NOTES_HEIGHT, 0) then
				notesInfo.height = result.CUSTOM_NOTES_HEIGHT
			else
				notesInfo.height = 64
			end
		else
			notesInfo.height = 64
		end
	elseif isNotesHeightCustom() and is5key() then
		local lua_path = skin_config.get_path("CUSTOMIZE.lua")
		local status, result = pcall(function()
			return dofile(lua_path).load("CUSTOM_NOTES_HEIGHT_5KEY")
		end)
		if status and result and type(result) == "table" then
			if checkValue(result.CUSTOM_NOTES_HEIGHT, 0) then
				notesInfo.height = result.CUSTOM_NOTES_HEIGHT
			else
				notesInfo.height = 64
			end
		else
			notesInfo.height = 64
		end
	elseif isNotesHeightCustom() and is9key() then
		local lua_path = skin_config.get_path("CUSTOMIZE.lua")
		local status, result = pcall(function()
			return dofile(lua_path).load("CUSTOM_NOTES_HEIGHT_9KEY")
		end)
		if status and result and type(result) == "table" then
			if checkValue(result.CUSTOM_NOTES_HEIGHT, 0) then
				notesInfo.height = result.CUSTOM_NOTES_HEIGHT
			else
				notesInfo.height = 64
			end
		else
			notesInfo.height = 64
		end
	end

	local function setPlayPos()
		if isScratchRight() then
			return 616
		else
			return 372
		end
	end

	local function setScorePos()
		if isScratchRight() then
			return 1550
		else
			return 0
		end
	end

	local function setInfoPos()
		if isScratchRight() then
			return 0
		else
			return 1304
		end
	end

	local function setGraphBluePos()
		if isScratchRight() then
			return 72
		else
			return 264
		end
	end

	local function setGraphRedPos()
		if isScratchRight() then
			return 264
		else
			return 72
		end
	end

	local function setBlankWidth()
		if isScratchRight() then
			return 15
		else
			return 115
		end
	end

	local function setCenterPos()
		if isScratchRight() and 	isLaneCenterPosKey() and is7key() then
			return notesInfo.Ot_width * 3.5
		elseif isScratchLeft() and 	isLaneCenterPosKey() and is7key() then
			return notesInfo.Ot_width * 3.5 + notesInfo.Sc_width
		elseif isScratchRight() and isLaneCenterPosKey() and is5key() and is5keyAlignRL() and 		isNotesWidthTemplate() then
			return notesInfo.Ot_width * 2.5 + notesInfo.Ot_width * 2
		elseif isScratchLeft() and 	isLaneCenterPosKey() and is5key() and is5keyAlignRL() and 		isNotesWidthTemplate() then
			return notesInfo.Ot_width * 2.5 + notesInfo.Sc_width
		elseif isScratchRight() and isLaneCenterPosKey() and is5key() and is5keyAlignCenter() and 	isNotesWidthTemplate() then
			return notesInfo.Ot_width * 3.5
		elseif isScratchLeft() and 	isLaneCenterPosKey() and is5key() and is5keyAlignCenter() and 	isNotesWidthTemplate() then
			return notesInfo.Ot_width * 3.5 + notesInfo.Sc_width
		elseif isScratchRight() and isLaneCenterPosKey() and is5key() and is5keyAlignEnlarge() and 	isNotesWidthTemplate() then
			return notesInfo.Ot_width * 2.5
		elseif isScratchLeft() and 	isLaneCenterPosKey() and is5key() and is5keyAlignEnlarge() and 	isNotesWidthTemplate() then
			return notesInfo.Ot_width * 2.5 + notesInfo.Sc_width
		elseif isScratchRight() and isLaneCenterPosKey() and is5key() and 							isNotesWidthCustom() then
			return notesInfo.Ot_width * 2.5
		elseif isScratchLeft() and 	isLaneCenterPosKey() and is5key() and 							isNotesWidthCustom() then
			return notesInfo.Ot_width * 2.5 + notesInfo.Sc_width
		else
			return 401
		end
	end

	local function getJudgeSize()
		if isJudgeSize_x40() then
			return 0.4
		elseif isJudgeSize_x60() then
			return 0.6
		elseif isJudgeSize_x80() then
			return 0.8
		else
			return 1
		end
	end

	local function getKeybeamHeight()
		if isKeybeamHeight_x100() then
			return 1
		elseif isKeybeamHeight_x90() then
			return 0.9
		elseif isKeybeamHeight_x80() then
			return 0.8
		elseif isKeybeamHeight_x70() then
			return 0.7
		elseif isKeybeamHeight_x60() then
			return 0.6
		elseif isKeybeamHeight_x50() then
			return 0.5
		elseif isKeybeamHeight_x40() then
			return 0.4
		elseif isKeybeamHeight_x30() then
			return 0.3
		elseif isKeybeamHeight_x20() then
			return 0.2
		else
			return 0.1
		end
	end

	local function getKeybeamAlpha(alpha)
		if isKeybeamAlpha_x100() then
			return math.floor(1 * alpha)
		elseif isKeybeamAlpha_x90() then
			return math.floor(0.9 * alpha)
		elseif isKeybeamAlpha_x80() then
			return math.floor(0.8 * alpha)
		elseif isKeybeamAlpha_x70() then
			return math.floor(0.7 * alpha)
		elseif isKeybeamAlpha_x60() then
			return math.floor(0.6 * alpha)
		elseif isKeybeamAlpha_x50() then
			return math.floor(0.5 * alpha)
		elseif isKeybeamAlpha_x40() then
			return math.floor(0.4 * alpha)
		elseif isKeybeamAlpha_x30() then
			return math.floor(0.3 * alpha)
		elseif isKeybeamAlpha_x20() then
			return math.floor(0.2 * alpha)
		else
			return math.floor(0.1 * alpha)
		end
	end

	local function getBombProperty()
		local p = {
			BOMB_CYCLE_MULUTIPLIER = 	1.0,
			LNBOMB_CYCLE_MULUTIPLIER = 	1.0,
			BOMB_WIDTH_MULUTIPLIER =	1.0,
			BOMB_HEIGHT_MULUTIPLIER =	1.0,
			BOMB_RED =		            255,
			BOMB_GREEN =	            255,
			BOMB_BLUE =		            255,
			LNBOMB_RED =	            255,
			LNBOMB_GREEN =	            255,
			LNBOMB_BLUE =	            255
		}
		if isBombPropertyCustom() then
			local lua_path = skin_config.get_path("CUSTOMIZE.lua")
			local status, result = pcall(function()
				return dofile(lua_path).load("CUSTOM_BOMB_PROPERTY")
			end)
			if status and result and type(result) == "table" and (
				(function()
					for i = 1, 4 do
						if not checkValue(result[i], 1) then
							return false
						end
					end
					return true
				end) and
				(function()
					for i = 5, 10 do
						if not checkValue(result[i], 0) then
							return false
						end
					end
					return true
				end)
			) then
				for i, v in pairs(result) do
					p[i] = v
				end
				return p
			else
				return p
			end
		else
			return p
		end
	end

	local FS_THRESHOLD
	if not isFSThresholdDef() then
		local lua_path = skin_config.get_path("CUSTOMIZE.lua")
		local status, result = pcall(function()
			return dofile(lua_path).load("CUSTOM_FAST_SLOW_THRESHOLD")
		end)
		if status and result and type(result) == "table" and checkValue(result.CUSTOM_THRESHOLD, 0) then
			FS_THRESHOLD = result.CUSTOM_THRESHOLD
		else
			FS_THRESHOLD = 15
		end
	end

	local function predicateFast()
		if main_state.number(525) >= FS_THRESHOLD and main_state.number(525) >= 0  then
			return true
		else
			return false
		end
	end

	local function predicateSlow()
		if main_state.number(525) <= -FS_THRESHOLD and main_state.number(525) <= 0  then
			return true
		else
			return false
		end
	end

	local function getNumberAlign()
		if isScratchRight() then
			return 0
		else
			return 1
		end
	end

	local function getTextAlign()
		if isScratchRight() then
			return 0
		else
			return 2
		end
	end

	local function getRemainNotes()
		return main_state.number(106)
			- main_state.number(110)
			- main_state.number(111)
			- main_state.number(112)
			- main_state.number(113)
			- main_state.number(114)
	end

	local function getRemainNotesRate()
		return getRemainNotes() / main_state.number(106)
	end

	local function getDummyNum(num)
		if main_state.number(101) < 1 then
			return 0
		else
			return main_state.number(num)
		end
	end

	local GEOMETRY = {
		PLAY_POS = 		setPlayPos(),
		SCORE_POS = 	setScorePos(),
		INFO_POS = 		setInfoPos(),
		LANE_X = 		setBlankWidth(),
		LANE_Y = 		0,
		LANE_W = 		802,
		LANE_H = 		1080,
		LANE_CENTER = 	setCenterPos(),
		JUDGE_Y = 		780,
		BGA_X = 		68,
		BGA_Y = 		465,
		BGA_W = 		480,
		BGA_H = 		480,
		GRAPH_BLUE = 	setGraphBluePos(),
		GRAPH_RED = 	setGraphRedPos(),
		MASCOT_X =		58,
		MASCOT_Y = 		102,
		MASCOT_W = 		256,
		MASCOT_H = 		256
	}

	skin.source = {
		---- # common src
		{id = "bg_src", 			path = "parts/bg/*.png"},
		{id = "alt_image_src", 		path = "!_common/!_alt_image.png"},

		---- # infomation src
		{id = "info_system_src", 	path = "!_common/!_info_system.png"},

		---- # score src
		{id = "score_system_src", 	path = "!_common/!_score_system.png"},
		{id = "mascot_src", 		path = "parts/!_mascot/*.png"},

		---- # play src
		{id = "play_system_src", 	path = "!_common/!_play_system.png"},

		-- note
		{id = "notes_wh_src", 	path = "parts/notes/1-1_white/*.png"},
		{id = "notes_bl_src", 	path = "parts/notes/2-1_blue/*.png"},
		{id = "notes_ye_src", 	path = "parts/notes/3-1_yellow/*.png"},
		{id = "notes_sc_src", 	path = "parts/notes/4-1_scratch/*.png"},

		-- lnstart	
		{id = "lnSt_wh_src", 	path = "parts/notes/1-2_white_lnSt/*.png"},
		{id = "lnSt_bl_src", 	path = "parts/notes/2-2_blue_lnSt/*.png"},
		{id = "lnSt_ye_src", 	path = "parts/notes/3-2_yellow_lnSt/*.png"},
		{id = "lnSt_sc_src", 	path = "parts/notes/4-2_scratch_lnSt/*.png"},

		-- lnend	
		{id = "lnEn_wh_src", 	path = "parts/notes/1-3_white_lnEn/*.png"},
		{id = "lnEn_bl_src", 	path = "parts/notes/2-3_blue_lnEn/*.png"},
		{id = "lnEn_ye_src", 	path = "parts/notes/3-3_yellow_lnEn/*.png"},
		{id = "lnEn_sc_src", 	path = "parts/notes/4-3_scratch_lnEn/*.png"},

		-- lnbody	
		{id = "lnBo_wh_src", 	path = "parts/notes/1-4_white_lnBo/*.png"},
		{id = "lnBo_bl_src", 	path = "parts/notes/2-4_blue_lnBo/*.png"},
		{id = "lnBo_ye_src", 	path = "parts/notes/3-4_yellow_lnBo/*.png"},
		{id = "lnBo_sc_src", 	path = "parts/notes/4-4_scratch_lnBo/*.png"},

		-- lnactive
		{id = "lnAc_wh_src", 	path = "parts/notes/1-5_white_lnAc/*.png"},
		{id = "lnAc_bl_src", 	path = "parts/notes/2-5_blue_lnAc/*.png"},
		{id = "lnAc_ye_src", 	path = "parts/notes/3-5_yellow_lnAc/*.png"},
		{id = "lnAc_sc_src", 	path = "parts/notes/4-5_scratch_lnAc/*.png"},

		-- hcnstart	
		{id = "hcSt_wh_src", 	path = "parts/notes/1-2_white_lnSt/*.png"},
		{id = "hcSt_bl_src", 	path = "parts/notes/2-2_blue_lnSt/*.png"},
		{id = "hcSt_ye_src", 	path = "parts/notes/3-2_yellow_lnSt/*.png"},
		{id = "hcSt_sc_src", 	path = "parts/notes/4-2_scratch_lnSt/*.png"},

		-- hcnend	
		{id = "hcEn_wh_src", 	path = "parts/notes/1-3_white_lnEn/*.png"},
		{id = "hcEn_bl_src", 	path = "parts/notes/2-3_blue_lnEn/*.png"},
		{id = "hcEn_ye_src", 	path = "parts/notes/3-3_yellow_lnEn/*.png"},
		{id = "hcEn_sc_src", 	path = "parts/notes/4-3_scratch_lnEn/*.png"},

		-- hcnbody	
		{id = "hcBo_wh_src", 	path = "parts/notes/1-4_white_lnBo/*.png"},
		{id = "hcBo_bl_src", 	path = "parts/notes/2-4_blue_lnBo/*.png"},
		{id = "hcBo_ye_src", 	path = "parts/notes/3-4_yellow_lnBo/*.png"},
		{id = "hcBo_sc_src", 	path = "parts/notes/4-4_scratch_lnBo/*.png"},

		-- hcnactive
		{id = "hcAc_wh_src", 	path = "parts/notes/1-5_white_lnAc/*.png"},
		{id = "hcAc_bl_src", 	path = "parts/notes/2-5_blue_lnAc/*.png"},
		{id = "hcAc_ye_src", 	path = "parts/notes/3-5_yellow_lnAc/*.png"},
		{id = "hcAc_sc_src", 	path = "parts/notes/4-5_scratch_lnAc/*.png"},

		-- hcndamage
		{id = "hcDm_wh_src", 	path = "parts/notes/1-4_white_lnBo/*.png"},
		{id = "hcDm_bl_src", 	path = "parts/notes/2-4_blue_lnBo/*.png"},
		{id = "hcDm_ye_src", 	path = "parts/notes/3-4_yellow_lnBo/*.png"},
		{id = "hcDm_sc_src", 	path = "parts/notes/4-4_scratch_lnBo/*.png"},

		-- hcnreactive
		{id = "hcRe_wh_src", 	path = "parts/notes/1-5_white_lnAc/*.png"},
		{id = "hcRe_bl_src", 	path = "parts/notes/2-5_blue_lnAc/*.png"},
		{id = "hcRe_ye_src", 	path = "parts/notes/3-5_yellow_lnAc/*.png"},
		{id = "hcRe_sc_src", 	path = "parts/notes/4-5_scratch_lnAc/*.png"},

		-- mine
		{id = "mine_wh_src", 	path = "parts/notes/1-6_white_mine/*.png"},
		{id = "mine_bl_src", 	path = "parts/notes/2-6_blue_mine/*.png"},
		{id = "mine_ye_src", 	path = "parts/notes/3-6_yellow_mine/*.png"},
		{id = "mine_sc_src", 	path = "parts/notes/4-6_scratch_mine/*.png"},

		-- keybeam
		{id = "keybeam_wh_src", path = "parts/keybeam/1_white/*.png"},
		{id = "keybeam_bl_src", path = "parts/keybeam/2_blue/*.png"},
		{id = "keybeam_ye_src", path = "parts/keybeam/3_yellow/*.png"},
		{id = "keybeam_sc_src", path = "parts/keybeam/4_scratch/*.png"},

		-- judge
		{id = "judge_pg_src", 	path = "parts/judge/1_pg/*.png"},
		{id = "judge_gr_src", 	path = "parts/judge/2_gr/*.png"},
		{id = "judge_gd_src", 	path = "parts/judge/3_gd/*.png"},
		{id = "judge_bd_src", 	path = "parts/judge/4_bd/*.png"},
		{id = "judge_pr_src", 	path = "parts/judge/5_pr/*.png"},
		{id = "judge_ms_src", 	path = "parts/judge/6_ms/*.png"},

		-- other
		{id = "judgenum_src", 	path = "parts/judgenum/*.png"},
		{id = "bomb_src", 		path = "parts/!_bomb/*.png"},
		{id = "lanecover_src", 	path = "parts/lanecover/*.png"},
		{id = "fs_char_src", 	path = "parts/fast_slow/character/*.png"},
		{id = "fs_num_src", 	path = "parts/fast_slow/number/*.png"},
		{id = "mybest_num_src", path = "parts/scorenum/mybest/*.png"},
		{id = "target_num_src", path = "parts/scorenum/target/*.png"},

		-- gauge
		{id = "gaugeHazard_src", 	path = "parts/colors/1_hazard/*.png"},
		{id = "gaugeExHard_src", 	path = "parts/colors/2_exhard/*.png"},
		{id = "gaugeHard_src", 		path = "parts/colors/3_hard/*.png"},
		{id = "gaugeNormal_src", 	path = "parts/colors/4_normal/*.png"},
		{id = "gaugeEasy_src", 		path = "parts/colors/5_easy/*.png"},
		{id = "gaugeAsEasy_src", 	path = "parts/colors/6_aseasy/*.png"},

		-- judgeline
		{id = "judgeline_src", 	path = "parts/colors/7_judgeline/*.png"}
	}
	skin.font = {
		{id = 0, 	path = "font/Mplus2-ExtraBold.ttf"},
		{id = 1,	path = "font/Mplus2-Medium.ttf"},
		{id = 2, 	path = "font/Mplus2-Regular.ttf"}
	}
	skin.image = {
		---- # common image
		{id = "bg", 			src = "bg_src", x = 0, y = 0, w = -1, h = -1},
		{id = "alt-bga-1", 		src = "alt_image_src", x = 0, y = 0, w = 480, h = 480},
		{id = "alt-bga-2", 		src = "alt_image_src", x = 0, y = 481, w = 480, h = 480},

		{id = "head-line", 		src = "play_system_src", x = 15, y = 4, w = 250, h = 3},
		{id = "inload-titleline", src = "play_system_src", x = 15, y = 0, w = 1450, h = 3},
		{id = "alt-stagefile", 	src = "alt_image_src", x = 0, y = 962, w = 320, h = 240},

		---- # infomation image
		{id = "bf-info-frame", src = "info_system_src", x = 0, y = 0, w = 616, h = 480},
		{id = "af-info-frame", src = "info_system_src", x = 0, y = 481, w = 616, h = 480},
		{id = "info-rate-DnP", src = "info_system_src", x = 617, y = 481, w = 74, h = 21},

		---- # score image
		{id = "score-frame", 		src = "score_system_src", x = 0, y = 0, w = 372, h = 1080},
		{id = "score-time-colon", 	src = "score_system_src", x = 373, y = 994, w = 68, h = 21},
		{id = "score-rate-DnP", 	src = "score_system_src", x = 373, y = 1016, w = 76, h = 22},

		{id = "graph-aaa", 	src = "score_system_src", x = 373, y = 1039, w = 316, h = 13},
		{id = "graph-aa", 	src = "score_system_src", x = 373, y = 1053, w = 316, h = 13},
		{id = "graph-a", 	src = "score_system_src", x = 373, y = 1067, w = 316, h = 13},

		{id = "mascot", 	src = "mascot_src", x = 0, y = 0, w = -1, h = -1},

		---- # play image
		{id = "remain-rate-dot", 	src = "play_system_src", x = 166, y = 1025, w = 9, h = 18},
		{id = "song-time-colon", 	src = "play_system_src", x = 166, y = 1044, w = 9, h = 18},
		{id = "song-progress-bar",	src = "play_system_src", x = 10, y = 0, w = 4, h = 10},

		-- judge
		{id = "judge-pg", src = "judge_pg_src", x = 0, y = 0, w = 660, h = 120},
		{id = "judge-gr", src = "judge_gr_src", x = 0, y = 0, w = 660, h = 120},
		{id = "judge-gd", src = "judge_gd_src", x = 0, y = 0, w = 660, h = 120},
		{id = "judge-bd", src = "judge_bd_src", x = 0, y = 0, w = 660, h = 120},
		{id = "judge-pr", src = "judge_pr_src", x = 0, y = 0, w = 660, h = 120},
		{id = "judge-ms", src = "judge_ms_src", x = 0, y = 0, w = 660, h = 120},

		-- judgeline
		{id = "judgeline", src = "judgeline_src", x = 0, y = 0, w = 10, h = 10},

		-- notes
		{id = "note-Wh", src = "notes_wh_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "note-Bl", src = "notes_bl_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "note-Ye", src = "notes_ye_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "note-Sc", src = "notes_sc_src", x = 0, y = 0, w = notesInfo.Sc_width, h = notesInfo.height},

		-- lnstart
		{id = "lnSt-Wh", src = "lnSt_wh_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "lnSt-Bl", src = "lnSt_bl_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "lnSt-Ye", src = "lnSt_ye_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "lnSt-Sc", src = "lnSt_sc_src", x = 0, y = 0, w = notesInfo.Sc_width, h = notesInfo.height},

		-- lnend
		{id = "lnEn-Wh", src = "lnEn_wh_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "lnEn-Bl", src = "lnEn_bl_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "lnEn-Ye", src = "lnEn_ye_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "lnEn-Sc", src = "lnEn_sc_src", x = 0, y = 0, w = notesInfo.Sc_width, h = notesInfo.height},

		-- lnbody
		{id = "lnBo-Wh", src = "lnBo_wh_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "lnBo-Bl", src = "lnBo_bl_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "lnBo-Ye", src = "lnBo_ye_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "lnBo-Sc", src = "lnBo_sc_src", x = 0, y = 0, w = notesInfo.Sc_width, h = notesInfo.height},

		-- lnactive
		{id = "lnAc-Wh", src = "lnAc_wh_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "lnAc-Bl", src = "lnAc_bl_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "lnAc-Ye", src = "lnAc_ye_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "lnAc-Sc", src = "lnAc_sc_src", x = 0, y = 0, w = notesInfo.Sc_width, h = notesInfo.height},

		-- hcnstart
		{id = "hcSt-Wh", src = "hcSt_wh_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcSt-Bl", src = "hcSt_bl_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcSt-Ye", src = "hcSt_ye_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcSt-Sc", src = "hcSt_sc_src", x = 0, y = 0, w = notesInfo.Sc_width, h = notesInfo.height},

		-- hcnend
		{id = "hcEn-Wh", src = "hcEn_wh_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcEn-Bl", src = "hcEn_bl_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcEn-Ye", src = "hcEn_ye_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcEn-Sc", src = "hcEn_sc_src", x = 0, y = 0, w = notesInfo.Sc_width, h = notesInfo.height},

		-- hcnbody
		{id = "hcBo-Wh", src = "hcBo_wh_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcBo-Bl", src = "hcBo_bl_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcBo-Ye", src = "hcBo_ye_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcBo-Sc", src = "hcBo_sc_src", x = 0, y = 0, w = notesInfo.Sc_width, h = notesInfo.height},

		-- hcnactive
		{id = "hcAc-Wh", src = "hcAc_wh_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcAc-Bl", src = "hcAc_bl_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcAc-Ye", src = "hcAc_ye_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcAc-Sc", src = "hcAc_sc_src", x = 0, y = 0, w = notesInfo.Sc_width, h = notesInfo.height},

		-- hcndamage
		{id = "hcDm-Wh", src = "hcDm_wh_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcDm-Bl", src = "hcDm_bl_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcDm-Ye", src = "hcDm_ye_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcDm-Sc", src = "hcDm_sc_src", x = 0, y = 0, w = notesInfo.Sc_width, h = notesInfo.height},

		-- hcnreactive
		{id = "hcRe-Wh", src = "hcRe_wh_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcRe-Bl", src = "hcRe_bl_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcRe-Ye", src = "hcRe_ye_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "hcRe-Sc", src = "hcRe_sc_src", x = 0, y = 0, w = notesInfo.Sc_width, h = notesInfo.height},

		-- mine
		{id = "mine-Wh", src = "mine_wh_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "mine-Bl", src = "mine_bl_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "mine-Ye", src = "mine_ye_src", x = 0, y = 0, w = notesInfo.Ot_width, h = notesInfo.height},
		{id = "mine-Sc", src = "mine_sc_src", x = 0, y = 0, w = notesInfo.Sc_width, h = notesInfo.height},

		{id = "section-line", src = "play_system_src", x = 0, y = 0, w = 1, h = 1},

		-- keybeam
		{id = "keybeam-w", src = "keybeam_wh_src", x = 0, y = 0, w = 32, h = GEOMETRY.LANE_H},
		{id = "keybeam-b", src = "keybeam_bl_src", x = 0, y = 0, w = 32, h = GEOMETRY.LANE_H},
		{id = "keybeam-y", src = "keybeam_ye_src", x = 0, y = 0, w = 32, h = GEOMETRY.LANE_H},
		{id = "keybeam-s", src = "keybeam_sc_src", x = 0, y = 0, w = 32, h = GEOMETRY.LANE_H},

		-- hazard
		{id = "gauge-w1", src = "gaugeHazard_src", x = 0, y = 0, w = 10, h = 10},
		{id = "gauge-w2", src = "gaugeHazard_src", x = 10, y = 0, w = 10, h = 10},
		{id = "gauge-w3", src = "gaugeHazard_src", x = 0, y = 0, w = 10, h = 10},

		-- exhard
		{id = "gauge-y1", src = "gaugeExHard_src", x = 0, y = 0, w = 10, h = 10},
		{id = "gauge-y2", src = "gaugeExHard_src", x = 10, y = 0, w = 10, h = 10},
		{id = "gauge-y3", src = "gaugeExHard_src", x = 0, y = 0, w = 10, h = 10},

		-- hard
		{id = "gauge-r1", src = "gaugeHard_src", x = 0, y = 0, w = 10, h = 10},
		{id = "gauge-r2", src = "gaugeHard_src", x = 10, y = 0, w = 10, h = 10},
		{id = "gauge-r3", src = "gaugeHard_src", x = 0, y = 0, w = 10, h = 10},

		-- normal
		{id = "gauge-b1", src = "gaugeNormal_src", x = 0, y = 0, w = 10, h = 10},
		{id = "gauge-b2", src = "gaugeNormal_src", x = 10, y = 0, w = 10, h = 10},
		{id = "gauge-b3", src = "gaugeNormal_src", x = 0, y = 0, w = 10, h = 10},

		-- easy
		{id = "gauge-g1", src = "gaugeEasy_src", x = 0, y = 0, w = 10, h = 10},
		{id = "gauge-g2", src = "gaugeEasy_src", x = 10, y = 0, w = 10, h = 10},
		{id = "gauge-g3", src = "gaugeEasy_src", x = 0, y = 0, w = 10, h = 10},

		-- assist easy
		{id = "gauge-p1", src = "gaugeAsEasy_src", x = 0, y = 0, w = 10, h = 10},
		{id = "gauge-p2", src = "gaugeAsEasy_src", x = 10, y = 0, w = 10, h = 10},
		{id = "gauge-p3", src = "gaugeAsEasy_src", x = 0, y = 0, w = 10, h = 10},

		-- other
		{id = "hiddencover", src = "play_system_src", x = 652, y = 4, w = 10, h = 1000},

		{id = "replay", 	src = "play_system_src", x = 0, y = 16, w = 258, h = 35},
		{id = "auto", 		src = "play_system_src", x = 259, y = 16, w = 348, h = 35},
		{id = "eon", 		src = "play_system_src", x = 0, y = 52, w = 390, h = 35},

		{id = "fc-effect", 	src = "play_system_src", x = 663, y = 4, w = 802, h = 1080},
		{id = "fullcombo", 	src = "play_system_src", x = 0, y = 88, w = 360, h = 36}
	}
	skin.imageset = {}
	skin.value = {
		---- # infomation valus
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

		{id = "fs-num", src = "info_system_src", x = 617, y = 22, w = 200, h = 21, divx = 10, digit = 4, ref = 423, align = 0},
		{id = "sl-num", src = "info_system_src", x = 617, y = 44, w = 200, h = 21, divx = 10, digit = 4, ref = 424, align = 0},
		{id = "br-num", src = "info_system_src", x = 617, y = 0, w = 200, h = 21, divx = 10, digit = 4, ref = 425, align = 0},

		{id = "info-rate-num", 		src = "info_system_src", x = 617, y = 0, w = 200, h = 21, divx = 10, digit = 3, align = 0, value = function()
			return getDummyNum(102)
		end},
		{id = "info-rate-adot-num", src = "info_system_src", x = 617, y = 0, w = 220, h = 21, divx = 11, digit = 2, align = 0, value = function()
			return getDummyNum(103)
		end},

		{id = "judgetiming-num", src = "info_system_src", x = 617, y = 110, w = 180, h = 34, divx = 12, divy = 2, digit = 3, ref = 12, align = 1},

		{id = "gauge-num", 			src = "info_system_src", x = 617, y = 339, w = 300, h = 31, divx = 10, digit = 3, ref = 107, align = 0},
		{id = "gauge-adot-num", 	src = "info_system_src", x = 617, y = 339, w = 300, h = 31, divx = 10, digit = 1, ref = 407, align = 0},

		{id = "bpm-now", src = "info_system_src", x = 617, y = 408, w = 720, h = 72, divx = 10, digit = 3, ref = 160, align = 0},
		{id = "bpm-max", src = "info_system_src", x = 617, y = 371, w = 360, h = 36, divx = 10, digit = 3, ref = 90, align = 0},
		{id = "bpm-min", src = "info_system_src", x = 617, y = 371, w = 360, h = 36, divx = 10, digit = 3, ref = 91, align = 0},

		---- # score values
		{id = "score-time-hour-num", 	src = "score_system_src", x = 373, y = 0, w = 220, h = 21, divx = 11, digit = 2, ref = 27, align = 1},
		{id = "score-time-minute-num", src = "score_system_src", x = 373, y = 0, w = 220, h = 21, divx = 11, digit = 2, ref = 28, align = 1},
		{id = "score-time-second-num", src = "score_system_src", x = 373, y = 0, w = 220, h = 21, divx = 11, digit = 2, ref = 29, align = 1},

		{id = "fps-num", 				src = "score_system_src", x = 373, y = 22, w = 200, h = 21, divx = 10, digit = 4, ref = 20, align = getNumberAlign()},

		{id = "score-rate-num", 		src = "score_system_src", x = 373, y = 130, w = 200, h = 24, divx = 10, digit = 3, align = 0, value = function()
			return getDummyNum(102)
		end},
		{id = "score-rate-adot-num", 	src = "score_system_src", x = 373, y = 130, w = 220, h = 24, divx = 11, digit = 2, align = 0, value = function()
			return getDummyNum(103)
		end},

		{id = "score-score", 			src = "score_system_src", x = 373, y = 0, w = 200, h = 21, divx = 10, digit = 5, align = 0, value = function()
			return getDummyNum(101)
		end},
		{id = "score-diff-best", 	src = "score_system_src", x = 373, y = 44, w = 240, h = 42, divx = 12, divy = 2, digit = 6, ref = 152, align = 0},
		{id = "score-diff-target", 	src = "score_system_src", x = 373, y = 87, w = 240, h = 42, divx = 12, divy = 2, digit = 6, ref = 153, align = 0},

		---- # play values
		{id = "remain-rate-num", 		src = "play_system_src", x = 0, y = 1025, w = 150, h = 18, divx = 10, digit = 3, align = 0, value = function()
			return getRemainNotesRate() * 100
		end},
		{id = "remain-rate-adot-num", 	src = "play_system_src", x = 0, y = 1044, w = 165, h = 18, divx = 11, digit = 2, align = 0, value = function()
			return getRemainNotesRate() * 10000
		end},

		{id = "remain-notes",	 		src = "play_system_src", x = 0, y = 1025, w = 150, h = 18, divx = 10, digit = 5, align = 0, value = function()
			return getRemainNotes()
		end},

		{id = "song-remain-m", 			src = "play_system_src", x = 0, y = 1025, w = 150, h = 18, divx = 10, digit = 2, ref = 163, align = 0},
		{id = "song-remain-s", 			src = "play_system_src", x = 0, y = 1025, w = 165, h = 18, divx = 11, digit = 2, ref = 164, align = 0},

		{id = "lanecover-value", 		src = "play_system_src", x = 0, y = 178, w = 200, h = 21, divx = 10, digit = 4, ref = 14, align = 0},
		{id = "lanecover-green", 		src = "play_system_src", x = 0, y = 200, w = 200, h = 21, divx = 10, digit = 4, ref = 313, align = 0},
		{id = "lanecover-duration", 	src = "play_system_src", x = 0, y = 222, w = 200, h = 21, divx = 10, digit = 4, ref = 312, align = 0},
		{id = "lift-value", 			src = "play_system_src", x = 0, y = 178, w = 200, h = 21, divx = 10, digit = 4, ref = 314, align = 0},

		{id = "judge-num", src = "judgenum_src", x = 0, y = 0, w = 540, h = 100, divx = 10, digit = 6, ref = 105, align = 2}
	}
	skin.text = {
		---- # in loading
		{id = "inload-genre", 		font = 2, size = 27, ref = 13, overflow = 1},
		{id = "inload-title", 		font = 0, size = 73, ref = 12, overflow = 1},
		{id = "inload-artist", 		font = 1, size = 41, ref = 16, overflow = 1},

		---- # in playing
		{id = "inplay-title", 		font = 0, size = 42, ref = 12, overflow = 1, align = getTextAlign()},
		{id = "inplay-artist", 		font = 1, size = 26, ref = 16, overflow = 1, align = getTextAlign()},
		{id = "inplay-table", 		font = 2, size = 26, ref = 1003, overflow = 1, align = getTextAlign()}
	}
	skin.slider = {
		---- # play slider
		{id = "song-progress", 	src = "play_system_src", x = 639, y = 4, w = 12, h = 21, angle = 2, range = 600, type = 6},
		{id = "lanecover", 		src = "lanecover_src", x = 0, y = 0, w = -1, h = -1, angle = 2, range = GEOMETRY.LANE_H, type = 4}
	}
	skin.graph = {
		---- # score graph
		{id = "graph-now", 			src = "score_system_src", x = 699, y = 0, w = 10, h = 800, angle = 1, type = 110},
		{id = "graph-final", 		src = "score_system_src", x = 732, y = 0, w = 10, h = 800, angle = 1, type = 111},
		{id = "graph-best-now", 	src = "score_system_src", x = 710, y = 0, w = 10, h = 800, angle = 1, type = 112},
		{id = "graph-best-final", 	src = "score_system_src", x = 732, y = 0, w = 10, h = 800, angle = 1, type = 113},
		{id = "graph-target-now", 	src = "score_system_src", x = 721, y = 0, w = 10, h = 800, angle = 1, type = 114},
		{id = "graph-target-final", src = "score_system_src", x = 732, y = 0, w = 10, h = 800, angle = 1, type = 115},

		---- # play graph
		{id = "song-progress-fin", 	src = "play_system_src", x = 10, y = 0, w = 4, h = 10, angle = 1, type = 101},

		---- # in loading
		{id = "inload-progress", 		src = "play_system_src", x = 15, y = 0, w = 1450, h = 3, angle = 0, type = 102}
	}
	skin.note = {
		id = 			"notes",
		note = 			{},
		lnend = 		{},
		lnstart = 		{},
		lnbody = 		{},
		lnactive = 		{},
		hcnend = 		{},
		hcnstart = 		{},
		hcnbody = 		{},
		hcnactive = 	{},
		hcndamage = 	{},
		hcnreactive = 	{},
		mine = 			{},
		hidden = 		{},
		processed = 	{},
		group = {
			{id = "section-line", timer = 41, offsets = {3, BARLINE_ALPHA, JUDGELINE_POS}, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = GEOMETRY.LANE_Y, w = GEOMETRY.LANE_W, h = 5, r = 255, g = 255, b = 255, a = 0, acc = 2}
			}}
		},
		time = {
			{id = "section-line", timer = 41, offsets = {3, BARLINE_ALPHA, JUDGELINE_POS}, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = GEOMETRY.LANE_Y, w = GEOMETRY.LANE_W, h = 15, r = 100, g = 100, b = 255, a = 0, acc = 2}
			}}
		},
		bpm = {
			{id = "section-line", timer = 41, offsets = {3, BARLINE_ALPHA, JUDGELINE_POS}, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = GEOMETRY.LANE_Y, w = GEOMETRY.LANE_W, h = 15, r = 100, g = 255, b = 100, a = 0, acc = 2}
			}}
		},
		stop = {
			{id = "section-line", timer = 41, offsets = {3, BARLINE_ALPHA, JUDGELINE_POS}, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = GEOMETRY.LANE_Y, w = GEOMETRY.LANE_W, h = 15, r = 255, g = 100, b = 100, a = 0, acc = 2}
			}}
		}
	}
	if is7key() then
		skin.note.note = 			{"note-Wh", "note-Bl", "note-Wh", "note-Ye", "note-Wh", "note-Bl", "note-Wh", "note-Sc"}
		skin.note.lnend = 			{"lnEn-Wh", "lnEn-Bl", "lnEn-Wh", "lnEn-Ye", "lnEn-Wh", "lnEn-Bl", "lnEn-Wh", "lnEn-Sc"}
		skin.note.lnstart = 		{"lnSt-Wh", "lnSt-Bl", "lnSt-Wh", "lnSt-Ye", "lnSt-Wh", "lnSt-Bl", "lnSt-Wh", "lnSt-Sc"}
		skin.note.lnbody = 			{"lnBo-Wh", "lnBo-Bl", "lnBo-Wh", "lnBo-Ye", "lnBo-Wh", "lnBo-Bl", "lnBo-Wh", "lnBo-Sc"}
		skin.note.lnactive = 		{"lnAc-Wh", "lnAc-Bl", "lnAc-Wh", "lnAc-Ye", "lnAc-Wh", "lnAc-Bl", "lnAc-Wh", "lnAc-Sc"}
		skin.note.hcnend = 			{"hcEn-Wh", "hcEn-Bl", "hcEn-Wh", "hcEn-Ye", "hcEn-Wh", "hcEn-Bl", "hcEn-Wh", "hcEn-Sc"}
		skin.note.hcnstart = 		{"hcSt-Wh", "hcSt-Bl", "hcSt-Wh", "hcSt-Ye", "hcSt-Wh", "hcSt-Bl", "hcSt-Wh", "hcSt-Sc"}
		skin.note.hcnbody = 		{"hcBo-Wh", "hcBo-Bl", "hcBo-Wh", "hcBo-Ye", "hcBo-Wh", "hcBo-Bl", "hcBo-Wh", "hcBo-Sc"}
		skin.note.hcnactive = 		{"hcAc-Wh", "hcAc-Bl", "hcAc-Wh", "hcAc-Ye", "hcAc-Wh", "hcAc-Bl", "hcAc-Wh", "hcAc-Sc"}
		skin.note.hcndamage =		{"hcDm-Wh", "hcDm-Bl", "hcDm-Wh", "hcDm-Ye", "hcDm-Wh", "hcDm-Bl", "hcDm-Wh", "hcDm-Sc"}
		skin.note.hcnreactive = 	{"hcRe-Wh", "hcRe-Bl", "hcRe-Wh", "hcRe-Ye", "hcRe-Wh", "hcRe-Bl", "hcRe-Wh", "hcRe-Sc"}
		skin.note.mine = 			{"mine-Wh", "mine-Bl", "mine-Wh", "mine-Ye", "mine-Wh", "mine-Bl", "mine-Wh", "mine-Sc"}
	elseif is5key() then
		skin.note.note = 			{"note-Wh", "note-Bl", "note-Ye", "note-Bl", "note-Wh", "note-Sc"}
		skin.note.lnend = 			{"lnEn-Wh", "lnEn-Bl", "lnEn-Ye", "lnEn-Bl", "lnEn-Wh", "lnEn-Sc"}
		skin.note.lnstart = 		{"lnSt-Wh", "lnSt-Bl", "lnSt-Ye", "lnSt-Bl", "lnSt-Wh", "lnSt-Sc"}
		skin.note.lnbody = 			{"lnBo-Wh", "lnBo-Bl", "lnBo-Ye", "lnBo-Bl", "lnBo-Wh", "lnBo-Sc"}
		skin.note.lnactive = 		{"lnAc-Wh", "lnAc-Bl", "lnAc-Ye", "lnAc-Bl", "lnAc-Wh", "lnAc-Sc"}
		skin.note.hcnend = 			{"hcEn-Wh", "hcEn-Bl", "hcEn-Ye", "hcEn-Bl", "hcEn-Wh", "hcEn-Sc"}
		skin.note.hcnstart = 		{"hcSt-Wh", "hcSt-Bl", "hcSt-Ye", "hcSt-Bl", "hcSt-Wh", "hcSt-Sc"}
		skin.note.hcnbody = 		{"hcBo-Wh", "hcBo-Bl", "hcBo-Ye", "hcBo-Bl", "hcBo-Wh", "hcBo-Sc"}
		skin.note.hcnactive = 		{"hcAc-Wh", "hcAc-Bl", "hcAc-Ye", "hcAc-Bl", "hcAc-Wh", "hcAc-Sc"}
		skin.note.hcndamage = 		{"hcDm-Wh", "hcDm-Bl", "hcDm-Ye", "hcDm-Bl", "hcDm-Wh", "hcDm-Sc"}
		skin.note.hcnreactive = 	{"hcRe-Wh", "hcRe-Bl", "hcRe-Ye", "hcRe-Bl", "hcRe-Wh", "hcRe-Sc"}
		skin.note.mine = 			{"mine-Wh", "mine-Bl", "mine-Ye", "mine-Bl", "mine-Wh", "mine-Sc"}
	elseif is9key() then
		skin.note.note = 			{"note-Sc", "note-Wh", "note-Bl", "note-Wh", "note-Ye", "note-Wh", "note-Bl", "note-Wh", "note-Sc"}
		skin.note.lnend = 			{"lnEn-Sc", "lnEn-Wh", "lnEn-Bl", "lnEn-Wh", "lnEn-Ye", "lnEn-Wh", "lnEn-Bl", "lnEn-Wh", "lnEn-Sc"}
		skin.note.lnstart = 		{"lnSt-Sc", "lnSt-Wh", "lnSt-Bl", "lnSt-Wh", "lnSt-Ye", "lnSt-Wh", "lnSt-Bl", "lnSt-Wh", "lnSt-Sc"}
		skin.note.lnbody = 			{"lnBo-Sc", "lnBo-Wh", "lnBo-Bl", "lnBo-Wh", "lnBo-Ye", "lnBo-Wh", "lnBo-Bl", "lnBo-Wh", "lnBo-Sc"}
		skin.note.lnactive = 		{"lnAc-Sc", "lnAc-Wh", "lnAc-Bl", "lnAc-Wh", "lnAc-Ye", "lnAc-Wh", "lnAc-Bl", "lnAc-Wh", "lnAc-Sc"}
		skin.note.hcnend = 			{"hcEn-Sc", "hcEn-Wh", "hcEn-Bl", "hcEn-Wh", "hcEn-Ye", "hcEn-Wh", "hcEn-Bl", "hcEn-Wh", "hcEn-Sc"}
		skin.note.hcnstart = 		{"hcSt-Sc", "hcSt-Wh", "hcSt-Bl", "hcSt-Wh", "hcSt-Ye", "hcSt-Wh", "hcSt-Bl", "hcSt-Wh", "hcSt-Sc"}
		skin.note.hcnbody = 		{"hcBo-Sc", "hcBo-Wh", "hcBo-Bl", "hcBo-Wh", "hcBo-Ye", "hcBo-Wh", "hcBo-Bl", "hcBo-Wh", "hcBo-Sc"}
		skin.note.hcnactive = 		{"hcAc-Sc", "hcAc-Wh", "hcAc-Bl", "hcAc-Wh", "hcAc-Ye", "hcAc-Wh", "hcAc-Bl", "hcAc-Wh", "hcAc-Sc"}
		skin.note.hcndamage =		{"hcDm-Sc", "hcDm-Wh", "hcDm-Bl", "hcDm-Wh", "hcDm-Ye", "hcDm-Wh", "hcDm-Bl", "hcDm-Wh", "hcDm-Sc"}
		skin.note.hcnreactive = 	{"hcRe-Sc", "hcRe-Wh", "hcRe-Bl", "hcRe-Wh", "hcRe-Ye", "hcRe-Wh", "hcRe-Bl", "hcRe-Wh", "hcRe-Sc"}
		skin.note.mine = 			{"mine-Sc", "mine-Wh", "mine-Bl", "mine-Wh", "mine-Ye", "mine-Wh", "mine-Bl", "mine-Wh", "mine-Sc"}
	end

	skin.note.dst = 	{}
	notesInfo.notes_x = {}
	notesInfo.notes_w = {}

	if is7key() then
		notesInfo.notes_w[8] = notesInfo.Sc_width
		notesInfo.notes_w[1] = notesInfo.Ot_width

		if isScratchRight() then
			notesInfo.notes_x[1] = GEOMETRY.LANE_X
			notesInfo.notes_x[8] = GEOMETRY.LANE_X + GEOMETRY.LANE_W - notesInfo.notes_w[8]
		else
			notesInfo.notes_x[8] = GEOMETRY.LANE_X
			notesInfo.notes_x[1] = notesInfo.notes_x[8] + notesInfo.notes_w[8]
		end

		for i = 2, 7 do
			notesInfo.notes_x[i] = notesInfo.notes_x[i-1] + notesInfo.Ot_width
			notesInfo.notes_w[i] = notesInfo.Ot_width
		end

		for i = 1, 8 do
			skin.note.dst[i] = {
				x = notesInfo.notes_x[i] + GEOMETRY.PLAY_POS,
				y = GEOMETRY.LANE_Y,
				w = notesInfo.notes_w[i],
				h = GEOMETRY.LANE_H}
		end
	elseif is5key() then
		notesInfo.notes_w[6] = notesInfo.Sc_width
		notesInfo.notes_w[1] = notesInfo.Ot_width

		-- SC_RIGHT
		if isScratchRight() and 	is5keyAlignRL() and 		isNotesWidthTemplate() then
			-- 3,4,5,6,7,S
			notesInfo.notes_x[1] = GEOMETRY.LANE_X + notesInfo.Ot_width * 2
			notesInfo.notes_x[6] = GEOMETRY.LANE_X + GEOMETRY.LANE_W - notesInfo.notes_w[6]
		elseif isScratchRight() and is5keyAlignCenter() and 	isNotesWidthTemplate() then
			-- 2,3,4,5,6,S
			notesInfo.notes_x[1] = GEOMETRY.LANE_X + notesInfo.Ot_width
			notesInfo.notes_x[6] = GEOMETRY.LANE_X + GEOMETRY.LANE_W - notesInfo.notes_w[6]
		elseif isScratchRight() and is5keyAlignEnlarge() and 	isNotesWidthTemplate() then
			-- 1,2,3,4,5,S
			notesInfo.notes_x[1] = GEOMETRY.LANE_X
			notesInfo.notes_x[6] = GEOMETRY.LANE_X + GEOMETRY.LANE_W - notesInfo.notes_w[6]
		elseif isScratchRight() and isNotesWidthCustom() then
			-- 1,2,3,4,5,S - CUSTOM
			notesInfo.notes_x[1] = GEOMETRY.LANE_X
			notesInfo.notes_x[6] = GEOMETRY.LANE_X + GEOMETRY.LANE_W - notesInfo.notes_w[6]

		-- SC_LEFT
		elseif isScratchLeft() and 	is5keyAlignCenter() and 	isNotesWidthTemplate() then
			-- S,2,3,4,5,6
			notesInfo.notes_x[6] = GEOMETRY.LANE_X
			notesInfo.notes_x[1] = notesInfo.notes_x[6] + notesInfo.notes_w[6] + notesInfo.Ot_width
		else
			-- S,1,2,3,4,5
			notesInfo.notes_x[6] = GEOMETRY.LANE_X
			notesInfo.notes_x[1] = notesInfo.notes_x[6] + notesInfo.notes_w[6]
		end

		for i = 2, 5 do
			notesInfo.notes_x[i] = notesInfo.notes_x[i-1] + notesInfo.Ot_width
			notesInfo.notes_w[i] = notesInfo.Ot_width
		end

		for i = 1, 6 do
			skin.note.dst[i] = {
				x = notesInfo.notes_x[i] + GEOMETRY.PLAY_POS,
				y = GEOMETRY.LANE_Y,
				w = notesInfo.notes_w[i],
				h = GEOMETRY.LANE_H}
		end
	elseif is9key() then
		notesInfo.notes_w[1], notesInfo.notes_w[9] = notesInfo.Sc_width, notesInfo.Sc_width
		notesInfo.notes_w[2] = notesInfo.Ot_width

		notesInfo.notes_x[1] = GEOMETRY.LANE_X
		notesInfo.notes_x[2] = GEOMETRY.LANE_X + notesInfo.Sc_width
		notesInfo.notes_x[9] = GEOMETRY.LANE_X + GEOMETRY.LANE_W - notesInfo.notes_w[9]

		for i = 3, 8 do
			notesInfo.notes_x[i] = notesInfo.notes_x[i-1] + notesInfo.Ot_width
			notesInfo.notes_w[i] = notesInfo.Ot_width
		end

		for i = 1, 9 do
			skin.note.dst[i] = {
				x = notesInfo.notes_x[i] + GEOMETRY.PLAY_POS,
				y = GEOMETRY.LANE_Y,
				w = notesInfo.notes_w[i],
				h = GEOMETRY.LANE_H}
		end
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

	local _images = {}
	do
		local id = {"judge-pg", "judge-gr", "judge-gd", "judge-bd", "judge-pr", "judge-ms"}
		local _x, _w, _h = 	GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-math.floor(660 * getJudgeSize() / 2)),
							math.floor(660 * getJudgeSize()),
							math.floor(120 * getJudgeSize())
		for i in ipairs(id) do
			_images[i] = {id = id[i], filter = 1, loop = -1, timer = 46, offsets = {JUDGE_POS_ALPHA}, dst = {
				{time = 0, x = _x, y = GEOMETRY.JUDGE_Y, w = _w, h = _h, a = 64, acc = 2},
				{time = 3000}
			}}
		end
	end

	local _numbers = {}
	do
		local _x = (math.floor(660 * getJudgeSize() / 2))
		for i = 1, 6, 1 do
			-- コンボ数のx,yは判定文字からの相対距離を指定
			-- The value of x and y for the combo number specifies the relative distance from the judgment character.
			_numbers[i] =
				{id = "judge-num", loop = -1, timer = 46, offsets = {JUDGE_NUM_POS_ALPHA}, dst = {
					{time = 0, x = _x, y = 156, w = 54, h = 100, a = 64, acc = 2},
					{time = 3000}
				}}
		end
	end

	skin.judge = {
		{
			id = "judge",
			index = 0,
			images = _images,
			numbers = _numbers,
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
			{x = 0, y = 0, w = 1920, h = 1080, a = 255}}},
		{id = -110, offset = BG_DARKNESS, dst = {
			{x = 0, y = 0, w = 1920, h = 1080, a = 0}}},

		-- BGA関連 
		-- BGA related
		{id = -110, dst = {
			{x = GEOMETRY.INFO_POS + GEOMETRY.BGA_X, y = GEOMETRY.BGA_Y, w = GEOMETRY.BGA_W, h = GEOMETRY.BGA_H}}},
		{id = "bga", stretch = 1, dst = {
			{x = GEOMETRY.INFO_POS + GEOMETRY.BGA_X, y = GEOMETRY.BGA_Y, w = GEOMETRY.BGA_W, h = GEOMETRY.BGA_H}}},

		{id = -101, loop = 400, op = {80, 195}, filter = 1, stretch = 1, dst = {
			{time = 0, x = GEOMETRY.INFO_POS + GEOMETRY.BGA_X, y = GEOMETRY.BGA_Y, w = GEOMETRY.BGA_W, h = GEOMETRY.BGA_H, a = 0},
			{time = 400, a = 255}}},
		{id = "alt-bga-1", stretch = 1, draw = function()
			if main_state.option(40) or main_state.option(170) then
				return true
			end
		end, timer = 41, loop = 400, dst = {
			{time = 0, x = GEOMETRY.INFO_POS + GEOMETRY.BGA_X, y = GEOMETRY.BGA_Y, w = GEOMETRY.BGA_W, h = GEOMETRY.BGA_H, a = 0},
			{time = 400, a = 255}
		}},
		{id = "alt-bga-2", stretch = 1, draw = function()
			if main_state.option(40) or main_state.option(170) then
				return true
			end
		end, timer = 41, loop = 400, dst = {
			{time = 0, x = GEOMETRY.INFO_POS + GEOMETRY.BGA_X, y = GEOMETRY.BGA_Y, w = GEOMETRY.BGA_W, h = GEOMETRY.BGA_H, angle = 180, a = 0},
			{time = 400, angle = 360, a = 255},
			{time = 4400, angle = 0}
		}},
		{id = -110, timer = 41, offset = BGA_DARKNESS, dst = {
			{x = GEOMETRY.INFO_POS + GEOMETRY.BGA_X, y = GEOMETRY.BGA_Y, w = GEOMETRY.BGA_W, h = GEOMETRY.BGA_H, a = 0}}}
	}
	_images, _numbers = nil, nil

	---- <<< 曲情報エリア開始
	---- <<< song infomation area start

	-- ジャンル名・曲名 
	-- genre,title
	if isScratchRight() then
		append_all(skin.destination, {
			{id = "inplay-title", 	timer = 41, filter = 1, dst = 	{{x = GEOMETRY.INFO_POS + 8, y = 1033, w = 600, h = 42}}},
			{id = "inplay-artist", 	timer = 41, filter = 1, dst = 	{{x = GEOMETRY.INFO_POS + 8, y = 1002, w = 600, h = 26}}},
			{id = "inplay-table", 	timer = 41, filter = 1, dst = 	{{x = GEOMETRY.INFO_POS + 8, y = 966, w = 600, h = 26}}}
		})
	else
		append_all(skin.destination, {
			{id = "inplay-title", 	timer = 41, filter = 1, dst = 	{{x = GEOMETRY.INFO_POS + 608, y = 1033, w = 600, h = 42}}},
			{id = "inplay-artist", 	timer = 41, filter = 1, dst = 	{{x = GEOMETRY.INFO_POS + 608, y = 1002, w = 600, h = 26}}},
			{id = "inplay-table", 	timer = 41, filter = 1, dst = 	{{x = GEOMETRY.INFO_POS + 608, y = 966, w = 600, h = 26}}}
		})
	end

	-- 判定情報・曲情報・BPM・ゲージの値など
	-- Judge information, song information, BPM, gauge values, etc.
	append_all(skin.destination, {
		{id = "bf-info-frame", 					dst = {{x = GEOMETRY.INFO_POS, 			y = 0, w = 616, h = 480}}},
		{id = "af-info-frame", 		timer = 41, dst = {{x = GEOMETRY.INFO_POS, 			y = 0, w = 616, h = 480}}},
		{id = "info-rate-DnP", 		timer = 41, dst = {{x = GEOMETRY.INFO_POS + 525, 	y = 269, w = 74, h = 21}}},
		{id = "pf-num", 			timer = 41, dst = {{x = GEOMETRY.INFO_POS + 178, 	y = 410, w = 20, h = 21}}},
		{id = "gr-num",	 			timer = 41, dst = {{x = GEOMETRY.INFO_POS + 178, 	y = 387, w = 20, h = 21}}},
		{id = "gd-num", 			timer = 41, dst = {{x = GEOMETRY.INFO_POS + 178, 	y = 364, w = 20, h = 21}}},
		{id = "bd-num", 			timer = 41, dst = {{x = GEOMETRY.INFO_POS + 178, 	y = 341, w = 20, h = 21}}},
		{id = "pr-num", 			timer = 41, dst = {{x = GEOMETRY.INFO_POS + 178, 	y = 318, w = 20, h = 21}}},
		{id = "ms-num", 			timer = 41, dst = {{x = GEOMETRY.INFO_POS + 178, 	y = 295, w = 20, h = 21}}},
		{id = "fl-num", 			timer = 41, dst = {{x = GEOMETRY.INFO_POS + 178,	y = 269, w = 20, h = 21}}},
		{id = "total-num", 						dst = {{x = GEOMETRY.INFO_POS + 519, 	y = 410, w = 20, h = 21}}},
		{id = "m-combo", 			timer = 41, dst = {{x = GEOMETRY.INFO_POS + 419, 	y = 364, w = 20, h = 21}}},
		{id = "t-notes", 						dst = {{x = GEOMETRY.INFO_POS + 519, 	y = 364, w = 20, h = 21}}},
		{id = "fs-num", 			timer = 41, dst = {{x = GEOMETRY.INFO_POS + 519, 	y = 341, w = 20, h = 21}}},
		{id = "sl-num", 			timer = 41, dst = {{x = GEOMETRY.INFO_POS + 519, 	y = 318, w = 20, h = 21}}},
		{id = "br-num", 			timer = 41, dst = {{x = GEOMETRY.INFO_POS + 519, 	y = 295, w = 20, h = 21}}},
		{id = "info-rate-num", 		timer = 41, dst = {{x = GEOMETRY.INFO_POS + 459, 	y = 269, w = 20, h = 21}}},
		{id = "info-rate-adot-num", timer = 41, dst = {{x = GEOMETRY.INFO_POS + 539, 	y = 269, w = 20, h = 21}}},
		{id = "gauge-num", 						dst = {{x = GEOMETRY.INFO_POS + 231, 	y = 143, w = 30, h = 31}}},
		{id = "gauge-adot-num", 				dst = {{x = GEOMETRY.INFO_POS + 333, 	y = 143, w = 30, h = 31}}},
		{id = "bpm-now", 						dst = {{x = GEOMETRY.INFO_POS + 200, 	y = 10, w = 72, h = 72}}},
		{id = "bpm-min", 						dst = {{x = GEOMETRY.INFO_POS + 82, 	y = 10, w = 36, h = 36}}},
		{id = "bpm-max", 						dst = {{x = GEOMETRY.INFO_POS + 426, 	y = 10, w = 36, h = 36}}}
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
					{x = GEOMETRY.INFO_POS + 429, y = 387, w = 170, h = 21}
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
			{x = GEOMETRY.INFO_POS + 244, y = 184, w = 128, h = 19}
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
			{x = GEOMETRY.INFO_POS + 407, y = 184, w = 146, h = 19}
		}})

	-- ハイスピードの表示
	-- Hi-Speed Type
	if isHiSpeedRelative() then
		table.insert(skin.value, {id = "relative-num", src = "info_system_src", x = 617, y = 66, w = 200, h = 21, divx = 10, digit = 4, ref = 313, align = 0})
		table.insert(skin.destination, {id = "relative-num", dst = {{x = GEOMETRY.INFO_POS + 86, y = 182, w = 20, h = 21}}})
	else
		table.insert(skin.value, {id = "absolute-num", src = "info_system_src", x = 617, y = 88, w = 200, h = 21, divx = 10, digit = 4, ref = 312, align = 0})
		table.insert(skin.destination, {id = "absolute-num", dst = {{x = GEOMETRY.INFO_POS + 86, y = 182, w = 20, h = 21}}})
	end

	-- F/S しきい値
	-- F/S Threshold
	if isFSThresholdDef() then
		table.insert(skin.destination, {id = "judgetiming-num", dst = {{x = GEOMETRY.INFO_POS + 113, y = 157, w = 15, h = 17}}})
	else
		table.insert(skin.image, {id = "threshold-sign", src = "info_system_src", x = 768, y = 145, w = 29, h = 17})
		table.insert(skin.value, {id = "threshold-num", src = "info_system_src", x = 617, y = 145, w = 150, h = 17, divx = 10, digit = 3, align = 1, value = function()
			return FS_THRESHOLD
		end})
		append_all(skin.destination, {
			{id = "judgetiming-num", dst = {{x = GEOMETRY.INFO_POS + 75, y = 157, w = 15, h = 17}}},
			{id = "threshold-sign",	dst = {{x = GEOMETRY.INFO_POS + 126, y = 157, w = 29, h = 17}}},
			{id = "threshold-num", dst = {{x = GEOMETRY.INFO_POS + 155, y = 157, w = 15, h = 17}}}
		})
	end

	---- 曲情報エリア終了 >>>
	---- song infomation area finish >>>

	---- <<< スコアエリア開始
	---- <<< score area start

	-- 操作時間・フレームレート・グラフなど
	-- Operation time, frame rate, graphs, etc.
	append_all(skin.destination, {
		{id = "score-frame", 			timer = 41, dst = {{x = GEOMETRY.SCORE_POS,							y = 0, w = 372, h = 1080}}},
		{id = "score-rate-DnP", 		timer = 41, dst = {{x = GEOMETRY.SCORE_POS + 91,					y = 993, w = 76, h = 22}}},
		{id = "score-rate-num", 		timer = 41, dst = {{x = GEOMETRY.SCORE_POS + 28, 					y = 992, w = 20, h = 24}}},
		{id = "score-rate-adot-num", 	timer = 41, dst = {{x = GEOMETRY.SCORE_POS + 102, 					y = 992, w = 20, h = 24}}},
		{id = "score-score", 			timer = 41, dst = {{x = GEOMETRY.SCORE_POS + 244, 					y = 961, w = 20, h = 21}}},
		{id = "score-diff-best", 		timer = 41, dst = {{x = GEOMETRY.SCORE_POS + 224, 					y = 935, w = 20, h = 21}}},
		{id = "score-diff-target", 		timer = 41, dst = {{x = GEOMETRY.SCORE_POS + 224, 					y = 909, w = 20, h = 21}}},
		{id = "graph-final", 			timer = 41, dst = {{x = GEOMETRY.SCORE_POS + GEOMETRY.GRAPH_BLUE, 	y = 102, w = 80, h = 800}}},
		{id = "graph-now", 				timer = 41, dst = {{x = GEOMETRY.SCORE_POS + GEOMETRY.GRAPH_BLUE, 	y = 102, w = 80, h = 800}}},
		{id = "graph-best-final", 		timer = 41, dst = {{x = GEOMETRY.SCORE_POS + 168, 					y = 102, w = 80, h = 800}}},
		{id = "graph-best-now", 		timer = 41, dst = {{x = GEOMETRY.SCORE_POS + 168, 					y = 102, w = 80, h = 800}}},
		{id = "graph-target-final", 	timer = 41, dst = {{x = GEOMETRY.SCORE_POS + GEOMETRY.GRAPH_RED, 	y = 102, w = 80, h = 800}}},
		{id = "graph-target-now", 		timer = 41, dst = {{x = GEOMETRY.SCORE_POS + GEOMETRY.GRAPH_RED, 	y = 102, w = 80, h = 800}}},
		{id = "graph-aaa", 				timer = 350, dst = {{x = GEOMETRY.SCORE_POS + 28, 					y = 813, w = 316, h = 13}}},
		{id = "graph-aa", 				timer = 349, dst = {{x = GEOMETRY.SCORE_POS + 28, 					y = 725, w = 316, h = 13}}},
		{id = "graph-a", 				timer = 348, dst = {{x = GEOMETRY.SCORE_POS + 28, 					y = 637, w = 316, h = 13}}}
	})

	if isScratchRight() then
		append_all(skin.destination, {
			{id = "score-time-colon", 				dst = {{x = GEOMETRY.SCORE_POS + 251, 	y = 1054, w = 68, h = 21}}},
			{id = "score-time-hour-num", 			dst = {{x = GEOMETRY.SCORE_POS + 205, 	y = 1054, w = 20, h = 21}}},
			{id = "score-time-minute-num", 			dst = {{x = GEOMETRY.SCORE_POS + 265, 	y = 1054, w = 20, h = 21}}},
			{id = "score-time-second-num", 			dst = {{x = GEOMETRY.SCORE_POS + 325, 	y = 1054, w = 20, h = 21}}},
			{id = "fps-num", 						dst = {{x = GEOMETRY.SCORE_POS + 285, 	y = 1031, w = 20, h = 21}}}
		})
	else
		append_all(skin.destination, {
			{id = "score-time-colon", 				dst = {{x = GEOMETRY.SCORE_POS + 51, 	y = 1054, w = 68, h = 21}}},
			{id = "score-time-hour-num", 			dst = {{x = GEOMETRY.SCORE_POS + 5, 	y = 1054, w = 20, h = 21}}},
			{id = "score-time-minute-num", 			dst = {{x = GEOMETRY.SCORE_POS + 65, 	y = 1054, w = 20, h = 21}}},
			{id = "score-time-second-num",	 		dst = {{x = GEOMETRY.SCORE_POS + 125,	y = 1054, w = 20, h = 21}}},
			{id = "fps-num", 						dst = {{x = GEOMETRY.SCORE_POS + 5, 	y = 1031, w = 20, h = 21}}}
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
					{x = GEOMETRY.SCORE_POS + 260, y = 992, w = 84, h = 31}
			}})
		end
	end

	-- mascot
	if isMascotStop() then
		table.insert(skin.destination,
			{id = "mascot", filter = 1, dst = {
				{x = GEOMETRY.SCORE_POS + GEOMETRY.MASCOT_X, y = GEOMETRY.MASCOT_Y, w = GEOMETRY.MASCOT_W, h = GEOMETRY.MASCOT_H}
			}})
	else
		table.insert(skin.destination,
			{id = "mascot", filter = 1, draw = function()
				if main_state.timer(41) == main_state.timer_off_value then
					return true
				elseif main_state.timer(143) ~= main_state.timer_off_value then
					return true
				end
			end, dst = {
				{x = GEOMETRY.SCORE_POS + GEOMETRY.MASCOT_X, y = GEOMETRY.MASCOT_Y, w = GEOMETRY.MASCOT_W, h = GEOMETRY.MASCOT_H}
			}})
		if isMascotJump() then
			table.insert(skin.destination,
				{id = "mascot", filter = 1, loop = 0, timer = 140, draw = function()
					if main_state.timer(143) == main_state.timer_off_value then
						return true
					end
				end, dst = {
					{time = 0, x = GEOMETRY.SCORE_POS + GEOMETRY.MASCOT_X, 	y = GEOMETRY.MASCOT_Y, w = GEOMETRY.MASCOT_W, 	h = GEOMETRY.MASCOT_H, 			acc = 2},
					{time = 275, 																							h = GEOMETRY.MASCOT_H + (-6), 	acc = 1},
					{time = 500, 											y = GEOMETRY.MASCOT_Y + 10, 					h = GEOMETRY.MASCOT_H + 6},
					{time = 650, 											y = GEOMETRY.MASCOT_Y, 							h = GEOMETRY.MASCOT_H, 			acc = 2},
					{time = 700, 											y = GEOMETRY.MASCOT_Y, 							h = GEOMETRY.MASCOT_H + (-6), 	acc = 1},
					{time = 800, 											y = GEOMETRY.MASCOT_Y, 							h = GEOMETRY.MASCOT_H, 			acc = 2},
					{time = 1000}
				}})
		elseif not isMascotJump() then
			table.insert(skin.destination,
				{id = "mascot", filter = 1, loop = 0, timer = 140, draw = function()
					if main_state.timer(143) == main_state.timer_off_value then
						return true
					end
				end, dst = {
					{time = 0, x = GEOMETRY.SCORE_POS + GEOMETRY.MASCOT_X, 	y = GEOMETRY.MASCOT_Y, w = GEOMETRY.MASCOT_W, h = GEOMETRY.MASCOT_H, acc = 2},
					{time = 500, 											y = GEOMETRY.MASCOT_Y + 10},
					{time = 1000, 											y = GEOMETRY.MASCOT_Y}
				}})
		end
	end

	-- notes graph
	table.insert(skin.destination,{id = "notes-graph", dst = {{x = GEOMETRY.SCORE_POS, y = 0, w = 372, h = 100}}})
	-- BPM graph
	table.insert(skin.destination,{id = "bpm-graph", dst = {{x = GEOMETRY.SCORE_POS, y = 0, w = 372, h = 100}}})

	---- スコアエリア終了 >>>
	---- score area end >>>

	---- <<< プレイエリア開始
	---- <<< play area start

	-- レーン背景
	-- lane background
	append_all(skin.destination, {
		{id = -110, loop = -1, dst = {
			{timer = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = 0, w = GEOMETRY.LANE_W, h = 0, a = 255, acc = 2},
			{timer = 600, h = GEOMETRY.LANE_H}
		}},
		-- 演出
		-- effect
		{id = -111, offsets = {3, JUDGELINE_POS}, loop = 1400, dst = {
			{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = GEOMETRY.LANE_Y, w = GEOMETRY.LANE_W, h = 2160, a = 0, acc = 2},
			{time = 600, a = 0},
			{time = 650, a = 255},
			{time = 1300, a = 0}
		}}
	})

	-- 判定ライン
	-- judge line
	table.insert(skin.destination,
		{id = "judgeline", offsets = {3, JUDGELINE_POS, JUDGELINE_HEIGHT}, dst = {
			{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = GEOMETRY.LANE_Y, w = GEOMETRY.LANE_W, h = 24}
	}})

	-- キービーム
	-- keybeam
	local kb_h = math.floor(GEOMETRY.LANE_H * getKeybeamHeight())
	local kb_w = 		{}
	local kb_type =		{}
	local kb_onTimer = 	{}
	local kb_offTimer = {}
	local kb_move_x = 	{}
	local kb_x = 		{}

	if is7key() then
		kb_w = {
			notesInfo.Ot_width,
			notesInfo.Ot_width,
			notesInfo.Ot_width,
			notesInfo.Ot_width,
			notesInfo.Ot_width,
			notesInfo.Ot_width,
			notesInfo.Ot_width,
			notesInfo.Sc_width
		}
		kb_type = 		{"w", "b", "w", "y", "w", "b", "w", "s"}
		kb_onTimer = 	{101, 102, 103, 104, 105, 106, 107, 100}
		kb_offTimer =	{121, 122, 123, 124, 125, 126, 127, 120}
		kb_move_x = {
			notesInfo.Ot_width / 2,
			notesInfo.Ot_width / 2,
			notesInfo.Ot_width / 2,
			notesInfo.Ot_width / 2,
			notesInfo.Ot_width / 2,
			notesInfo.Ot_width / 2,
			notesInfo.Ot_width / 2,
			notesInfo.Sc_width / 2
		}
		if isScratchRight() then
			-- 1,2,3,4,5,6,7,S
			kb_x = {
				0,
				notesInfo.Ot_width,
				notesInfo.Ot_width * 2,
				notesInfo.Ot_width * 3,
				notesInfo.Ot_width * 4,
				notesInfo.Ot_width * 5,
				notesInfo.Ot_width * 6,
				notesInfo.Ot_width * 7
			}
		else
			-- S,1,2,3,4,5,6,7
			kb_x = {
				notesInfo.Sc_width,
				notesInfo.Sc_width + notesInfo.Ot_width,
				notesInfo.Sc_width + notesInfo.Ot_width * 2,
				notesInfo.Sc_width + notesInfo.Ot_width * 3,
				notesInfo.Sc_width + notesInfo.Ot_width * 4,
				notesInfo.Sc_width + notesInfo.Ot_width * 5,
				notesInfo.Sc_width + notesInfo.Ot_width * 6,
				0
			}
		end
	elseif is5key() then
		kb_w = {
			notesInfo.Ot_width,
			notesInfo.Ot_width,
			notesInfo.Ot_width,
			notesInfo.Ot_width,
			notesInfo.Ot_width,
			notesInfo.Sc_width
		}
		kb_type = 		{"w", "b", "y", "b", "w", "s"}
		kb_onTimer = 	{101, 102, 103, 104, 105, 100}
		kb_offTimer = 	{121, 122, 123, 124, 125, 120}
		kb_move_x = {
			notesInfo.Ot_width / 2,
			notesInfo.Ot_width / 2,
			notesInfo.Ot_width / 2,
			notesInfo.Ot_width / 2,
			notesInfo.Ot_width / 2,
			notesInfo.Sc_width / 2
		}

		-- SC_RIGHT
		if isScratchRight() and is5keyAlignRL() and isNotesWidthTemplate() then
			-- 3,4,5,6,7,S
			kb_x = {
				notesInfo.Ot_width * 2,
				notesInfo.Ot_width * 3,
				notesInfo.Ot_width * 4,
				notesInfo.Ot_width * 5,
				notesInfo.Ot_width * 6,
				notesInfo.Ot_width * 7
			}
		elseif isScratchRight() and is5keyAlignCenter() and isNotesWidthTemplate() then
			-- 2,3,4,5,6,S
			kb_x = {
				notesInfo.Ot_width,
				notesInfo.Ot_width * 2,
				notesInfo.Ot_width * 3,
				notesInfo.Ot_width * 4,
				notesInfo.Ot_width * 5,
				notesInfo.Ot_width * 6
			}
		elseif isScratchRight() and is5keyAlignEnlarge() and isNotesWidthTemplate() then
			-- 1,2,3,4,5,S
			kb_x = {
				0,
				notesInfo.Ot_width,
				notesInfo.Ot_width * 2,
				notesInfo.Ot_width * 3,
				notesInfo.Ot_width * 4,
				notesInfo.Ot_width * 5,
			}
		elseif isScratchRight() and isNotesWidthCustom() then
			-- 1,2,3,4,5,S - CUSTOM
			kb_x = {
				0,
				notesInfo.Ot_width,
				notesInfo.Ot_width * 2,
				notesInfo.Ot_width * 3,
				notesInfo.Ot_width * 4,
				notesInfo.Ot_width * 5,
			}

		-- SC_LEFT	
		elseif isScratchLeft() and is5keyAlignCenter() and isNotesWidthTemplate() then
			-- S,2,3,4,5,6
			kb_x = {
				notesInfo.Sc_width + notesInfo.Ot_width,
				notesInfo.Sc_width + notesInfo.Ot_width * 2,
				notesInfo.Sc_width + notesInfo.Ot_width * 3,
				notesInfo.Sc_width + notesInfo.Ot_width * 4,
				notesInfo.Sc_width + notesInfo.Ot_width * 5,
				0
			}
		else
			-- S,1,2,3,4,5 
			kb_x = {
				notesInfo.Sc_width,
				notesInfo.Sc_width + notesInfo.Ot_width,
				notesInfo.Sc_width + notesInfo.Ot_width * 2,
				notesInfo.Sc_width + notesInfo.Ot_width * 3,
				notesInfo.Sc_width + notesInfo.Ot_width * 4,
				0
			}
		end
	elseif is9key() then
		kb_w = {
			notesInfo.Sc_width,
			notesInfo.Ot_width,
			notesInfo.Ot_width,
			notesInfo.Ot_width,
			notesInfo.Ot_width,
			notesInfo.Ot_width,
			notesInfo.Ot_width,
			notesInfo.Ot_width,
			notesInfo.Sc_width
		}
		kb_type = 		{"s", "w", "b", "w", "y", "w", "b", "w", "s"}
		kb_onTimer = 	{101, 102, 103, 104, 105, 106, 107, 108, 109}
		kb_offTimer =	{121, 122, 123, 124, 125, 126, 127, 128, 109}
		kb_move_x = {
			notesInfo.Sc_width / 2,
			notesInfo.Ot_width / 2,
			notesInfo.Ot_width / 2,
			notesInfo.Ot_width / 2,
			notesInfo.Ot_width / 2,
			notesInfo.Ot_width / 2,
			notesInfo.Ot_width / 2,
			notesInfo.Ot_width / 2,
			notesInfo.Sc_width / 2
		}
		kb_x = {
			0,
			notesInfo.Sc_width,
			notesInfo.Sc_width + notesInfo.Ot_width,
			notesInfo.Sc_width + notesInfo.Ot_width * 2,
			notesInfo.Sc_width + notesInfo.Ot_width * 3,
			notesInfo.Sc_width + notesInfo.Ot_width * 4,
			notesInfo.Sc_width + notesInfo.Ot_width * 5,
			notesInfo.Sc_width + notesInfo.Ot_width * 6,
			notesInfo.Sc_width + notesInfo.Ot_width * 7
		}
	end

	-- Keybeam function
	local function processKeybeam(option)
		if isKeybeamFast() then
			-- キーが押された時
			-- When a key is pressed.
			do
				for i = 1, #kb_type, 1 do
					table.insert(skin.destination,	{
						id = "keybeam-"..kb_type[i], offsets = {3, JUDGELINE_POS}, timer = kb_onTimer[i], blend = 1, op = option, dst = {
							{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + kb_x[i], y = GEOMETRY.LANE_Y, w = kb_w[i], h = kb_h, a = getKeybeamAlpha(255)}
						}
					})
				end
			end
			-- キーが離された時
			-- When a key is released.
			do
				for i = 1, #kb_type, 1 do
					table.insert(skin.destination,	{
						id = "keybeam-"..kb_type[i], offsets = {3, JUDGELINE_POS}, timer = kb_offTimer[i], loop = -1, blend = 1, op = option, dst = {
							{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + kb_x[i], y = GEOMETRY.LANE_Y, w = kb_w[i], h = kb_h, a = getKeybeamAlpha(255)},
							{time = 100, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + kb_x[i] + kb_move_x[i], w = 0, a = 0}
						}
					})
				end
			end
		-- Keybeam slow
		else
			-- キーが押された時
			-- When a key is pressed.
			do
				for i = 1, #kb_type, 1 do
					table.insert(skin.destination,	{
						id = "keybeam-"..kb_type[i], offsets = {3, JUDGELINE_POS}, timer = kb_onTimer[i], loop = 33, blend = 1, op = option, dst = {
							{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + kb_x[i], y = GEOMETRY.LANE_Y, w = kb_w[i], h = kb_h, a = 0},
							{time = 33, a = getKeybeamAlpha(255)}
						}
					})
				end
			end
			-- キーが離された時
			-- When a key is released.
			do
				for i = 1, #kb_type, 1 do
					table.insert(skin.destination,	{
						id = "keybeam-"..kb_type[i], offsets = {3, JUDGELINE_POS}, timer = kb_offTimer[i], loop = -1, blend = 1, op = option, dst = {
							{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + kb_x[i], y = GEOMETRY.LANE_Y, w = kb_w[i], h = math.floor(kb_h * 1.2), a = getKeybeamAlpha(200)},
							{time = 200, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + kb_x[i] + kb_move_x[i], w = 0, a = 0}
						}
					})
				end
			end
		end
	end
	processKeybeam({-273})

	-- notes
	table.insert(skin.destination,{id = "notes", offset = 30})

	-- hidden cover
	table.insert(skin.destination,
		{id = "hiddencover", offsets = {3, JUDGELINE_POS}, timer = 41, op = {273}, dst = {
			{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = GEOMETRY.LANE_Y + 24, w = GEOMETRY.LANE_W, h = GEOMETRY.LANE_H * 0.6}
		}
	})
	processKeybeam({273})

	-- lanecover
	table.insert(skin.destination,
		{id = "lanecover", loop = 1700, dst = {
			{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = 1500, w = GEOMETRY.LANE_W, h = GEOMETRY.LANE_H, acc = 2},
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
				{id = id[i], offset = 4, op = {270}, dst = {{x = dst_x[i] + GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = 1049, w = dst_w[i], h = dst_h[i]}}
			})
		end
	end
	table.insert(skin.destination,
		{id = -111, offset = 4, op = {270, 271}, loop = 0, dst = {
			{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = 1080, w = GEOMETRY.LANE_W, h = 24, a = 255, acc = 2},
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
				{id = id[i], offset = 3, op = {270}, dst = {{x = dst_x[i] + GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = GEOMETRY.LANE_Y + 40, w = dst_w[i], h = dst_h[i]}}
		})
		end
	end
	table.insert(skin.destination,
		{id = -111, offset = 3, op = {270, 272}, loop = 0, dst = {
			{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = GEOMETRY.LANE_Y, w = GEOMETRY.LANE_W, h = 24, a = 255, acc = 2},
			{time = 500, a = 64},
			{time = 1000, a = 255}
		}})


	-- judge
	table.insert(skin.destination,{id = "judge"})

	-- Fast/Slow
	if not isFastSlowMSCenter() and not isFastSlowMSRnL() then
		append_all(skin.image, {
			{id = "fast", src = "fs_char_src", x = 0, y = 0, w = 148, h = 35},
			{id = "slow", src = "fs_char_src", x = 0, y = 36, w = 148, h = 35}
		})
		if isFSThresholdDef() and isFastSlowCenter() then
			append_all(skin.destination, {
				{id = "fast", offsets = {32, FAST_SLOW_POS_ALPHA}, op = {1242}, loop = -1, timer = 46, dst = {
					{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-74), y = GEOMETRY.JUDGE_Y + (-40), w = 148, h = 35, a = 64, acc = 2},
					{time = 500}
				}},
				{id = "slow", offsets = {32, FAST_SLOW_POS_ALPHA}, op = {1243}, loop = -1, timer = 46, dst = {
					{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-74), y = GEOMETRY.JUDGE_Y + (-40), w = 148, h = 35, a = 64, acc = 2},
					{time = 500}
				}}
			})
		elseif isFSThresholdDef() and isFastSlowRnL() then
			append_all(skin.destination, {
				{id = "fast", offsets = {32, FAST_SLOW_POS_ALPHA}, op = {1242}, loop = -1, timer = 46, dst = {
					{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-250), y = GEOMETRY.JUDGE_Y + (-40), w = 148, h = 35, a = 64, acc = 2},
					{time = 500}
				}},
				{id = "slow", offsets = {32, FAST_SLOW_POS_ALPHA}, op = {1243}, loop = -1, timer = 46, dst = {
					{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + 250 + (-148), y = GEOMETRY.JUDGE_Y + (-40), w = 148, h = 35, a = 64, acc = 2},
					{time = 500}
				}}
			})
		elseif not isFSThresholdDef() and isFastSlowCenter() then
			append_all(skin.destination, {
				{id = "fast", offsets = {32, FAST_SLOW_POS_ALPHA}, loop = -1, timer = 46, draw = function()
					return predicateFast()
				end, dst = {
					{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-74), y = GEOMETRY.JUDGE_Y + (-40), w = 148, h = 35, a = 64, acc = 2},
					{time = 500}
				}},
				{id = "slow", offsets = {32, FAST_SLOW_POS_ALPHA}, loop = -1, timer = 46, draw = function()
					return predicateSlow()
				end, dst = {
					{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-74), y = GEOMETRY.JUDGE_Y + (-40), w = 148, h = 35, a = 64, acc = 2},
					{time = 500}
				}}
			})
		elseif not isFSThresholdDef() and isFastSlowRnL() then
			append_all(skin.destination, {
				{id = "fast", offsets = {32, FAST_SLOW_POS_ALPHA}, loop = -1, timer = 46, draw = function()
					return predicateFast()
				end, dst = {
					{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-250), y = GEOMETRY.JUDGE_Y + (-40), w = 148, h = 35, a = 64, acc = 2},
					{time = 500}
				}},
				{id = "slow", offsets = {32, FAST_SLOW_POS_ALPHA}, loop = -1, timer = 46, draw = function()
					return predicateSlow()
				end, dst = {
					{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + 250 + (-148), y = GEOMETRY.JUDGE_Y + (-40), w = 148, h = 35, a = 64, acc = 2},
					{time = 500}
				}}
			})
		end
	elseif isFastSlowMSCenter() then
		table.insert(skin.value, {id = "fsms-num", src = "fs_num_src", x = 0, y = 0, w = 408, h = 70, divx = 12, divy = 2, digit = 4, ref = 525, align = 2})
		if isFSThresholdDef() then
			table.insert(skin.destination,	{
				id = "fsms-num", offsets = {32, FAST_SLOW_POS_ALPHA}, op = {-241}, loop = -1, timer = 46, dst = {
					{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-85), y = GEOMETRY.JUDGE_Y + (-40), w = 34, h = 35, a = 64, acc = 2},
					{time = 500}
				}
			})
		elseif not isFSThresholdDef() then
			table.insert(skin.destination,	{
				id = "fsms-num", offsets = {32, FAST_SLOW_POS_ALPHA}, loop = -1, timer = 46, draw = function()
					return predicateFast() or predicateSlow()
				end, dst = {
					{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-85), y = GEOMETRY.JUDGE_Y + (-40), w = 34, h = 35, a = 64, acc = 2},
					{time = 500}
				}
			})
		end
	elseif isFastSlowMSRnL() then
		append_all(skin.value, {
			{id = "fsms-num", src = "fs_num_src", x = 0, y = 71, w = 408, h = 70, divx = 12, divy = 2, digit = 4, ref = 525, align = 1},
			{id = "slms-num", src = "fs_num_src", x = 0, y = 142, w = 408, h = 70, divx = 12, divy = 2, digit = 4, ref = 525, align = 0}
		})
		if isFSThresholdDef() then
			append_all(skin.destination, {
				{id = "fsms-num", offsets = {32, FAST_SLOW_POS_ALPHA}, op = {-241}, loop = -1, timer = 46, dst = {
					{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-300), y = GEOMETRY.JUDGE_Y + (-40), w = 34, h = 35, a = 64, acc = 2},
					{time = 500}
				}},
				{id = "slms-num", offsets = {32, FAST_SLOW_POS_ALPHA}, op = {-241}, loop = -1, timer = 46, dst = {
					{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER  + 300 + (-170), y = GEOMETRY.JUDGE_Y + (-40), w = 34, h = 35, a = 64, acc = 2},
					{time = 500}
				}}
			})
		elseif not isFSThresholdDef() then
			append_all(skin.destination, {
				{id = "fsms-num", offsets = {32, FAST_SLOW_POS_ALPHA}, loop = -1, timer = 46, draw = function()
					return predicateFast()
				end, dst = {
					{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-300), y = GEOMETRY.JUDGE_Y + (-40), w = 34, h = 35, a = 64, acc = 2},
					{time = 500}
				}},
				{id = "slms-num", offsets = {32, FAST_SLOW_POS_ALPHA}, loop = -1, timer = 46, draw = function()
					return predicateSlow()
				end, dst = {
					{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + 300 + (-170), y = GEOMETRY.JUDGE_Y + (-40), w = 34, h = 35, a = 64, acc = 2},
					{time = 500}
				}}
			})
		end
	end

	-- ターゲットとのスコア差
	-- Score difference from target.
	if not isTarget2On() and isTargetBest() then
		table.insert(skin.value, {id = "diff-mybest", src = "mybest_num_src", x = 0, y = 0, w = 408, h = 70, divx = 12, divy = 2, digit = 5, ref = 152, align = 2, value = function()
			if main_state.float_number(113) ~= 0 and main_state.option(32) then
				return main_state.number(152)
			else
				return main_state.number(153)
			end
		end})
		table.insert(skin.destination,	{
			id = "diff-mybest", offsets = {3, TARGET_POS_ALPHA, JUDGELINE_POS}, timer = 46, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-102), y = GEOMETRY.LANE_Y + 340, w = 34, h = 35, a = 64, acc = 2}
			}
		})
	elseif not isTarget2On() and isTargetRank() then
		table.insert(skin.value, {id = "diff-target", src = "target_num_src", x = 0, y = 0, w = 408, h = 70, divx = 12, divy = 2, digit = 5, ref = 153, align = 2})
		table.insert(skin.destination,	{
			id = "diff-target", offsets = {3, TARGET_POS_ALPHA, JUDGELINE_POS}, op = {32}, timer = 46, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-102), y = GEOMETRY.LANE_Y + 340, w = 34, h = 35, a = 64, acc = 2}
			}
		})
	elseif isTarget2On() and isTargetBest() then
		append_all(skin.value, {
			{id = "diff-target", src = "target_num_src", x = 0, y = 0, w = 408, h = 70, divx = 12, divy = 2, digit = 5, ref = 153, align = 1},
			{id = "diff-mybest", src = "mybest_num_src", x = 0, y = 0, w = 408, h = 70, divx = 12, divy = 2, digit = 5, ref = 152, align = 0}
		})
		append_all(skin.destination, {
			{id = "diff-target", offsets = {3, TARGET_POS_ALPHA, JUDGELINE_POS}, op = {32}, timer = 46, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-334), y = GEOMETRY.LANE_Y + 340, w = 34, h = 35, a = 64, acc = 2}
			}},
			{id = "diff-mybest", offsets = {3, TARGET_POS_ALPHA, JUDGELINE_POS}, timer = 46, draw = function()
				if main_state.float_number(113) ~= 0 and main_state.option(32) then
					return true
				end
			end, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + 334 + (-204), y = GEOMETRY.LANE_Y + 340, w = 34, h = 35, a = 64, acc = 2}
			}}
		})
	elseif isTarget2On() and isTargetRank() then
		append_all(skin.value, {
			{id = "diff-mybest", src = "mybest_num_src", x = 0, y = 0, w = 408, h = 70, divx = 12, divy = 2, digit = 5, ref = 152, align = 1},
			{id = "diff-target", src = "target_num_src", x = 0, y = 0, w = 408, h = 70, divx = 12, divy = 2, digit = 5, ref = 153, align = 0}
		})
		append_all(skin.destination, {
			{id = "diff-mybest", offsets = {3, TARGET_POS_ALPHA, JUDGELINE_POS}, timer = 46, draw = function()
				if main_state.float_number(113) ~= 0 and main_state.option(32) then
					return true
				end
			end, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-334), y = GEOMETRY.LANE_Y + 340, w = 34, h = 35, a = 64, acc = 2}
			}},
			{id = "diff-target", offsets = {3, TARGET_POS_ALPHA, JUDGELINE_POS}, op = {32}, timer = 41, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + 334 + (-204), y = GEOMETRY.LANE_Y + 340, w = 34, h = 35, a = 64, acc = 2}
			}}
		})
	end

	-- レーン上でのレート表示
	-- Rate display on lanes
	if isScoreRateOn() then
		append_all(skin.value, {
			{id = "play-rate-num", 			src = "judgenum_src", x = 0, y = 101, w = 280, h = 50, divx = 10, digit = 3, align = 0, value = function()
				return getDummyNum(102)
			end},
			{id = "play-rate-adot-num", 	src = "judgenum_src", x = 0, y = 101, w = 308, h = 50, divx = 11, digit = 2, align = 0, value = function()
				return getDummyNum(103)
			end}
		})
		table.insert(skin.image, {id = "play-rate-dot", src = "judgenum_src", x = 309, y = 101, w = 16, h = 50})
		append_all(skin.destination, {
			{id = "play-rate-num", offsets = {3, SCORE_RATE_POS_ALPHA, JUDGELINE_POS}, timer = 41, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-8) + (-84), y = GEOMETRY.LANE_Y + 275, w = 28, h = 50, a = 64, acc = 2}
			}},
			{id = "play-rate-adot-num", offsets = {3, SCORE_RATE_POS_ALPHA, JUDGELINE_POS}, timer = 41, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + 8, y = GEOMETRY.LANE_Y + 275, w = 28, h = 50, a = 64, acc = 2}
			}},
			{id = "play-rate-dot", offsets = {3, SCORE_RATE_POS_ALPHA, JUDGELINE_POS}, timer = 41, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-8), y = GEOMETRY.LANE_Y + 275, w = 16, h = 50, a = 64, acc = 2}
			}}
		})
	end

	-- タイミング・ヴィジュアライザー
	-- Timing Visualizer
	if isTimingVisualizerOn() then
		skin.timingvisualizer = {{id = "timing-visualizer"}}
		append_all(skin.destination, {
			{id = "timing-visualizer", offsets = {3, TIMINGVISUALIZER_POS_ALPHA, JUDGELINE_POS}, op = {32}, timer = 41, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + 150, y = GEOMETRY.LANE_Y + 205, w = -300, h = 15, a = 64, r = 230, g = 200, b = 255, acc = 2}
			}}
		})
	end

	-- プレイエリア上でのFast/Slowカウンター
	-- Fast/Slow counter on playground
	if isFSCountOnPlayOn() then
		table.insert(skin.image, {id = "fs-opg-frame", src = "play_system_src", x = 0, y = 1063, w = 600, h = 21})
		append_all(skin.value, {
			{id = "fast-opg-num", src = "play_system_src", x = 0, y = 134, w = 200, h = 21, divx = 10, digit = 4, ref = 423, align = 1},
			{id = "slow-opg-num", src = "play_system_src", x = 0, y = 156, w = 200, h = 21, divx = 10, digit = 4, ref = 424, align = 0}
		})
		append_all(skin.destination, {
			{id = "fs-opg-frame", offsets = {3, FAST_SLOW_COUNT_POS_ALPHA, JUDGELINE_POS}, op = {32}, timer = 46, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-300), y = GEOMETRY.LANE_Y + 301, w = 600, h = 21, a = 64, acc = 2}
			}},
			{id = "fast-opg-num", offsets = {3, FAST_SLOW_COUNT_POS_ALPHA, JUDGELINE_POS}, op = {32}, timer = 46, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-300), y = GEOMETRY.LANE_Y + 275, w = 20, h = 21, a = 64, acc = 2}
			}},
			{id = "slow-opg-num", offsets = {3, FAST_SLOW_COUNT_POS_ALPHA, JUDGELINE_POS}, op = {32}, timer = 46, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + 300 - 80, y = GEOMETRY.LANE_Y + 275, w = 20, h = 21, a = 64, acc = 2}
			}}
		})
	end

	-- レーン枠
	-- lane frame
	if isLaneFrameOn() then
		table.insert(skin.image, {id = "lane-frame", src = "play_system_src", x = 0, y = 0, w = 10, h = 10})
		append_all(skin.destination, {
			{id = "lane-frame", loop = 600, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + (-15), y = 0, w = 15, h = 0, acc = 2},
				{time = 600, h = 1080}
			}},
			{id = "lane-frame", loop = 600, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_W, y = 0, w = 15, h = 0, acc = 2},
				{time = 600, h = 1080}
			}}
		})
	end

	-- Gauge function
	local function processGauge()
		if isScratchRight() then
			append_all(skin.destination, {
				{id = -110, offset = GAUGE_POS, loop = 250, dst = {
					{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + 750 + 26, y = 0, w = -750, h = 0, a = 255, acc = 2},
					{time = 200},
					{time = 250, h = 25}
				}},
				{id = "gauge", offsets = {GAUGE_POS, GAUGE_ALPHA}, loop = 250, dst = {
					{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + 750 + 26, y = 0, w = -750, h = 0, a = 64, acc = 2},
					{time = 200},
					{time = 250, h = 25}
				}}
			})
		elseif isScratchLeft() then
			append_all(skin.destination, {
				{id = -110, offset = GAUGE_POS, loop = 250, dst = {
					{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + 26, y = 0, w = 750, h = 0, a = 255, acc = 2},
					{time = 200},
					{time = 250, h = 25}
				}},
				{id = "gauge", offsets = {GAUGE_POS, GAUGE_ALPHA}, loop = 250, dst = {
					{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + 26, y = 0, w = 750, h = 0, a = 64, acc = 2},
					{time = 200},
					{time = 250, h = 25}
				}}
			})
		end
	end
	if not isBombUnderTheGaugeOn() then processGauge() end

	-- ボム
	-- bomb
	local b_init = 			{}
	local bombTimer = 		{}
	local lnBombTimer = 	{}
	local bombPosX = 		{}
	local bombProperty = 	getBombProperty()
	local bombCycle = 		math.floor(bombProperty.BOMB_CYCLE_MULUTIPLIER 		* 251)
	local lnbombCycle = 	math.floor(bombProperty.LNBOMB_CYCLE_MULUTIPLIER 	* 160)
	local bombWidth = 		math.floor(bombProperty.BOMB_WIDTH_MULUTIPLIER 		* 600)
	local bombHeight = 		math.floor(bombProperty.BOMB_HEIGHT_MULUTIPLIER 	* 450)

	if is7key() then
		b_init = 		{"1", "2", "3", "4", "5", "6", "7", "s"}
		bombTimer = 	{51, 52, 53, 54, 55, 56, 57, 50}
		lnBombTimer = 	{71, 72, 73, 74, 75, 76, 77, 70}

		-- ボム中心点
		-- center of bomb
		if isScratchRight() then
			bombPosX = {
				notesInfo.Ot_width / 2,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 2,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 3,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 4,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 5,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 6,
				notesInfo.Sc_width / 2 + notesInfo.Ot_width * 7
			}
		else
			bombPosX = {
				notesInfo.Sc_width + notesInfo.Ot_width / 2,
				notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width,
				notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width * 2,
				notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width * 3,
				notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width * 4,
				notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width * 5,
				notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width * 6,
				notesInfo.Sc_width / 2
			}
		end
	elseif is5key() then
		b_init = 		{"1", "2", "3", "4", "5", "s"}
		bombTimer = 	{51, 52, 53, 54, 55, 50}
		lnBombTimer = 	{71, 72, 73, 74, 75, 70}

		-- ボム中心点
		-- center of bomb

		-- SC_RIGHT
		if isScratchRight() and is5keyAlignRL() and isNotesWidthTemplate() then
			-- 3,4,5,6,7,S
			bombPosX = {
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 2,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 3,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 4,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 5,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 6,
				notesInfo.Sc_width / 2 + notesInfo.Ot_width * 7
			}
		elseif isScratchRight() and is5keyAlignCenter() and isNotesWidthTemplate() then
			-- 2,3,4,5,6,S
			bombPosX = {
				notesInfo.Ot_width / 2 + notesInfo.Ot_width,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 2,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 3,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 4,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 5,
				notesInfo.Sc_width / 2 + notesInfo.Ot_width * 7
			}
		elseif isScratchRight() and is5keyAlignEnlarge() and isNotesWidthTemplate() then
			-- 1,2,3,4,5,S
			bombPosX = {
				notesInfo.Ot_width / 2,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 2,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 3,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 4,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 5,
			}
		elseif isScratchRight() and isNotesWidthCustom() then
			-- 1,2,3,4,5,S - CUSTOM
			bombPosX = {
				notesInfo.Ot_width / 2,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 2,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 3,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 4,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 5,
			}

		-- SC_LEFT
		elseif isScratchLeft() and is5keyAlignCenter() and isNotesWidthTemplate() then
			-- S,2,3,4,5,6
			bombPosX = {
				notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width,
				notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width * 2,
				notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width * 3,
				notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width * 4,
				notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width * 5,
				notesInfo.Sc_width / 2
			}
		else
			-- S,1,2,3,4,5
			bombPosX = {
				notesInfo.Sc_width + notesInfo.Ot_width / 2,
				notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width,
				notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width * 2,
				notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width * 3,
				notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width * 4,
				notesInfo.Sc_width / 2
			}
		end
	elseif is9key() then
		b_init = 		{"1", "2", "3", "4", "5", "6", "7", "8", "9"}
		bombTimer = 	{51, 52, 53, 54, 55, 56, 57, 58, 59}
		lnBombTimer = 	{71, 72, 73, 74, 75, 76, 77, 78, 79}

		-- ボム中心点
		-- center of bomb

		bombPosX = {
			notesInfo.Sc_width / 2,
			notesInfo.Sc_width + notesInfo.Ot_width / 2,
			notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width,
			notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width * 2,
			notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width * 3,
			notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width * 4,
			notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width * 5,
			notesInfo.Sc_width + notesInfo.Ot_width / 2 + notesInfo.Ot_width * 6,
			notesInfo.Sc_width * 1.5 +  notesInfo.Ot_width * 7
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
			{x = 0, y = 0, w = 1, h = 1}
		}
	})
	table.insert(skin.destination,{
		id = "lnbomb", dst = {
			{x = 0, y = 0, w = 1, h = 1}
		}
	})

	-- 爆発エフェクト
	-- Explosion effect

	-- 通常爆発エフェクトの配置
	-- Normal explosion effect placement
	for i = 1, #b_init, 1 do
		table.insert(skin.destination, {
			id = "bomb-"..b_init[i], offsets = {3, JUDGELINE_POS, BOMB_POS_ALPHA}, loop = -1, filter = 1, timer = bombTimer[i], blend = 2, dst = {
				{time = 0, 	x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + bombPosX[i] - bombWidth / 2,
							y = GEOMETRY.LANE_Y - (bombHeight / 2),
							w = bombWidth,
							h = bombHeight,
							a = 64, r = bombProperty.BOMB_RED, g = bombProperty.BOMB_GREEN, b = bombProperty.BOMB_BLUE, acc = 2},
				{time = bombCycle - 1}
			}
		})
	end

	-- LN爆発エフェクトの配置
	-- LN explosion effect placement
	for i = 1, #b_init, 1 do
		table.insert(skin.destination,	{
			id = "lnbomb-"..b_init[i], offsets = {3, JUDGELINE_POS, BOMB_POS_ALPHA}, filter = 1, timer = lnBombTimer[i], blend = 2, dst = {
				{time = 0, x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + bombPosX[i] - bombWidth / 2,
							y = GEOMETRY.LANE_Y - (bombHeight / 2),
							w = bombWidth,
							h = bombHeight,
							a = 64, r = bombProperty.LNBOMB_RED, g = bombProperty.LNBOMB_GREEN, b = bombProperty.LNBOMB_BLUE, acc = 2},
				{time = lnbombCycle - 1}
			}
		})
	end

	-- ゲージ
	-- gauge
	if isBombUnderTheGaugeOn() then processGauge() end

	-- 曲の長さ + 残りノーツ
	-- song length + remain notes
	if isScratchRight() then
		append_all(skin.destination, {
			-- 残りノーツ パーセント
			-- remain notes persent
			{id = "remain-rate-num", 				dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + GEOMETRY.LANE_W + 23, y = 74, w = 15, h = 18}}},
			{id = "remain-rate-adot-num", 			dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + GEOMETRY.LANE_W + 77, y = 74, w = 15, h = 18}}},
			{id = "remain-rate-dot", 				dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + GEOMETRY.LANE_W + 68, y = 74, w = 9, h = 18}}},
			-- 残りノーツ
			-- remain notes
			{id = "remain-notes", 					dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + GEOMETRY.LANE_W + 32, y = 44, w = 15, h = 18}}},
			-- 残り時間
			-- time left
			{id = "song-remain-m", 					dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + GEOMETRY.LANE_W + 38, y = 10, w = 15, h = 18}}},
			{id = "song-remain-s", 					dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + GEOMETRY.LANE_W + 77, y = 10, w = 15, h = 18}}},
			{id = "song-time-colon", 				dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + GEOMETRY.LANE_W + 68, y = 10, w = 9, h = 18}}},
			-- 曲の長さスライダー
			-- song length slider
			{id = "song-progress-bar", 	timer = 41, dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + GEOMETRY.LANE_W + 74, y = 330, w = 4, h = 600, a = 100}}},
			{id = "song-progress-fin", 	timer = 41, dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + GEOMETRY.LANE_W + 74, y = 930, w = 4, h = -600}}},
			{id = "song-progress", 		timer = 41, dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + GEOMETRY.LANE_W + 70, y = 930, w = 12, h = 21}}}
		})
	else
		append_all(skin.destination, {
			-- 残りノーツ パーセント
			-- remain notes persent
			{id = "remain-rate-num", 				dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + (-104), y = 74, w = 15, h = 18}}},
			{id = "remain-rate-adot-num", 			dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + (-50), y = 74, w = 15, h = 18}}},
			{id = "remain-rate-dot", 				dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + (-59), y = 74, w = 9, h = 18}}},
			-- 残りノーツ
			-- remain notes
			{id = "remain-notes", 					dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + (-95), y = 44, w = 15, h = 18}}},
			-- 残り時間
			-- time left	
			{id = "song-remain-m", 					dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + (-89), y = 10, w = 15, h = 18}}},
			{id = "song-remain-s", 					dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + (-50), y = 10, w = 15, h = 18}}},
			{id = "song-time-colon", 				dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + (-59), y = 10, w = 9, h = 18}}},
			-- 曲の長さスライダー
			-- song length slider		
			{id = "song-progress-bar", 	timer = 41, dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + (-78), y = 330, w = 4, h = 600, a = 100}}},
			{id = "song-progress-fin", 	timer = 41, dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + (-78), y = 930, w = 4, h = -600}}},
			{id = "song-progress", 		timer = 41, dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + (-82), y = 930, w = 12, h = 21}}}
		})
	end

	append_all(skin.destination, {
		-- リプレイ表示
		-- replay
		{id = "replay", offsets = {3, JUDGELINE_POS}, op = {84}, dst = {
			{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-146), y = GEOMETRY.LANE_Y + 70, w = 258, h = 35}
		}},
		-- オートプレイ表示
		-- auto play
		{id = "auto", offsets = {3, JUDGELINE_POS}, op = {33}, dst = {
			{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-187), y = GEOMETRY.LANE_Y + 70, w = 348, h = 35}
		}},
		-- 曲終了表示
		-- end of note
		{id = "eon", offsets = {32}, draw = function()
			if main_state.timer(143) == main_state.timer_off_value and getRemainNotes() == 0 then
				return true
			end
		end,dst = {
			{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-212), y = GEOMETRY.JUDGE_Y + (-110), w = 390, h = 35, r = 64, g = 64, b = 64}
		}},
		{id = "eon", timer = 143, offsets = {32}, dst = {
			{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-212), y = GEOMETRY.JUDGE_Y + (-110), w = 390, h = 35}
		}}
	})

	-- fullcombo
	append_all(skin.destination, {
		{id = "fc-effect", loop = -1, timer = 48, stretch = 3, blend = 2, dst = {
			{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = 0, w = GEOMETRY.LANE_W, h = 1080, a = 128},
			{time = 2100, y = 100, a = 0}
		}},
		{id = "fullcombo", loop = -1, timer = 48, dst = {
			{time = 550, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-180), y = GEOMETRY.JUDGE_Y + (-200), w = 360, h = 36, a = 0},
			{time = 650, a = 255},
			{time = 1600},
			{time = 1800, y = GEOMETRY.JUDGE_Y + (-230), a = 0}
		}},
	})

	---- プレイエリア終了 >>>
	---- play area end >>>

	---- <<< ロード中曲情報開始
	---- <<< song infomation in loading start

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
	{id = "inload-genre", loop = 600, op = {80}, filter = 1, dst = {
		{time = 0, x = 445, y = 608, w = 1405, h = 27, a = 0},
		{time = 300},
		{time = 600, a = 255}
	}})

	table.insert(skin.destination,
	{id = "inload-title", loop = 600, op = {80}, filter = 1, dst = {
		{time = 0, x = 445, y = 520, w = 1405, h = 73, a = 0},
		{time = 300},
		{time = 600, a = 255}
	}})

	table.insert(skin.destination,
	{id = "inload-artist", loop = 600, op = {80}, filter = 1, dst = {
		{time = 0, x = 445, y = 425, w = 1405, h = 41, a = 0},
		{time = 300},
		{time = 600, a = 255}
	}})

	-- ロード終了
	-- loading end
	table.insert(skin.destination,
	{id = "inload-genre", timer = 40,loop = 300, op = {81}, filter = 1, dst = {
		{time = 0, x = 445, y = 608, w = 1405, h = 27, a = 255},
		{time = 300, a = 0}
	}})

	table.insert(skin.destination,
	{id = "inload-title", tiemr = 40, loop = 300, op = {81}, filter = 1, dst = {
		{time = 0, x = 445, y = 520, w = 1405, h = 73, a = 255},
		{time = 300, a = 0}
	}})

	table.insert(skin.destination,
	{id = "inload-artist", timer = 40, loop = 300, op = {81}, filter = 1, dst = {
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
		{id = "inload-titleline", loop = 900, op = {80}, dst = {
			{time = 0, x = 400, y = 505, w = 0, h = 3, a = 100, acc = 2},
			{time = 300, w = 0},
			{time = 400},
			{time = 900, w = 1450}
		}})
	table.insert(skin.destination,
		{id = "inload-progress", loop = 900, op = {80}, dst = {
			{time = 0, x = 400, y = 505, w = 0, h = 3, acc = 2},
			{time = 300, w = 0},
			{time = 400},
			{time = 900, w = 1450}
		}})

	-- ロード終了
	-- loading end
	table.insert(skin.destination,
		{id = "inload-progress", timer = 40, loop = 300, op = {81}, dst = {
			{time = 0, x = 400, y = 505, w = 1450, h = 3, a = 100},
			{time = 300, a = 0}
		}})

	---- ロード中曲情報終了 >>>
	---- song infomation in loading end >>>

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
	main = main,
	processHeader = processHeader
}