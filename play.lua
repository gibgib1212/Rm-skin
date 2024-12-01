main_state = require("main_state")

local function append_all(list, list1)
	for _, v in ipairs(list1) do
		table.insert(list, v)
	end
end

-- ========================================================================================================================================================	

-- # option counts

local OPTION = 899
local function optionCount()
	OPTION = OPTION + 1
	return OPTION
end

local SC_LEFT = 							optionCount()
local SC_RIGHT = 							optionCount()

local LANE_ALIGN_CENTER =					optionCount()
local LANE_ALIGN_RL =						optionCount()

local LANE_FRAME_ON = 						optionCount()
local LANE_FRAME_OFF = 						optionCount()

local LANE_CENTER_ALL = 					optionCount()
local LANE_CENTER_NOTES = 					optionCount()

local NOTES_WIDTH_TEMPLATE = 				optionCount()
local NOTES_WIDTH_CUSTOM = 					optionCount()

local JUDGE_TYPE_A =						optionCount()
local JUDGE_TYPE_B =						optionCount()
local JUDGE_TYPE_C =						optionCount()
local JUDGE_TYPE_D =						optionCount()

local NOTES_5KEY_ALIGN_RL = 				optionCount()
local NOTES_5KEY_ALIGN_CENTER = 			optionCount()
local NOTES_5KEY_ALIGN_ENLARGE = 			optionCount()

local NOTES_HEIGHT_50_PIX = 				optionCount()
local NOTES_HEIGHT_45_PIX = 				optionCount()
local NOTES_HEIGHT_40_PIX = 				optionCount()
local NOTES_HEIGHT_35_PIX = 				optionCount()
local NOTES_HEIGHT_30_PIX = 				optionCount()
local NOTES_HEIGHT_CUSTOM = 				optionCount()

local INPUT_DEVICE_KEYBORAD =				optionCount()
local INPUT_DEVICE_CONTROLLER =				optionCount()

local KEYBEAM_DISPLAY_FAST = 				optionCount()
local KEYBEAM_DISPLAY_SLOW = 				optionCount()

local KEYBEAM_HEIGHT_MULUTIPLIER_x100 =		optionCount()
local KEYBEAM_HEIGHT_MULUTIPLIER_x75 =		optionCount()
local KEYBEAM_HEIGHT_MULUTIPLIER_x50 =		optionCount()
local KEYBEAM_HEIGHT_MULUTIPLIER_x25 =		optionCount()
local KEYBEAM_HEIGHT_MULUTIPLIER_CUSTOM =	optionCount()

local KEYBEAM_ALPHA_MULUTIPLIER_x100 =		optionCount()
local KEYBEAM_ALPHA_MULUTIPLIER_x75 =		optionCount()
local KEYBEAM_ALPHA_MULUTIPLIER_x50 =		optionCount()
local KEYBEAM_ALPHA_MULUTIPLIER_x25 =		optionCount()
local KEYBEAM_ALPHA_MULUTIPLIER_CUSTOM =	optionCount()

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

local HITERRORVISUALIZER_OFF = 				optionCount()
local HITERRORVISUALIZER_ON = 				optionCount()

local FAST_SLOW_COUNT_OFF = 				optionCount()
local FAST_SLOW_COUNT_ON = 					optionCount()

local FAST_SLOW_THRESHOLD_DEFAULT = 		optionCount()
local FAST_SLOW_THRESHOLD_CUSTOM = 			optionCount()

local GAUGE_DISPLAY_DEFAULT =				optionCount()
local GAUGE_DISPLAY_STATIC =				optionCount()

local BOMB_UNDER_GAUGE_OFF = 				optionCount()
local BOMB_UNDER_GAUGE_ON = 				optionCount()

local BOMB_PROPERTY_TEMPLATE =				optionCount()
local BOMB_PROPERTY_CUSTOM =				optionCount()

local HI_SPEED_RELATIVE =					optionCount()
local HI_SPEED_ABSOLUTE =					optionCount()

local MASCOT_STOP = 						optionCount()
local MASCOT_ACTIVE = 						optionCount()

-- ========================================================================================================================================================	

-- # offset counts

local OFFSET = 59
local function offsetCount()
	OFFSET = OFFSET + 1
	return OFFSET
end

local JUDGE_POS = 							offsetCount()
local JUDGE_NUM_POS = 						offsetCount()
local FAST_SLOW_POS = 						offsetCount()
local TARGET_POS = 							offsetCount()
local TARGET2_POS = 						offsetCount()
local SCORE_RATE_POS = 						offsetCount()
local HITERRORVISUALIZER_POS =			 	offsetCount()
local FAST_SLOW_COUNT_POS = 				offsetCount()
local JUDGELINE_POS = 						offsetCount()
local JUDGELINE_HEIGHT = 					offsetCount()
local BOMB_POS = 							offsetCount()
local GAUGE_POS_SIZE = 						offsetCount()

local BG_TRANSPARENCY = 					offsetCount()
local BGA_TRANSPARENCY = 					offsetCount()
local BARLINE_TRANSPARENCY = 				offsetCount()
local JUDGE_PG_TRANSPARENCY = 				offsetCount()
local JUDGE_GR_TRANSPARENCY = 				offsetCount()
local JUDGE_GD_TRANSPARENCY = 				offsetCount()
local JUDGE_BD_TRANSPARENCY = 				offsetCount()
local JUDGE_PR_TRANSPARENCY = 				offsetCount()
local JUDGE_MS_TRANSPARENCY = 				offsetCount()
local JUDGE_NUM_TRANSPARENCY = 				offsetCount()
local FAST_SLOW_TRANSPARENCY = 				offsetCount()
local TARGET_TRANSPARENCY = 				offsetCount()
local TARGET2_TRANSPARENCY = 				offsetCount()
local SCORE_RATE_TRANSPARENCY = 			offsetCount()
local HITERRORVISUALIZER_TRANSPARENCY =		offsetCount()
local HITERRORVISUALIZER_BG_TRANSPARENCY =	offsetCount()
local FAST_SLOW_COUNT_TRANSPARENCY = 		offsetCount()
local BOMB_TRANSPARENCY = 					offsetCount()
local GAUGE_TRANSPARENCY = 					offsetCount()

-- ========================================================================================================================================================	

-- # offset, filepath, property

local original_offset = {
	{name = "Judge Position", 					id = JUDGE_POS, 				x = true, 	y = true},
	{name = "Combo Number Position", 			id = JUDGE_NUM_POS, 			x = true, 	y = true},
	{name = "F/S Position", 					id = FAST_SLOW_POS, 			x = true, 	y = true},
	{name = "Target Position", 					id = TARGET_POS, 				x = true, 	y = true},
	{name = "Target2 Position", 				id = TARGET2_POS, 				x = true, 	y = true},
	{name = "Score Rate Position", 				id = SCORE_RATE_POS, 			x = true, 	y = true},
	{name = "Hit Error Visualizer Position",	id = HITERRORVISUALIZER_POS,	x = true, 	y = true},
	{name = "F/S Count Position", 				id = FAST_SLOW_COUNT_POS, 		x = true, 	y = true},
	{name = "Judgeline Position", 				id = JUDGELINE_POS, 			y = true},
	{name = "Judgeline Height", 				id = JUDGELINE_HEIGHT, 												h = true},
	{name = "Bomb Position", 					id = BOMB_POS,	 				y = true},
	{name = "Gauge Position and Size", 			id = GAUGE_POS_SIZE, 			x = true, 	y = true, 	w = true, 	h = true},

	{name = "Background Transparency (-255 to 0)", 					id = BG_TRANSPARENCY,							a = true},
	{name = "BGA Transparency (-255 to 0)", 						id = BGA_TRANSPARENCY,							a = true},
	{name = "Barline Transparency (-255 to 0)", 					id = BARLINE_TRANSPARENCY,						a = true},
	{name = "Judge PG Transparency (-255 to 0)", 					id = JUDGE_PG_TRANSPARENCY, 					a = true},
	{name = "Judge GR Transparency (-255 to 0)", 					id = JUDGE_GR_TRANSPARENCY, 					a = true},
	{name = "Judge GD Transparency (-255 to 0)",					id = JUDGE_GD_TRANSPARENCY,						a = true},
	{name = "Judge BD Transparency (-255 to 0)", 					id = JUDGE_BD_TRANSPARENCY, 					a = true},
	{name = "Judge PR Transparency (-255 to 0)", 					id = JUDGE_PR_TRANSPARENCY, 					a = true},
	{name = "Judge MS Transparency (-255 to 0)",					id = JUDGE_MS_TRANSPARENCY, 					a = true},
	{name = "Combo Number Transparency (-255 to 0)",				id = JUDGE_NUM_TRANSPARENCY, 					a = true},
	{name = "F/S Transparency (-255 to 0)", 						id = FAST_SLOW_TRANSPARENCY, 					a = true},
	{name = "Target Transparency (-255 to 0)", 						id = TARGET_TRANSPARENCY, 						a = true},
	{name = "Target2 Transparency (-255 to 0)", 					id = TARGET2_TRANSPARENCY, 						a = true},
	{name = "Score Rate Transparency (-255 to 0)", 					id = SCORE_RATE_TRANSPARENCY, 					a = true},
	{name = "Hit Error Visualizer Transparency (-255 to 0)", 		id = HITERRORVISUALIZER_TRANSPARENCY,			a = true},
	{name = "Hit Error Visualizer BG Transparency (-255 to 0)", 	id = HITERRORVISUALIZER_BG_TRANSPARENCY,		a = true},
	{name = "F/S Count Transparency (-255 to 0)", 					id = FAST_SLOW_COUNT_TRANSPARENCY,				a = true},
	{name = "Bomb Transparency (-255 to 0)", 						id = BOMB_TRANSPARENCY,		 					a = true},
	{name = "Gauge Transparency (-255 to 0)", 						id = GAUGE_TRANSPARENCY, 						a = true}
}

local original_filepath = {
	{name = "Mascot", 											path = "parts/!_mascot/*.png", 						def = "!_Default"},
	{name = "Background Image", 								path = "parts/bg/*.png", 							def = "Black"},

	-- Notes : 7key
	{name = "Temeplate_7key : White-Notes", 					path = "parts/notes/7key/1-1_white/*.png", 			def = "White_#Bordered_#f3f3f3"},
	{name = "Temeplate_7key : White-Long-Start", 				path = "parts/notes/7key/1-2_white_lnSt/*.png", 	def = "White_#Partition_#f3f3f3"},
	{name = "Temeplate_7key : White-Long-End", 					path = "parts/notes/7key/1-3_white_lnEn/*.png", 	def = "Off"},
	{name = "Temeplate_7key : White-Long-Body", 				path = "parts/notes/7key/1-4_white_lnBo/*.png", 	def = "White_#Partition_#f3f3f3"},
	{name = "Temeplate_7key : White-Long-Active", 				path = "parts/notes/7key/1-5_white_lnAc/*.png", 	def = "White_#Partition_#f3f3f3"},
	{name = "Temeplate_7key : White-Mine", 						path = "parts/notes/7key/1-6_white_mine/*.png", 	def = "Off"},

	{name = "Temeplate_7key : Blue-Notes", 						path = "parts/notes/7key/2-1_blue/*.png", 			def = "LightBlue_#Bordered_#35eaff"},
	{name = "Temeplate_7key : Blue-Long-Start", 				path = "parts/notes/7key/2-2_blue_lnSt/*.png", 		def = "LightBlue_#Partition_#35eaff"},
	{name = "Temeplate_7key : Blue-Long-End", 					path = "parts/notes/7key/2-3_blue_lnEn/*.png", 		def = "Off"},
	{name = "Temeplate_7key : Blue-Long-Body", 					path = "parts/notes/7key/2-4_blue_lnBo/*.png", 		def = "LightBlue_#Partition_#35eaff"},
	{name = "Temeplate_7key : Blue-Long-Active", 				path = "parts/notes/7key/2-5_blue_lnAc/*.png", 		def = "LightBlue_#Partition_#35eaff"},
	{name = "Temeplate_7key : Blue-Mine", 						path = "parts/notes/7key/2-6_blue_mine/*.png", 		def = "Off"},

	{name = "Temeplate_7key : Yellow-Notes", 					path = "parts/notes/7key/3-1_yellow/*.png", 		def = "Yellow_#Bordered_#ffde35"},
	{name = "Temeplate_7key : Yellow-Long-Start", 				path = "parts/notes/7key/3-2_yellow_lnSt/*.png", 	def = "Yellow_#Partition_#ffde35"},
	{name = "Temeplate_7key : Yellow-Long-End", 				path = "parts/notes/7key/3-3_yellow_lnEn/*.png", 	def = "Off"},
	{name = "Temeplate_7key : Yellow-Long-Body", 				path = "parts/notes/7key/3-4_yellow_lnBo/*.png", 	def = "Yellow_#Partition_#ffde35"},
	{name = "Temeplate_7key : Yellow-Long-Active", 				path = "parts/notes/7key/3-5_yellow_lnAc/*.png", 	def = "Yellow_#Partition_#ffde35"},
	{name = "Temeplate_7key : Yellow-Mine", 					path = "parts/notes/7key/3-6_yellow_mine/*.png", 	def = "Off"},

	{name = "Temeplate_7key : Scratch-Notes", 					path = "parts/notes/7key/4-1_scratch/*.png", 	 	def = "Green_#Bordered_#5def35"},
	{name = "Temeplate_7key : Scratch-Long-Start", 				path = "parts/notes/7key/4-2_scratch_lnSt/*.png", 	def = "Green_#Partition_#5def35"},
	{name = "Temeplate_7key : Scratch-Long-End", 				path = "parts/notes/7key/4-3_scratch_lnEn/*.png", 	def = "Off"},
	{name = "Temeplate_7key : Scratch-Long-Body", 				path = "parts/notes/7key/4-4_scratch_lnBo/*.png", 	def = "Green_#Partition_#5def35"},
	{name = "Temeplate_7key : Scratch-Long-Active", 			path = "parts/notes/7key/4-5_scratch_lnAc/*.png", 	def = "Green_#Partition_#5def35"},
	{name = "Temeplate_7key : Scratch-Mine", 					path = "parts/notes/7key/4-6_scratch_mine/*.png", 	def = "Off"},

	-- Notes : 5key : Normal
	{name = "Temeplate_5key : Normal : White-Notes", 			path = "parts/notes/7key/1-1_white/*.png", 			def = "White_#Bordered_#f3f3f3"},
	{name = "Temeplate_5key : Normal : White-Long-Start", 		path = "parts/notes/7key/1-2_white_lnSt/*.png", 	def = "White_#Partition_#f3f3f3"},
	{name = "Temeplate_5key : Normal : White-Long-End", 		path = "parts/notes/7key/1-3_white_lnEn/*.png", 	def = "Off"},
	{name = "Temeplate_5key : Normal : White-Long-Body", 		path = "parts/notes/7key/1-4_white_lnBo/*.png", 	def = "White_#Partition_#f3f3f3"},
	{name = "Temeplate_5key : Normal : White-Long-Active", 		path = "parts/notes/7key/1-5_white_lnAc/*.png", 	def = "White_#Partition_#f3f3f3"},
	{name = "Temeplate_5key : Normal : White-Mine", 			path = "parts/notes/7key/1-6_white_mine/*.png", 	def = "Off"},

	{name = "Temeplate_5key : Normal : Blue-Notes", 			path = "parts/notes/7key/2-1_blue/*.png", 			def = "LightBlue_#Bordered_#35eaff"},
	{name = "Temeplate_5key : Normal : Blue-Long-Start", 		path = "parts/notes/7key/2-2_blue_lnSt/*.png", 		def = "LightBlue_#Partition_#35eaff"},
	{name = "Temeplate_5key : Normal : Blue-Long-End", 			path = "parts/notes/7key/2-3_blue_lnEn/*.png", 		def = "Off"},
	{name = "Temeplate_5key : Normal : Blue-Long-Body", 		path = "parts/notes/7key/2-4_blue_lnBo/*.png", 		def = "LightBlue_#Partition_#35eaff"},
	{name = "Temeplate_5key : Normal : Blue-Long-Active", 		path = "parts/notes/7key/2-5_blue_lnAc/*.png", 		def = "LightBlue_#Partition_#35eaff"},
	{name = "Temeplate_5key : Normal : Blue-Mine", 				path = "parts/notes/7key/2-6_blue_mine/*.png", 		def = "Off"},

	{name = "Temeplate_5key : Normal : Yellow-Notes", 			path = "parts/notes/7key/3-1_yellow/*.png", 		def = "Yellow_#Bordered_#ffde35"},
	{name = "Temeplate_5key : Normal : Yellow-Long-Start", 		path = "parts/notes/7key/3-2_yellow_lnSt/*.png", 	def = "Yellow_#Partition_#ffde35"},
	{name = "Temeplate_5key : Normal : Yellow-Long-End", 		path = "parts/notes/7key/3-3_yellow_lnEn/*.png", 	def = "Off"},
	{name = "Temeplate_5key : Normal : Yellow-Long-Body", 		path = "parts/notes/7key/3-4_yellow_lnBo/*.png", 	def = "Yellow_#Partition_#ffde35"},
	{name = "Temeplate_5key : Normal : Yellow-Long-Active", 	path = "parts/notes/7key/3-5_yellow_lnAc/*.png", 	def = "Yellow_#Partition_#ffde35"},
	{name = "Temeplate_5key : Normal : Yellow-Mine", 			path = "parts/notes/7key/3-6_yellow_mine/*.png", 	def = "Off"},

	{name = "Temeplate_5key : Normal : Scratch-Notes", 			path = "parts/notes/7key/4-1_scratch/*.png", 	 	def = "Green_#Bordered_#5def35"},
	{name = "Temeplate_5key : Normal : Scratch-Long-Start", 	path = "parts/notes/7key/4-2_scratch_lnSt/*.png", 	def = "Green_#Partition_#5def35"},
	{name = "Temeplate_5key : Normal : Scratch-Long-End", 		path = "parts/notes/7key/4-3_scratch_lnEn/*.png", 	def = "Off"},
	{name = "Temeplate_5key : Normal : Scratch-Long-Body", 		path = "parts/notes/7key/4-4_scratch_lnBo/*.png", 	def = "Green_#Partition_#5def35"},
	{name = "Temeplate_5key : Normal : Scratch-Long-Active", 	path = "parts/notes/7key/4-5_scratch_lnAc/*.png", 	def = "Green_#Partition_#5def35"},
	{name = "Temeplate_5key : Normal : Scratch-Mine", 			path = "parts/notes/7key/4-6_scratch_mine/*.png", 	def = "Off"},

	-- Notes : 5key : Enlarge
	{name = "Temeplate_5key : Enlarge : White-Notes", 			path = "parts/notes/5keyL/1-1_white/*.png", 		def = "White_#Bordered_#f3f3f3"},
	{name = "Temeplate_5key : Enlarge : White-Long-Start", 		path = "parts/notes/5keyL/1-2_white_lnSt/*.png", 	def = "White_#Partition_#f3f3f3"},
	{name = "Temeplate_5key : Enlarge : White-Long-End", 		path = "parts/notes/5keyL/1-3_white_lnEn/*.png", 	def = "Off"},
	{name = "Temeplate_5key : Enlarge : White-Long-Body", 		path = "parts/notes/5keyL/1-4_white_lnBo/*.png", 	def = "White_#Partition_#f3f3f3"},
	{name = "Temeplate_5key : Enlarge : White-Long-Active", 	path = "parts/notes/5keyL/1-5_white_lnAc/*.png", 	def = "White_#Partition_#f3f3f3"},
	{name = "Temeplate_5key : Enlarge : White-Mine", 			path = "parts/notes/5keyL/1-6_white_mine/*.png", 	def = "Off"},

	{name = "Temeplate_5key : Enlarge : Blue-Notes", 			path = "parts/notes/5keyL/2-1_blue/*.png", 			def = "LightBlue_#Bordered_#35eaff"},
	{name = "Temeplate_5key : Enlarge : Blue-Long-Start", 		path = "parts/notes/5keyL/2-2_blue_lnSt/*.png", 	def = "LightBlue_#Partition_#35eaff"},
	{name = "Temeplate_5key : Enlarge : Blue-Long-End", 		path = "parts/notes/5keyL/2-3_blue_lnEn/*.png", 	def = "Off"},
	{name = "Temeplate_5key : Enlarge : Blue-Long-Body", 		path = "parts/notes/5keyL/2-4_blue_lnBo/*.png", 	def = "LightBlue_#Partition_#35eaff"},
	{name = "Temeplate_5key : Enlarge : Blue-Long-Active", 		path = "parts/notes/5keyL/2-5_blue_lnAc/*.png", 	def = "LightBlue_#Partition_#35eaff"},
	{name = "Temeplate_5key : Enlarge : Blue-Mine", 			path = "parts/notes/5keyL/2-6_blue_mine/*.png", 	def = "Off"},

	{name = "Temeplate_5key : Enlarge : Yellow-Notes", 			path = "parts/notes/5keyL/3-1_yellow/*.png", 		def = "Yellow_#Bordered_#ffde35"},
	{name = "Temeplate_5key : Enlarge : Yellow-Long-Start", 	path = "parts/notes/5keyL/3-2_yellow_lnSt/*.png", 	def = "Yellow_#Partition_#ffde35"},
	{name = "Temeplate_5key : Enlarge : Yellow-Long-End", 		path = "parts/notes/5keyL/3-3_yellow_lnEn/*.png", 	def = "Off"},
	{name = "Temeplate_5key : Enlarge : Yellow-Long-Body", 		path = "parts/notes/5keyL/3-4_yellow_lnBo/*.png", 	def = "Yellow_#Partition_#ffde35"},
	{name = "Temeplate_5key : Enlarge : Yellow-Long-Active", 	path = "parts/notes/5keyL/3-5_yellow_lnAc/*.png", 	def = "Yellow_#Partition_#ffde35"},
	{name = "Temeplate_5key : Enlarge : Yellow-Mine", 			path = "parts/notes/5keyL/3-6_yellow_mine/*.png", 	def = "Off"},

	{name = "Temeplate_5key : Enlarge : Scratch-Notes", 		path = "parts/notes/5keyL/4-1_scratch/*.png", 	 	def = "Green_#Bordered_#5def35"},
	{name = "Temeplate_5key : Enlarge : Scratch-Long-Start", 	path = "parts/notes/5keyL/4-2_scratch_lnSt/*.png", 	def = "Green_#Partition_#5def35"},
	{name = "Temeplate_5key : Enlarge : Scratch-Long-End", 		path = "parts/notes/5keyL/4-3_scratch_lnEn/*.png", 	def = "Off"},
	{name = "Temeplate_5key : Enlarge : Scratch-Long-Body", 	path = "parts/notes/5keyL/4-4_scratch_lnBo/*.png", 	def = "Green_#Partition_#5def35"},
	{name = "Temeplate_5key : Enlarge : Scratch-Long-Active", 	path = "parts/notes/5keyL/4-5_scratch_lnAc/*.png", 	def = "Green_#Partition_#5def35"},
	{name = "Temeplate_5key : Enlarge : Scratch-Mine", 			path = "parts/notes/5keyL/4-6_scratch_mine/*.png", 	def = "Off"},

	-- Notes : 9key
	{name = "Temeplate_9key : White-Notes", 					path = "parts/notes/9key/1-1_white/*.png", 			def = "White_#Bordered#f3f3f3"},
	{name = "Temeplate_9key : White-Long-Start", 				path = "parts/notes/9key/1-2_white_lnSt/*.png", 	def = "White_#Partition_#f3f3f3"},
	{name = "Temeplate_9key : White-Long-End", 					path = "parts/notes/9key/1-3_white_lnEn/*.png", 	def = "Off"},
	{name = "Temeplate_9key : White-Long-Body", 				path = "parts/notes/9key/1-4_white_lnBo/*.png", 	def = "White_#Partition_#f3f3f3"},
	{name = "Temeplate_9key : White-Long-Active", 				path = "parts/notes/9key/1-5_white_lnAc/*.png", 	def = "White_#Partition_#f3f3f3"},
	{name = "Temeplate_9key : White-Mine", 						path = "parts/notes/9key/1-6_white_mine/*.png", 	def = "Off"},

	{name = "Temeplate_9key : Blue-Notes", 						path = "parts/notes/9key/2-1_blue/*.png", 			def = "LightBlue_#Bordered_#35eaff"},
	{name = "Temeplate_9key : Blue-Long-Start", 				path = "parts/notes/9key/2-2_blue_lnSt/*.png", 		def = "LightBlue_#Partition_#35eaff"},
	{name = "Temeplate_9key : Blue-Long-End", 					path = "parts/notes/9key/2-3_blue_lnEn/*.png", 		def = "Off"},
	{name = "Temeplate_9key : Blue-Long-Body", 					path = "parts/notes/9key/2-4_blue_lnBo/*.png", 		def = "LightBlue_#Partition_#35eaff"},
	{name = "Temeplate_9key : Blue-Long-Active", 				path = "parts/notes/9key/2-5_blue_lnAc/*.png", 		def = "LightBlue_#Partition_#35eaff"},
	{name = "Temeplate_9key : Blue-Mine", 						path = "parts/notes/9key/2-6_blue_mine/*.png", 		def = "Off"},

	{name = "Temeplate_9key : Yellow-Notes", 					path = "parts/notes/9key/3-1_yellow/*.png", 		def = "Yellow_#Bordered_#ffde35"},
	{name = "Temeplate_9key : Yellow-Long-Start", 				path = "parts/notes/9key/3-2_yellow_lnSt/*.png", 	def = "Yellow_#Partition_#ffde35"},
	{name = "Temeplate_9key : Yellow-Long-End", 				path = "parts/notes/9key/3-3_yellow_lnEn/*.png", 	def = "Off"},
	{name = "Temeplate_9key : Yellow-Long-Body", 				path = "parts/notes/9key/3-4_yellow_lnBo/*.png", 	def = "Yellow_#Partition_#ffde35"},
	{name = "Temeplate_9key : Yellow-Long-Active", 				path = "parts/notes/9key/3-5_yellow_lnAc/*.png", 	def = "Yellow_#Partition_#ffde35"},
	{name = "Temeplate_9key : Yellow-Mine", 					path = "parts/notes/9key/3-6_yellow_mine/*.png", 	def = "Off"},

	{name = "Temeplate_9key : Scratch-Notes", 					path = "parts/notes/9key/4-1_scratch/*.png", 	 	def = "Green_#Bordered_#5def35"},
	{name = "Temeplate_9key : Scratch-Long-Start", 				path = "parts/notes/9key/4-2_scratch_lnSt/*.png", 	def = "Green_#Partition_#5def35"},
	{name = "Temeplate_9key : Scratch-Long-End", 				path = "parts/notes/9key/4-3_scratch_lnEn/*.png", 	def = "Off"},
	{name = "Temeplate_9key : Scratch-Long-Body", 				path = "parts/notes/9key/4-4_scratch_lnBo/*.png", 	def = "Green_#Partition_#5def35"},
	{name = "Temeplate_9key : Scratch-Long-Active", 			path = "parts/notes/9key/4-5_scratch_lnAc/*.png", 	def = "Green_#Partition_#5def35"},
	{name = "Temeplate_9key : Scratch-Mine", 					path = "parts/notes/9key/4-6_scratch_mine/*.png", 	def = "Off"},

	-- Notes : Custom
	{name = "Custom : White-Notes", 							path = "parts/notes/custom/1-1_white/*.png", 		def = "White_#f3f3f3"},
	{name = "Custom : White-Long-Start", 						path = "parts/notes/custom/1-2_white_lnSt/*.png", 	def = "White_#f3f3f3"},
	{name = "Custom : White-Long-End", 							path = "parts/notes/custom/1-3_white_lnEn/*.png", 	def = "Off"},
	{name = "Custom : White-Long-Body", 						path = "parts/notes/custom/1-4_white_lnBo/*.png", 	def = "White_#f3f3f3"},
	{name = "Custom : White-Long-Active", 						path = "parts/notes/custom/1-5_white_lnAc/*.png", 	def = "White_#f3f3f3"},
	{name = "Custom : White-Mine", 								path = "parts/notes/custom/1-6_white_mine/*.png", 	def = "Off"},

	{name = "Custom : Blue-Notes", 								path = "parts/notes/custom/2-1_blue/*.png", 		def = "LightBlue_#35eaff"},
	{name = "Custom : Blue-Long-Start", 						path = "parts/notes/custom/2-2_blue_lnSt/*.png", 	def = "LightBlue_#35eaff"},
	{name = "Custom : Blue-Long-End", 							path = "parts/notes/custom/2-3_blue_lnEn/*.png", 	def = "Off"},
	{name = "Custom : Blue-Long-Body", 							path = "parts/notes/custom/2-4_blue_lnBo/*.png", 	def = "LightBlue_#35eaff"},
	{name = "Custom : Blue-Long-Active", 						path = "parts/notes/custom/2-5_blue_lnAc/*.png", 	def = "LightBlue_#35eaff"},
	{name = "Custom : Blue-Mine", 								path = "parts/notes/custom/2-6_blue_mine/*.png", 	def = "Off"},

	{name = "Custom : Yellow-Notes", 							path = "parts/notes/custom/3-1_yellow/*.png", 		def = "Yellow_#ffde35"},
	{name = "Custom : Yellow-Long-Start", 						path = "parts/notes/custom/3-2_yellow_lnSt/*.png", 	def = "Yellow_#ffde35"},
	{name = "Custom : Yellow-Long-End", 						path = "parts/notes/custom/3-3_yellow_lnEn/*.png", 	def = "Off"},
	{name = "Custom : Yellow-Long-Body", 						path = "parts/notes/custom/3-4_yellow_lnBo/*.png", 	def = "Yellow_#ffde35"},
	{name = "Custom : Yellow-Long-Active", 						path = "parts/notes/custom/3-5_yellow_lnAc/*.png", 	def = "Yellow_#ffde35"},
	{name = "Custom : Yellow-Mine", 							path = "parts/notes/custom/3-6_yellow_mine/*.png", 	def = "Off"},

	{name = "Custom : Scratch-Notes", 							path = "parts/notes/custom/4-1_scratch/*.png", 	 	def = "Green_#5def35"},
	{name = "Custom : Scratch-Long-Start", 						path = "parts/notes/custom/4-2_scratch_lnSt/*.png", def = "Green_#5def35"},
	{name = "Custom : Scratch-Long-End", 						path = "parts/notes/custom/4-3_scratch_lnEn/*.png", def = "Off"},
	{name = "Custom : Scratch-Long-Body", 						path = "parts/notes/custom/4-4_scratch_lnBo/*.png", def = "Green_#5def35"},
	{name = "Custom : Scratch-Long-Active", 					path = "parts/notes/custom/4-5_scratch_lnAc/*.png", def = "Green_#5def35"},
	{name = "Custom : Scratch-Mine", 							path = "parts/notes/custom/4-6_scratch_mine/*.png", def = "Off"},

	-- Keybeam : 7key
	{name = "Temeplate_7key : White-Keybeam", 					path = "parts/keybeam/7key/1_white/*.png", 			def = "Default_White_#Borderd"},
	{name = "Temeplate_7key : Blue-Keybeam", 					path = "parts/keybeam/7key/2_blue/*.png", 			def = "Default_Blue_#Borderd"},
	{name = "Temeplate_7key : Yellow-Keybeam", 					path = "parts/keybeam/7key/3_yellow/*.png", 		def = "Default_Yellow_#Borderd"},
	{name = "Temeplate_7key : Scratch-Keybeam", 				path = "parts/keybeam/7key/4_scratch/*.png", 		def = "Default_Scratch_#Borderd"},

	-- Keybeam : 5key : Normal
	{name = "Temeplate_5key : Normal : White-Keybeam", 			path = "parts/keybeam/7key/1_white/*.png", 			def = "Default_White_#Borderd"},
	{name = "Temeplate_5key : Normal : Blue-Keybeam", 			path = "parts/keybeam/7key/2_blue/*.png", 			def = "Default_Blue_#Borderd"},
	{name = "Temeplate_5key : Normal : Yellow-Keybeam", 		path = "parts/keybeam/7key/3_yellow/*.png", 		def = "Default_Yellow_#Borderd"},
	{name = "Temeplate_5key : Normal : Scratch-Keybeam", 		path = "parts/keybeam/7key/4_scratch/*.png", 		def = "Default_Scratch_#Borderd"},

	-- Keybeam : 5key : Enlarge
	{name = "Temeplate_5key : Enlarge : White-Keybeam", 		path = "parts/keybeam/5keyL/1_white/*.png", 		def = "Default_White_#Borderd"},
	{name = "Temeplate_5key : Enlarge : Blue-Keybeam", 			path = "parts/keybeam/5keyL/2_blue/*.png", 			def = "Default_Blue_#Borderd"},
	{name = "Temeplate_5key : Enlarge : Yellow-Keybeam", 		path = "parts/keybeam/5keyL/3_yellow/*.png", 		def = "Default_Yellow_#Borderd"},
	{name = "Temeplate_5key : Enlarge : Scratch-Keybeam", 		path = "parts/keybeam/5keyL/4_scratch/*.png", 		def = "Default_Scratch_#Borderd"},

	-- Keybeam : 9key
	{name = "Temeplate_9key : White-Keybeam", 					path = "parts/keybeam/9key/1_white/*.png", 			def = "Default_White_#Borderd"},
	{name = "Temeplate_9key : Blue-Keybeam", 					path = "parts/keybeam/9key/2_blue/*.png", 			def = "Default_Blue_#Borderd"},
	{name = "Temeplate_9key : Yellow-Keybeam", 					path = "parts/keybeam/9key/3_yellow/*.png", 		def = "Default_Yellow_#Borderd"},
	{name = "Temeplate_9key : Scratch-Keybeam", 				path = "parts/keybeam/9key/4_scratch/*.png", 		def = "Default_Scratch_#Borderd"},

	-- Keybeam : Custom
	{name = "Custom : White-Keybeam", 							path = "parts/keybeam/custom/1_white/*.png", 		def = "Blue"},
	{name = "Custom : Blue-Keybeam", 							path = "parts/keybeam/custom/2_blue/*.png", 		def = "Blue"},
	{name = "Custom : Yellow-Keybeam", 							path = "parts/keybeam/custom/3_yellow/*.png", 		def = "Blue"},
	{name = "Custom : Scratch-Keybeam", 						path = "parts/keybeam/custom/4_scratch/*.png", 		def = "Blue"},

	{name = "Type A_B : Judge & Combo Number", 					path = "parts/judge/type_ab/*.png", 				def = "Default_#ColorScheme_TypeA"},

	{name = "Type B_C_D : Combo Number & Score Rate", 			path = "parts/judgenum/*.png", 						def = "Default_Rounded"},

	{name = "Type C_D : Judge : Perfect", 						path = "parts/judge/type_cd/1_pg/*.png", 			def = "x50%_PG_Rounded"},
	{name = "Type C_D : Judge : Great", 						path = "parts/judge/type_cd/2_gr/*.png", 			def = "x50%_GR_Rounded"},
	{name = "Type C_D : Judge : Good",	 						path = "parts/judge/type_cd/3_gd/*.png", 			def = "x50%_GD_Rounded"},
	{name = "Type C_D : Judge : Bad", 							path = "parts/judge/type_cd/4_bd/*.png", 			def = "x50%_BD_Rounded"},
	{name = "Type C_D : Judge : Poor", 							path = "parts/judge/type_cd/5_pr/*.png", 			def = "x50%_PR_Rounded"},
	{name = "Type C_D : Judge : Miss",	 						path = "parts/judge/type_cd/6_ms/*.png",			def = "x50%_MS_Rounded"},

	{name = "Gauge: Hazard", 									path = "parts/colors/1_hazard/*.png", 				def = "Blue1_#389eff"},
	{name = "Gauge: Ex-Hard", 									path = "parts/colors/2_exhard/*.png", 				def = "Yellow1_#ffff40"},
	{name = "Gauge: Hard", 										path = "parts/colors/3_hard/*.png", 				def = "White1_#ffffff"},
	{name = "Gauge: Normal", 									path = "parts/colors/4_normal/*.png", 				def = "LightBlue1_#74f7f7"},
	{name = "Gauge: Easy", 										path = "parts/colors/5_easy/*.png", 				def = "Green1_#80ff40"},
	{name = "Gauge: Assist-Easy", 								path = "parts/colors/6_aseasy/*.png", 				def = "Pink1_#ffb6c1"},

	{name = "Judge Line", 										path = "parts/colors/7_judgeline/*.png", 			def = "White4_#a3d1ff"},
	{name = "Bomb", 											path = "parts/!_bomb/*.png", 						def = "!_x150%_White_clear_ring_SCUROed"},
	{name = "Lane Cover", 										path = "parts/lanecover/*.png", 					def = "WaterColor_LightBlue"},
	{name = "Fast/Slow: Character", 							path = "parts/fast_slow/character/*.png", 			def = "Fast_Slow"},
	{name = "Fast/Slow: Number", 								path = "parts/fast_slow/number/*.png", 				def = "Default"},
	{name = "Mybest Number", 									path = "parts/scorenum/mybest/*.png", 				def = "Default"},
	{name = "Target Number", 									path = "parts/scorenum/target/*.png", 				def = "Default"}
}

local original_property = {
	{name = "Scratch Side", 							item = {
		{name = "Left", 								op = SC_LEFT},
		{name = "Right", 								op = SC_RIGHT}
	}},
	{name = "Lane Align", 								item = {
		{name = "Center", 								op = LANE_ALIGN_CENTER},
		{name = "Right / Left", 						op = LANE_ALIGN_RL}
	}},
	{name = "Lane Frame", 								item = {
		{name = "Off", 									op = LANE_FRAME_OFF},
		{name = "On", 									op = LANE_FRAME_ON}
	}},
	{name = "Lane Center", 								item = {
		{name = "Notes + Scratch", 						op = LANE_CENTER_ALL},
		{name = "Notes", 								op = LANE_CENTER_NOTES}
	}},
	{name = "Notes Width", 								item = {
		{name = "Template", 							op = NOTES_WIDTH_TEMPLATE},
		{name = "Custom", 								op = NOTES_WIDTH_CUSTOM}
	}},
	{name = "Notes 5Key Align", 						item = {
		{name = "Right / Left", 						op = NOTES_5KEY_ALIGN_RL},
		{name = "Center", 								op = NOTES_5KEY_ALIGN_CENTER},
		{name = "Enlarge", 								op = NOTES_5KEY_ALIGN_ENLARGE}
	}},
	{name = "Notes Height", 							item = {
		{name = "50 pixel", 							op = NOTES_HEIGHT_50_PIX},
		{name = "45 pixel", 							op = NOTES_HEIGHT_45_PIX},
		{name = "40 pixel", 							op = NOTES_HEIGHT_40_PIX},
		{name = "35 pixel", 							op = NOTES_HEIGHT_35_PIX},
		{name = "30 pixel", 							op = NOTES_HEIGHT_30_PIX},
		{name = "Custom", 								op = NOTES_HEIGHT_CUSTOM}
	}},
	{name = "Judge Display", 							item = {
		{name = "Type A", 								op = JUDGE_TYPE_A},
		{name = "Type B", 								op = JUDGE_TYPE_B},
		{name = "Type C", 								op = JUDGE_TYPE_C},
		{name = "Type D", 								op = JUDGE_TYPE_D}
	}},
	{name = "Input Device", 							item = {
		{name = "Keyboard", 							op = INPUT_DEVICE_KEYBORAD},
		{name = "Controller", 							op = INPUT_DEVICE_CONTROLLER}
	}},
	{name = "Keybeam Display", 							item = {
		{name = "Fast", 								op = KEYBEAM_DISPLAY_FAST},
		{name = "Slow", 								op = KEYBEAM_DISPLAY_SLOW}
	}},
	{name = "Keybeam Height Multiplier", 				item = {
		{name = "100%", 								op = KEYBEAM_HEIGHT_MULUTIPLIER_x100},
		{name = "75%", 									op = KEYBEAM_HEIGHT_MULUTIPLIER_x75},
		{name = "50%", 									op = KEYBEAM_HEIGHT_MULUTIPLIER_x50},
		{name = "25%", 									op = KEYBEAM_HEIGHT_MULUTIPLIER_x25},
		{name = "Custom", 								op = KEYBEAM_HEIGHT_MULUTIPLIER_CUSTOM}
	}},
	{name = "Keybeam Alpha Multiplier", 				item = {
		{name = "100%", 								op = KEYBEAM_ALPHA_MULUTIPLIER_x100},
		{name = "75%", 									op = KEYBEAM_ALPHA_MULUTIPLIER_x75},
		{name = "50%", 									op = KEYBEAM_ALPHA_MULUTIPLIER_x50},
		{name = "25%", 									op = KEYBEAM_ALPHA_MULUTIPLIER_x25},
		{name = "Custom", 								op = KEYBEAM_ALPHA_MULUTIPLIER_CUSTOM}
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
	{name = "Hiterror Visualizer", 						item = {
		{name = "Off", 									op = HITERRORVISUALIZER_OFF},
		{name = "On", 									op = HITERRORVISUALIZER_ON}
	}},
	{name = "Score Rate", 								item = {
		{name = "Off", 									op = SCORE_RATE_OFF},
		{name = "On", 									op = SCORE_RATE_ON}
	}},
	{name = "Fast/Slow Type", 							item = {
		{name = "Sign : Center", 						op = FAST_SLOW_CENTER},
		{name = "Sign : Right / Left",	 				op = FAST_SLOW_RL},
		{name = "+-MS : Center", 						op = FAST_SLOW_MS_CENTER},
		{name = "+-MS : Right / Left",					op = FAST_SLOW_MS_RL}
	}},
	{name = "Fast/Slow Counter",						item = {
		{name = "Off", 									op = FAST_SLOW_COUNT_OFF},
		{name = "On", 									op = FAST_SLOW_COUNT_ON}
	}},
	{name = "Fast/Slow Threshold",						item = {
		{name = "Default", 								op = FAST_SLOW_THRESHOLD_DEFAULT},
		{name = "Custom", 								op = FAST_SLOW_THRESHOLD_CUSTOM}
	}},
	{name = "Gauge Display",							item = {
		{name = "Default", 								op = GAUGE_DISPLAY_DEFAULT},
		{name = "Static", 								op = GAUGE_DISPLAY_STATIC}
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
		{name = "Active", 								op = MASCOT_ACTIVE}
	}}
}

-- ========================================================================================================================================================	

-- # startup process + header

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
		local h = 				{}
		local c = 				{}

		if type == 0 then	-- 7key

			-- 1 : property -> Option
			do
				exclude_names = {"Notes 5Key Align"}
				h.property, c.property = createTable(original_property, exclude_names, "Option")
			end

			-- 2 : filepath -> Image
			do
				exclude_names = {
					-- Notes : 5key : Normal
					"Temeplate_5key : Normal : White-Notes",
					"Temeplate_5key : Normal : White-Long-Start",
					"Temeplate_5key : Normal : White-Long-End",
					"Temeplate_5key : Normal : White-Long-Body",
					"Temeplate_5key : Normal : White-Long-Active",
					"Temeplate_5key : Normal : White-Mine",

					"Temeplate_5key : Normal : Blue-Notes",
					"Temeplate_5key : Normal : Blue-Long-Start",
					"Temeplate_5key : Normal : Blue-Long-End",
					"Temeplate_5key : Normal : Blue-Long-Body",
					"Temeplate_5key : Normal : Blue-Long-Active",
					"Temeplate_5key : Normal : Blue-Mine",

					"Temeplate_5key : Normal : Yellow-Notes",
					"Temeplate_5key : Normal : Yellow-Long-Start",
					"Temeplate_5key : Normal : Yellow-Long-End",
					"Temeplate_5key : Normal : Yellow-Long-Body",
					"Temeplate_5key : Normal : Yellow-Long-Active",
					"Temeplate_5key : Normal : Yellow-Mine",

					"Temeplate_5key : Normal : Scratch-Notes",
					"Temeplate_5key : Normal : Scratch-Long-Start",
					"Temeplate_5key : Normal : Scratch-Long-End",
					"Temeplate_5key : Normal : Scratch-Long-Body",
					"Temeplate_5key : Normal : Scratch-Long-Active",
					"Temeplate_5key : Normal : Scratch-Mine",

					-- Notes : 5key : Enlarge
					"Temeplate_5key : Enlarge : White-Notes",
					"Temeplate_5key : Enlarge : White-Long-Start",
					"Temeplate_5key : Enlarge : White-Long-End",
					"Temeplate_5key : Enlarge : White-Long-Body",
					"Temeplate_5key : Enlarge : White-Long-Active",
					"Temeplate_5key : Enlarge : White-Mine",

					"Temeplate_5key : Enlarge : Blue-Notes",
					"Temeplate_5key : Enlarge : Blue-Long-Start",
					"Temeplate_5key : Enlarge : Blue-Long-End",
					"Temeplate_5key : Enlarge : Blue-Long-Body",
					"Temeplate_5key : Enlarge : Blue-Long-Active",
					"Temeplate_5key : Enlarge : Blue-Mine",

					"Temeplate_5key : Enlarge : Yellow-Notes",
					"Temeplate_5key : Enlarge : Yellow-Long-Start",
					"Temeplate_5key : Enlarge : Yellow-Long-End",
					"Temeplate_5key : Enlarge : Yellow-Long-Body",
					"Temeplate_5key : Enlarge : Yellow-Long-Active",
					"Temeplate_5key : Enlarge : Yellow-Mine",

					"Temeplate_5key : Enlarge : Scratch-Notes",
					"Temeplate_5key : Enlarge : Scratch-Long-Start",
					"Temeplate_5key : Enlarge : Scratch-Long-End",
					"Temeplate_5key : Enlarge : Scratch-Long-Body",
					"Temeplate_5key : Enlarge : Scratch-Long-Active",
					"Temeplate_5key : Enlarge : Scratch-Mine",

					-- Notes : 9key
					"Temeplate_9key : White-Notes",
					"Temeplate_9key : White-Long-Start",
					"Temeplate_9key : White-Long-End",
					"Temeplate_9key : White-Long-Body",
					"Temeplate_9key : White-Long-Active",
					"Temeplate_9key : White-Mine",

					"Temeplate_9key : Blue-Notes",
					"Temeplate_9key : Blue-Long-Start",
					"Temeplate_9key : Blue-Long-End",
					"Temeplate_9key : Blue-Long-Body",
					"Temeplate_9key : Blue-Long-Active",
					"Temeplate_9key : Blue-Mine",

					"Temeplate_9key : Yellow-Notes",
					"Temeplate_9key : Yellow-Long-Start",
					"Temeplate_9key : Yellow-Long-End",
					"Temeplate_9key : Yellow-Long-Body",
					"Temeplate_9key : Yellow-Long-Active",
					"Temeplate_9key : Yellow-Mine",

					"Temeplate_9key : Scratch-Notes",
					"Temeplate_9key : Scratch-Long-Start",
					"Temeplate_9key : Scratch-Long-End",
					"Temeplate_9key : Scratch-Long-Body",
					"Temeplate_9key : Scratch-Long-Active",
					"Temeplate_9key : Scratch-Mine",

					-- Keybeam : 5key : Normal
					"Temeplate_5key : Normal : White-Keybeam",
					"Temeplate_5key : Normal : Blue-Keybeam",
					"Temeplate_5key : Normal : Yellow-Keybeam",
					"Temeplate_5key : Normal : Scratch-Keybeam",

					-- Keybeam : 5key : Enlarge
					"Temeplate_5key : Enlarge : White-Keybeam",
					"Temeplate_5key : Enlarge : Blue-Keybeam",
					"Temeplate_5key : Enlarge : Yellow-Keybeam",
					"Temeplate_5key : Enlarge : Scratch-Keybeam",

					-- Keybeam : 9key
					"Temeplate_9key : White-Keybeam",
					"Temeplate_9key : Blue-Keybeam",
					"Temeplate_9key : Yellow-Keybeam",
					"Temeplate_9key : Scratch-Keybeam"
				}
				h.filepath, c.filepath = createTable(original_filepath, exclude_names, "Image")
			end

			-- 3 : offset -> Offset
			h.offset, c.offset = createTable(original_offset, exclude_names, "Offset")

		elseif type == 1 then	-- 5key

			-- 1 : property -> Option
			h.property, c.property = createTable(original_property, exclude_names, "Option")

			-- 2 : filepath -> Image
			do
				exclude_names = {
					-- Notes : 7key
					"Temeplate_7key : White-Notes",
					"Temeplate_7key : White-Long-Start",
					"Temeplate_7key : White-Long-End",
					"Temeplate_7key : White-Long-Body",
					"Temeplate_7key : White-Long-Active",
					"Temeplate_7key : White-Mine",

					"Temeplate_7key : Blue-Notes",
					"Temeplate_7key : Blue-Long-Start",
					"Temeplate_7key : Blue-Long-End",
					"Temeplate_7key : Blue-Long-Body",
					"Temeplate_7key : Blue-Long-Active",
					"Temeplate_7key : Blue-Mine",

					"Temeplate_7key : Yellow-Notes",
					"Temeplate_7key : Yellow-Long-Start",
					"Temeplate_7key : Yellow-Long-End",
					"Temeplate_7key : Yellow-Long-Body",
					"Temeplate_7key : Yellow-Long-Active",
					"Temeplate_7key : Yellow-Mine",

					"Temeplate_7key : Scratch-Notes",
					"Temeplate_7key : Scratch-Long-Start",
					"Temeplate_7key : Scratch-Long-End",
					"Temeplate_7key : Scratch-Long-Body",
					"Temeplate_7key : Scratch-Long-Active",
					"Temeplate_7key : Scratch-Mine",

					-- Notes : 9key
					"Temeplate_9key : White-Notes",
					"Temeplate_9key : White-Long-Start",
					"Temeplate_9key : White-Long-End",
					"Temeplate_9key : White-Long-Body",
					"Temeplate_9key : White-Long-Active",
					"Temeplate_9key : White-Mine",

					"Temeplate_9key : Blue-Notes",
					"Temeplate_9key : Blue-Long-Start",
					"Temeplate_9key : Blue-Long-End",
					"Temeplate_9key : Blue-Long-Body",
					"Temeplate_9key : Blue-Long-Active",
					"Temeplate_9key : Blue-Mine",

					"Temeplate_9key : Yellow-Notes",
					"Temeplate_9key : Yellow-Long-Start",
					"Temeplate_9key : Yellow-Long-End",
					"Temeplate_9key : Yellow-Long-Body",
					"Temeplate_9key : Yellow-Long-Active",
					"Temeplate_9key : Yellow-Mine",

					"Temeplate_9key : Scratch-Notes",
					"Temeplate_9key : Scratch-Long-Start",
					"Temeplate_9key : Scratch-Long-End",
					"Temeplate_9key : Scratch-Long-Body",
					"Temeplate_9key : Scratch-Long-Active",
					"Temeplate_9key : Scratch-Mine",

					-- Keybeam : 7key
					"Temeplate_7key : White-Keybeam",
					"Temeplate_7key : Blue-Keybeam",
					"Temeplate_7key : Yellow-Keybeam",
					"Temeplate_7key : Scratch-Keybeam",

					-- Keybeam : 9key
					"Temeplate_9key : White-Keybeam",
					"Temeplate_9key : Blue-Keybeam",
					"Temeplate_9key : Yellow-Keybeam",
					"Temeplate_9key : Scratch-Keybeam"
				}
				h.filepath, c.filepath = createTable(original_filepath, exclude_names, "Image")
			end

			-- 3 : offset -> Offset
			h.offset, c.offset = createTable(original_offset, exclude_names, "Offset")

		elseif type == 4 then	-- 9key

			-- 1 : property -> Option
			do
				exclude_names = {"Lane Center", "Notes 5Key Align"}
				h.property, c.property = createTable(original_property, exclude_names, "Option")
			end

			-- 2 : filepath -> Image
			do
				exclude_names = {
					-- Notes : 7key
					"Temeplate_7key : White-Notes",
					"Temeplate_7key : White-Long-Start",
					"Temeplate_7key : White-Long-End",
					"Temeplate_7key : White-Long-Body",
					"Temeplate_7key : White-Long-Active",
					"Temeplate_7key : White-Mine",

					"Temeplate_7key : Blue-Notes",
					"Temeplate_7key : Blue-Long-Start",
					"Temeplate_7key : Blue-Long-End",
					"Temeplate_7key : Blue-Long-Body",
					"Temeplate_7key : Blue-Long-Active",
					"Temeplate_7key : Blue-Mine",

					"Temeplate_7key : Yellow-Notes",
					"Temeplate_7key : Yellow-Long-Start",
					"Temeplate_7key : Yellow-Long-End",
					"Temeplate_7key : Yellow-Long-Body",
					"Temeplate_7key : Yellow-Long-Active",
					"Temeplate_7key : Yellow-Mine",

					"Temeplate_7key : Scratch-Notes",
					"Temeplate_7key : Scratch-Long-Start",
					"Temeplate_7key : Scratch-Long-End",
					"Temeplate_7key : Scratch-Long-Body",
					"Temeplate_7key : Scratch-Long-Active",
					"Temeplate_7key : Scratch-Mine",

					-- Notes : 5key : Normal
					"Temeplate_5key : Normal : White-Notes",
					"Temeplate_5key : Normal : White-Long-Start",
					"Temeplate_5key : Normal : White-Long-End",
					"Temeplate_5key : Normal : White-Long-Body",
					"Temeplate_5key : Normal : White-Long-Active",
					"Temeplate_5key : Normal : White-Mine",

					"Temeplate_5key : Normal : Blue-Notes",
					"Temeplate_5key : Normal : Blue-Long-Start",
					"Temeplate_5key : Normal : Blue-Long-End",
					"Temeplate_5key : Normal : Blue-Long-Body",
					"Temeplate_5key : Normal : Blue-Long-Active",
					"Temeplate_5key : Normal : Blue-Mine",

					"Temeplate_5key : Normal : Yellow-Notes",
					"Temeplate_5key : Normal : Yellow-Long-Start",
					"Temeplate_5key : Normal : Yellow-Long-End",
					"Temeplate_5key : Normal : Yellow-Long-Body",
					"Temeplate_5key : Normal : Yellow-Long-Active",
					"Temeplate_5key : Normal : Yellow-Mine",

					"Temeplate_5key : Normal : Scratch-Notes",
					"Temeplate_5key : Normal : Scratch-Long-Start",
					"Temeplate_5key : Normal : Scratch-Long-End",
					"Temeplate_5key : Normal : Scratch-Long-Body",
					"Temeplate_5key : Normal : Scratch-Long-Active",
					"Temeplate_5key : Normal : Scratch-Mine",

					-- Notes : 5key : Enlarge
					"Temeplate_5key : Enlarge : White-Notes",
					"Temeplate_5key : Enlarge : White-Long-Start",
					"Temeplate_5key : Enlarge : White-Long-End",
					"Temeplate_5key : Enlarge : White-Long-Body",
					"Temeplate_5key : Enlarge : White-Long-Active",
					"Temeplate_5key : Enlarge : White-Mine",

					"Temeplate_5key : Enlarge : Blue-Notes",
					"Temeplate_5key : Enlarge : Blue-Long-Start",
					"Temeplate_5key : Enlarge : Blue-Long-End",
					"Temeplate_5key : Enlarge : Blue-Long-Body",
					"Temeplate_5key : Enlarge : Blue-Long-Active",
					"Temeplate_5key : Enlarge : Blue-Mine",

					"Temeplate_5key : Enlarge : Yellow-Notes",
					"Temeplate_5key : Enlarge : Yellow-Long-Start",
					"Temeplate_5key : Enlarge : Yellow-Long-End",
					"Temeplate_5key : Enlarge : Yellow-Long-Body",
					"Temeplate_5key : Enlarge : Yellow-Long-Active",
					"Temeplate_5key : Enlarge : Yellow-Mine",

					"Temeplate_5key : Enlarge : Scratch-Notes",
					"Temeplate_5key : Enlarge : Scratch-Long-Start",
					"Temeplate_5key : Enlarge : Scratch-Long-End",
					"Temeplate_5key : Enlarge : Scratch-Long-Body",
					"Temeplate_5key : Enlarge : Scratch-Long-Active",
					"Temeplate_5key : Enlarge : Scratch-Mine",

					-- Keybeam : 7key
					"Temeplate_7key : White-Keybeam",
					"Temeplate_7key : Blue-Keybeam",
					"Temeplate_7key : Yellow-Keybeam",
					"Temeplate_7key : Scratch-Keybeam",

					-- Keybeam : 5key : Normal
					"Temeplate_5key : Normal : White-Keybeam",
					"Temeplate_5key : Normal : Blue-Keybeam",
					"Temeplate_5key : Normal : Yellow-Keybeam",
					"Temeplate_5key : Normal : Scratch-Keybeam",

					-- Keybeam : 5key : Enlarge
					"Temeplate_5key : Enlarge : White-Keybeam",
					"Temeplate_5key : Enlarge : Blue-Keybeam",
					"Temeplate_5key : Enlarge : Yellow-Keybeam",
					"Temeplate_5key : Enlarge : Scratch-Keybeam"
				}
				h.filepath, c.filepath = createTable(original_filepath, exclude_names, "Image")
			end

			-- 3 : offset -> Offset
			h.offset, c.offset = createTable(original_offset, exclude_names, "Offset")

		end
		return h, c
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
	name = 		"Rm-skin ver 0.2.7.b",
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

-- ========================================================================================================================================================	

-- isXXFunctions

local function is7key() return header.type == 0 end
local function is5key() return header.type == 1 end
local function is9key() return header.type == 4 end

local function isScratchLeft() 			return skin_config.option["Scratch Side"] == 				SC_LEFT end
local function isScratchRight() 		return skin_config.option["Scratch Side"] == 				SC_RIGHT end

local function isLaneAlignCenter() 		return skin_config.option["Lane Align"] == 					LANE_ALIGN_CENTER end

local function isLaneFrameOn() 			return skin_config.option["Lane Frame"] == 					LANE_FRAME_ON end

local function isLaneCenterPosKey() 	return skin_config.option["Lane Center"] == 				LANE_CENTER_NOTES end

local function isNotesWidthTemplate() 	return skin_config.option["Notes Width"] == 				NOTES_WIDTH_TEMPLATE end
local function isNotesWidthCustom() 	return skin_config.option["Notes Width"] == 				NOTES_WIDTH_CUSTOM end

local function is5keyAlignRL() 			return skin_config.option["Notes 5Key Align"] ==			NOTES_5KEY_ALIGN_RL end
local function is5keyAlignCenter() 		return skin_config.option["Notes 5Key Align"] ==			NOTES_5KEY_ALIGN_CENTER end
local function is5keyAlignEnlarge() 	return skin_config.option["Notes 5Key Align"] ==			NOTES_5KEY_ALIGN_ENLARGE end

local function isNotesHeight_50() 		return skin_config.option["Notes Height"] == 				NOTES_HEIGHT_50_PIX end
local function isNotesHeight_45() 		return skin_config.option["Notes Height"] == 				NOTES_HEIGHT_45_PIX end
local function isNotesHeight_40() 		return skin_config.option["Notes Height"] == 				NOTES_HEIGHT_40_PIX end
local function isNotesHeight_35() 		return skin_config.option["Notes Height"] == 				NOTES_HEIGHT_35_PIX end
local function isNotesHeight_30() 		return skin_config.option["Notes Height"] == 				NOTES_HEIGHT_30_PIX end
local function isNotesHeightCustom() 	return skin_config.option["Notes Height"] == 				NOTES_HEIGHT_CUSTOM end

local function isJudgeTypeA()	 		return skin_config.option["Judge Display"] == 				JUDGE_TYPE_A end
local function isJudgeTypeB() 			return skin_config.option["Judge Display"] == 				JUDGE_TYPE_B end
local function isJudgeTypeC() 			return skin_config.option["Judge Display"] == 				JUDGE_TYPE_C end

local function isInputKeyboard() 		return skin_config.option["Input Device"] == 				INPUT_DEVICE_KEYBORAD end

local function isKeybeamFast() 			return skin_config.option["Keybeam Display"] == 			KEYBEAM_DISPLAY_FAST end

local function isKeybeamHeight_x100() 	return skin_config.option["Keybeam Height Multiplier"] == 	KEYBEAM_HEIGHT_MULUTIPLIER_x100 end
local function isKeybeamHeight_x75() 	return skin_config.option["Keybeam Height Multiplier"] == 	KEYBEAM_HEIGHT_MULUTIPLIER_x75 end
local function isKeybeamHeight_x50() 	return skin_config.option["Keybeam Height Multiplier"] == 	KEYBEAM_HEIGHT_MULUTIPLIER_x50 end
local function isKeybeamHeight_x25() 	return skin_config.option["Keybeam Height Multiplier"] == 	KEYBEAM_HEIGHT_MULUTIPLIER_x25 end

local function isKeybeamAlpha_x100() 	return skin_config.option["Keybeam Alpha Multiplier"] == 	KEYBEAM_ALPHA_MULUTIPLIER_x100 end
local function isKeybeamAlpha_x75() 	return skin_config.option["Keybeam Alpha Multiplier"] == 	KEYBEAM_ALPHA_MULUTIPLIER_x75 end
local function isKeybeamAlpha_x50() 	return skin_config.option["Keybeam Alpha Multiplier"] == 	KEYBEAM_ALPHA_MULUTIPLIER_x50 end
local function isKeybeamAlpha_x25() 	return skin_config.option["Keybeam Alpha Multiplier"] == 	KEYBEAM_ALPHA_MULUTIPLIER_x25 end

local function isTargetBest() 			return skin_config.option["Target"] == 						TARGET_MYBEST end
local function isTargetRank() 			return skin_config.option["Target"] == 						TARGET_TARGET end
local function isTarget2On() 			return skin_config.option["Target2 (Left)"] == 				TARGET2_ON end

local function isHitErrorVisualizerOn() return skin_config.option["Hiterror Visualizer"] == 		HITERRORVISUALIZER_ON end
local function isScoreRateOn() 			return skin_config.option["Score Rate"] == 					SCORE_RATE_ON end

local function isFastSlowCenter() 		return skin_config.option["Fast/Slow Type"] == 				FAST_SLOW_CENTER end
local function isFastSlowRnL() 			return skin_config.option["Fast/Slow Type"] == 				FAST_SLOW_RL end
local function isFastSlowMSCenter() 	return skin_config.option["Fast/Slow Type"] == 				FAST_SLOW_MS_CENTER end
local function isFastSlowMSRnL() 		return skin_config.option["Fast/Slow Type"] == 				FAST_SLOW_MS_RL end

local function isFastSlowCounterOn() 	return skin_config.option["Fast/Slow Counter"] == 			FAST_SLOW_COUNT_ON end
local function isFastSlowThresholdDef() return skin_config.option["Fast/Slow Threshold"] == 		FAST_SLOW_THRESHOLD_DEFAULT end

local function isGaugeDisplayDef() 		return skin_config.option["Gauge Display"] == 				GAUGE_DISPLAY_DEFAULT end

local function isBombUnderTheGaugeOn() 	return skin_config.option["Bomb Under the Gauge"] == 		BOMB_UNDER_GAUGE_ON end
local function isBombPropertyCustom()	return skin_config.option["Bomb Property"] == 				BOMB_PROPERTY_CUSTOM end

local function isHiSpeedRelative()		return skin_config.option["Hi-Speed Type"] == 				HI_SPEED_RELATIVE end

local function isMascotStop() 			return skin_config.option["Mascot Display"] == 				MASCOT_STOP end

-- ========================================================================================================================================================	

-- # main function

local function main()

	local skin = {}
	for k, v in pairs(header) do
		skin[k] = v
	end

	local TIMER_OFF = main_state.timer_off_value

-- ========================================================================================================================================================	

	-- # notesInfo

	local notesInfo = {}

	local function checkValue(obj, validation)
		if obj and obj ~= false then
			if type(obj) == "number" then
				if validation == "1_to_255" then
					if math.floor(obj) == obj then
						return obj >= 1 and obj <= 255
					else
						return false
					end
				elseif validation == "0_to_100" then
					if math.floor(obj) == obj then
						return obj >= 0 and obj <= 100
					else
						return false
					end
				elseif validation == "-255_to_255" then
					if math.floor(obj) == obj then
						return obj >= -255 and obj <= 255
					else
						return false
					end
				elseif validation == "0.1_to_10.0" then
					return obj >= 0.1 and obj <= 10.0
				end
			elseif type(obj) == "string" then
				return checkValue(tonumber(obj), validation)
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

	do
		if isNotesWidthCustom() and is7key() then
			local lua_path = skin_config.get_path("customize/CUSTOMIZE.lua")
			local status, result = pcall(function()
				return dofile(lua_path).load("CUSTOM_NOTES_WIDTH_7KEY")
			end)
			if status and result and type(result) == "table" and checkValue(result.OTHER_WIDTH, "1_to_255") and checkValue(result.SCRATCH_WIDTH, "1_to_255") then
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
			local lua_path = skin_config.get_path("customize/CUSTOMIZE.lua")
			local status, result = pcall(function()
				return dofile(lua_path).load("CUSTOM_NOTES_WIDTH_5KEY")
			end)
			if status and result and type(result) == "table" and checkValue(result.OTHER_WIDTH, "1_to_255") and checkValue(result.SCRATCH_WIDTH, "1_to_255") then
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
			local lua_path = skin_config.get_path("customize/CUSTOMIZE.lua")
			local status, result = pcall(function()
				return dofile(lua_path).load("CUSTOM_NOTES_WIDTH_9KEY")
			end)
			if status and result and type(result) == "table" and checkValue(result.OTHER_WIDTH, "1_to_255") and checkValue(result.SCRATCH_WIDTH, "1_to_255") then
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
	end

	do
		if isNotesHeight_50() then
			notesInfo.height = 50
		elseif isNotesHeight_45() then
			notesInfo.height = 45
		elseif isNotesHeight_40() then
			notesInfo.height = 40
		elseif isNotesHeight_35() then
			notesInfo.height = 35
		elseif isNotesHeight_30() then
			notesInfo.height = 30
		elseif isNotesHeightCustom() and is7key() then
			local lua_path = skin_config.get_path("customize/CUSTOMIZE.lua")
			local status, result = pcall(function()
				return dofile(lua_path).load("CUSTOM_NOTES_HEIGHT_7KEY")
			end)
			if status and result and type(result) == "table" then
				if checkValue(result.CUSTOM_NOTES_HEIGHT, "1_to_255") then
					notesInfo.height = result.CUSTOM_NOTES_HEIGHT
				else
					notesInfo.height = 64
				end
			else
				notesInfo.height = 64
			end
		elseif isNotesHeightCustom() and is5key() then
			local lua_path = skin_config.get_path("customize/CUSTOMIZE.lua")
			local status, result = pcall(function()
				return dofile(lua_path).load("CUSTOM_NOTES_HEIGHT_5KEY")
			end)
			if status and result and type(result) == "table" then
				if checkValue(result.CUSTOM_NOTES_HEIGHT, "1_to_255") then
					notesInfo.height = result.CUSTOM_NOTES_HEIGHT
				else
					notesInfo.height = 64
				end
			else
				notesInfo.height = 64
			end
		elseif isNotesHeightCustom() and is9key() then
			local lua_path = skin_config.get_path("customize/CUSTOMIZE.lua")
			local status, result = pcall(function()
				return dofile(lua_path).load("CUSTOM_NOTES_HEIGHT_9KEY")
			end)
			if status and result and type(result) == "table" then
				if checkValue(result.CUSTOM_NOTES_HEIGHT, "1_to_255") then
					notesInfo.height = result.CUSTOM_NOTES_HEIGHT
				else
					notesInfo.height = 64
				end
			else
				notesInfo.height = 64
			end
		end
	end

-- ========================================================================================================================================================	

	-- # GEOMETRY

	local GEOMETRY = {
		-- PLAY_POS = 		nil,
		-- SCORE_POS = 		nil,
		-- INFO_POS = 		nil,
		-- LANE_X = 		nil,
		LANE_Y = 		0,
		LANE_W = 		802,
		LANE_H = 		1080,
		-- LANE_CENTER = 	nil,
		LANE_DISTANCE = 288,
		LANE_LINE = 24,
		-- JUDGE_Y = 		nil,
		-- TRACER_Y =		nil,
		-- DETAIL_Y =		nil,
		BGA_X = 		68,
		BGA_Y = 		457,
		BGA_W = 		480,
		BGA_H = 		480,
		-- GRAPH_BLUE = 	nil,
		-- GRAPH_RED = 		nil,
		MASCOT_X =		58,
		MASCOT_Y = 		102,
		MASCOT_W = 		256,
		MASCOT_H = 		256
	}

	local fps_align
	if isScratchRight() and isLaneAlignCenter() then
		GEOMETRY.PLAY_POS =  616
		GEOMETRY.SCORE_POS = 1550
		GEOMETRY.GRAPH_BLUE = 72
		GEOMETRY.GRAPH_RED = 264
		fps_align = 0
	elseif isScratchRight() and not isLaneAlignCenter() then
		GEOMETRY.PLAY_POS = 988
		GEOMETRY.SCORE_POS = 616
		GEOMETRY.GRAPH_BLUE = 264
		GEOMETRY.GRAPH_RED = 72
		fps_align = 1
	elseif isScratchLeft() and isLaneAlignCenter() then
		GEOMETRY.PLAY_POS = 372
		GEOMETRY.SCORE_POS = 0
		GEOMETRY.GRAPH_BLUE = 264
		GEOMETRY.GRAPH_RED = 72
		fps_align = 1
	else
		GEOMETRY.PLAY_POS = 0
		GEOMETRY.SCORE_POS = 932
		GEOMETRY.GRAPH_BLUE = 72
		GEOMETRY.GRAPH_RED = 264
		fps_align = 0
	end

	local title_align
	if isScratchRight() then
		GEOMETRY.INFO_POS = 0
		GEOMETRY.LANE_X = 15
		title_align = 0
	else
		GEOMETRY.INFO_POS = 1304
		GEOMETRY.LANE_X = 115
		title_align = 2
	end

	if isScratchRight() and isLaneCenterPosKey() and is7key() then
		GEOMETRY.LANE_CENTER = math.floor(notesInfo.Ot_width * 3.5)
	elseif isScratchLeft() and 	isLaneCenterPosKey() and is7key() then
		GEOMETRY.LANE_CENTER = math.floor(notesInfo.Ot_width * 3.5 + notesInfo.Sc_width)
	elseif isScratchRight() and isLaneCenterPosKey() and is5key() and is5keyAlignRL() and isNotesWidthTemplate() then
		GEOMETRY.LANE_CENTER = math.floor(notesInfo.Ot_width * 2.5 + notesInfo.Ot_width * 2)
	elseif isScratchLeft() and 	isLaneCenterPosKey() and is5key() and is5keyAlignRL() and isNotesWidthTemplate() then
		GEOMETRY.LANE_CENTER = math.floor(notesInfo.Ot_width * 2.5 + notesInfo.Sc_width)
	elseif isScratchRight() and isLaneCenterPosKey() and is5key() and is5keyAlignCenter() and isNotesWidthTemplate() then
		GEOMETRY.LANE_CENTER = math.floor(notesInfo.Ot_width * 3.5)
	elseif isScratchLeft() and 	isLaneCenterPosKey() and is5key() and is5keyAlignCenter() and isNotesWidthTemplate() then
		GEOMETRY.LANE_CENTER = math.floor(notesInfo.Ot_width * 3.5 + notesInfo.Sc_width)
	elseif isScratchRight() and isLaneCenterPosKey() and is5key() and is5keyAlignEnlarge() and isNotesWidthTemplate() then
		GEOMETRY.LANE_CENTER = math.floor(notesInfo.Ot_width * 2.5)
	elseif isScratchLeft() and 	isLaneCenterPosKey() and is5key() and is5keyAlignEnlarge() and isNotesWidthTemplate() then
		GEOMETRY.LANE_CENTER = math.floor(notesInfo.Ot_width * 2.5 + notesInfo.Sc_width)
	elseif isScratchRight() and isLaneCenterPosKey() and is5key() and isNotesWidthCustom() then
		GEOMETRY.LANE_CENTER = math.floor(notesInfo.Ot_width * 2.5)
	elseif isScratchLeft() and 	isLaneCenterPosKey() and is5key() and isNotesWidthCustom() then
		GEOMETRY.LANE_CENTER = math.floor(notesInfo.Ot_width * 2.5 + notesInfo.Sc_width)
	else
		GEOMETRY.LANE_CENTER = 401
	end

	if isJudgeTypeA() or isJudgeTypeB() then
		GEOMETRY.JUDGE_Y = 205
		GEOMETRY.TRACER_Y = 330
		GEOMETRY.DETAIL_Y = 120
	else
		GEOMETRY.JUDGE_Y = 780
		GEOMETRY.TRACER_Y = 680
		GEOMETRY.DETAIL_Y = 630
	end

-- ========================================================================================================================================================	

	local function getKeybeamHeight()
		if isKeybeamHeight_x100() then
			return 1
		elseif isKeybeamHeight_x75() then
			return 0.75
		elseif isKeybeamHeight_x50() then
			return 0.5
		elseif isKeybeamHeight_x25() then
			return 0.25
		else
			local lua_path = skin_config.get_path("customize/CUSTOMIZE.lua")
			local status, result = pcall(function()
				return dofile(lua_path).load("CUSTOM_KEYBEAM_HEIGHT")
			end)
			if status and result and type(result) == "table" then
				if checkValue(result.CUSTOM_KEYBEAM_HEIGHT, "0_to_100") then
					return result.CUSTOM_KEYBEAM_HEIGHT / 100
				else
					return 0.125
				end
			else
				return 0.125
			end
		end
	end

	local function getKeybeamAlpha(alpha)
		if isKeybeamAlpha_x100() then
			return math.floor(1 * alpha)
		elseif isKeybeamAlpha_x75() then
			return math.floor(0.75 * alpha)
		elseif isKeybeamAlpha_x50() then
			return math.floor(0.5 * alpha)
		elseif isKeybeamAlpha_x25() then
			return math.floor(0.25 * alpha)
		else
			local lua_path = skin_config.get_path("customize/CUSTOMIZE.lua")
			local status, result = pcall(function()
				return dofile(lua_path).load("CUSTOM_KEYBEAM_ALPHA")
			end)
			if status and result and type(result) == "table" then
				if checkValue(result.CUSTOM_KEYBEAM_ALPHA, "0_to_100") then
					return math.floor(result.CUSTOM_KEYBEAM_ALPHA / 100 * alpha)
				else
					return math.floor(0.125 * alpha)
				end
			else
				return math.floor(0.125 * alpha)
			end
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
			local lua_path = skin_config.get_path("customize/CUSTOMIZE.lua")
			local status, result = pcall(function()
				return dofile(lua_path).load("CUSTOM_BOMB_PROPERTY")
			end)
			if status and result and type(result) == "table" and (
				(function()
					for i = 1, 4 do
						if not checkValue(result[i], "0.1_to_10.0") then
							return false
						end
					end
					return true
				end) and
				(function()
					for i = 5, 10 do
						if not checkValue(result[i], "1_to_255") then
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
	if is5key() or is7key() then
		if main_state.option(183) then
			FS_THRESHOLD = 20
		elseif main_state.option(182) then
			FS_THRESHOLD = 15
		elseif main_state.option(181) then
			FS_THRESHOLD = 10
		elseif main_state.option(180) then
			FS_THRESHOLD = 5
		else
			FS_THRESHOLD = 25
		end
	else
		FS_THRESHOLD = 20
	end

	if not isFastSlowThresholdDef() then
		do
			local lua_path = skin_config.get_path("customize/CUSTOMIZE.lua")
			local status, result = pcall(function()
				return dofile(lua_path).load("CUSTOM_FAST_SLOW_THRESHOLD")
			end)
			if status and result and type(result) == "table" and checkValue(result.FS_THRESHOLD_DELTA, "-255_to_255") and math.abs(result.FS_THRESHOLD_DELTA) <= FS_THRESHOLD then
				FS_THRESHOLD = FS_THRESHOLD + result.FS_THRESHOLD_DELTA
			else
				FS_THRESHOLD = FS_THRESHOLD - 3
			end
		end
	end

	local function predicateFast()
		if main_state.number(525) >= FS_THRESHOLD and main_state.number(525) >= 0 then
			return true
		else
			return false
		end
	end

	local function predicateSlow()
		if main_state.number(525) <= -FS_THRESHOLD and main_state.number(525) <= 0 then
			return true
		else
			return false
		end
	end

	local function eliminateZeroNumber(number)
		return main_state.number(number) ~= 0
	end

	local function getRemainNotes()
		return main_state.number(106)
			- main_state.number(110)
			- main_state.number(111)
			- main_state.number(112)
			- main_state.number(113)
			- main_state.number(114)
	end

	local function getDummyNumber(number)
		if main_state.number(101) < 1 then
			return 0
		else
			return main_state.number(number)
		end
	end

	local function getHiSpeed()
		local event = main_state.event_index(55)
		local adjusted_cover = main_state.option(273)
		if main_state.option(177) and adjusted_cover then
			if event == 2 then
				local maxbpm = main_state.number(90)
				if maxbpm == 0 then
					return main_state.number(312)
				else
					return main_state.number(312) * main_state.number(160) / maxbpm
				end
			elseif event == 3 then
				local mainbpm = main_state.number(92)
				if mainbpm == 0 then
					return main_state.number(312)
				else
					return main_state.number(312) * main_state.number(160) / mainbpm
				end
			else
				return main_state.number(312)
			end
		else
			return main_state.number(312)
		end
	end

-- ========================================================================================================================================================	

-- skin.XX

	local key_type
	if isNotesWidthCustom() then
		key_type = "/custom/"
	elseif is5key() and is5keyAlignEnlarge() then
		key_type = "/5keyL/"
	elseif is9key() then
		key_type = "/9key/"
	else
		key_type = "/7key/"
	end
	skin.source = {
		-- # common src
		{id = "bg_src", 			path = "parts/bg/*.png"},
		{id = "alt_image_src", 		path = "parts/!_common/!_alt_image.png"},

		-- # infomation src
		{id = "info_system_src", 	path = "parts/!_common/!_info_system.png"},

		-- # score src
		{id = "score_system_src", 	path = "parts/!_common/!_score_system.png"},
		{id = "mascot_src", 		path = "parts/!_mascot/*.png"},

		-- # play src
		{id = "play_system_src", 	path = "parts/!_common/!_play_system.png"},

		-- note
		{id = "notes_wh_src", 	path = "parts/notes" .. key_type .. "1-1_white/*.png"},
		{id = "notes_bl_src", 	path = "parts/notes" .. key_type .. "2-1_blue/*.png"},
		{id = "notes_ye_src", 	path = "parts/notes" .. key_type .. "3-1_yellow/*.png"},
		{id = "notes_sc_src", 	path = "parts/notes" .. key_type .. "4-1_scratch/*.png"},

		-- lnstart	
		{id = "lnSt_wh_src", 	path = "parts/notes" .. key_type .. "1-2_white_lnSt/*.png"},
		{id = "lnSt_bl_src", 	path = "parts/notes" .. key_type .. "2-2_blue_lnSt/*.png"},
		{id = "lnSt_ye_src", 	path = "parts/notes" .. key_type .. "3-2_yellow_lnSt/*.png"},
		{id = "lnSt_sc_src", 	path = "parts/notes" .. key_type .. "4-2_scratch_lnSt/*.png"},

		-- lnend	
		{id = "lnEn_wh_src", 	path = "parts/notes" .. key_type .. "1-3_white_lnEn/*.png"},
		{id = "lnEn_bl_src", 	path = "parts/notes" .. key_type .. "2-3_blue_lnEn/*.png"},
		{id = "lnEn_ye_src", 	path = "parts/notes" .. key_type .. "3-3_yellow_lnEn/*.png"},
		{id = "lnEn_sc_src", 	path = "parts/notes" .. key_type .. "4-3_scratch_lnEn/*.png"},

		-- lnbody	
		{id = "lnBo_wh_src", 	path = "parts/notes" .. key_type .. "1-4_white_lnBo/*.png"},
		{id = "lnBo_bl_src", 	path = "parts/notes" .. key_type .. "2-4_blue_lnBo/*.png"},
		{id = "lnBo_ye_src", 	path = "parts/notes" .. key_type .. "3-4_yellow_lnBo/*.png"},
		{id = "lnBo_sc_src", 	path = "parts/notes" .. key_type .. "4-4_scratch_lnBo/*.png"},

		-- lnactive
		{id = "lnAc_wh_src", 	path = "parts/notes" .. key_type .. "1-5_white_lnAc/*.png"},
		{id = "lnAc_bl_src", 	path = "parts/notes" .. key_type .. "2-5_blue_lnAc/*.png"},
		{id = "lnAc_ye_src", 	path = "parts/notes" .. key_type .. "3-5_yellow_lnAc/*.png"},
		{id = "lnAc_sc_src", 	path = "parts/notes" .. key_type .. "4-5_scratch_lnAc/*.png"},

		-- hcnstart	
		{id = "hcSt_wh_src", 	path = "parts/notes" .. key_type .. "1-2_white_lnSt/*.png"},
		{id = "hcSt_bl_src", 	path = "parts/notes" .. key_type .. "2-2_blue_lnSt/*.png"},
		{id = "hcSt_ye_src", 	path = "parts/notes" .. key_type .. "3-2_yellow_lnSt/*.png"},
		{id = "hcSt_sc_src", 	path = "parts/notes" .. key_type .. "4-2_scratch_lnSt/*.png"},

		-- hcnend	
		{id = "hcEn_wh_src", 	path = "parts/notes" .. key_type .. "1-3_white_lnEn/*.png"},
		{id = "hcEn_bl_src", 	path = "parts/notes" .. key_type .. "2-3_blue_lnEn/*.png"},
		{id = "hcEn_ye_src", 	path = "parts/notes" .. key_type .. "3-3_yellow_lnEn/*.png"},
		{id = "hcEn_sc_src", 	path = "parts/notes" .. key_type .. "4-3_scratch_lnEn/*.png"},

		-- hcnbody	
		{id = "hcBo_wh_src", 	path = "parts/notes" .. key_type .. "1-4_white_lnBo/*.png"},
		{id = "hcBo_bl_src", 	path = "parts/notes" .. key_type .. "2-4_blue_lnBo/*.png"},
		{id = "hcBo_ye_src", 	path = "parts/notes" .. key_type .. "3-4_yellow_lnBo/*.png"},
		{id = "hcBo_sc_src", 	path = "parts/notes" .. key_type .. "4-4_scratch_lnBo/*.png"},

		-- hcnactive
		{id = "hcAc_wh_src", 	path = "parts/notes" .. key_type .. "1-5_white_lnAc/*.png"},
		{id = "hcAc_bl_src", 	path = "parts/notes" .. key_type .. "2-5_blue_lnAc/*.png"},
		{id = "hcAc_ye_src", 	path = "parts/notes" .. key_type .. "3-5_yellow_lnAc/*.png"},
		{id = "hcAc_sc_src", 	path = "parts/notes" .. key_type .. "4-5_scratch_lnAc/*.png"},

		-- hcndamage
		{id = "hcDm_wh_src", 	path = "parts/notes" .. key_type .. "1-4_white_lnBo/*.png"},
		{id = "hcDm_bl_src", 	path = "parts/notes" .. key_type .. "2-4_blue_lnBo/*.png"},
		{id = "hcDm_ye_src", 	path = "parts/notes" .. key_type .. "3-4_yellow_lnBo/*.png"},
		{id = "hcDm_sc_src", 	path = "parts/notes" .. key_type .. "4-4_scratch_lnBo/*.png"},

		-- hcnreactive
		{id = "hcRe_wh_src", 	path = "parts/notes" .. key_type .. "1-5_white_lnAc/*.png"},
		{id = "hcRe_bl_src", 	path = "parts/notes" .. key_type .. "2-5_blue_lnAc/*.png"},
		{id = "hcRe_ye_src", 	path = "parts/notes" .. key_type .. "3-5_yellow_lnAc/*.png"},
		{id = "hcRe_sc_src", 	path = "parts/notes" .. key_type .. "4-5_scratch_lnAc/*.png"},

		-- mine
		{id = "mine_wh_src", 	path = "parts/notes" .. key_type .. "1-6_white_mine/*.png"},
		{id = "mine_bl_src", 	path = "parts/notes" .. key_type .. "2-6_blue_mine/*.png"},
		{id = "mine_ye_src", 	path = "parts/notes" .. key_type .. "3-6_yellow_mine/*.png"},
		{id = "mine_sc_src", 	path = "parts/notes" .. key_type .. "4-6_scratch_mine/*.png"},

		-- keybeam
		{id = "keybeam_wh_src", path = "parts/keybeam" .. key_type .. "1_white/*.png"},
		{id = "keybeam_bl_src", path = "parts/keybeam" .. key_type .. "2_blue/*.png"},
		{id = "keybeam_ye_src", path = "parts/keybeam" .. key_type .. "3_yellow/*.png"},
		{id = "keybeam_sc_src", path = "parts/keybeam" .. key_type .. "4_scratch/*.png"},

		-- other
		{id = "bomb_src", 		path = "parts/!_bomb/*.png"},
		{id = "lanecover_src", 	path = "parts/lanecover/*.png"},

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
	key_type = nil

	skin.font = {
		{id = 0, path = "font/rounded-x-mplus-1mn-regular.ttf"},
		{id = 1, path = "font/rounded-x-mplus-1mn-medium.ttf"},
		{id = 2, path = "font/rounded-x-mplus-1mn-bold.ttf"}
	}
	skin.image = {
		-- # common image
		{id = "bg", 			src = "bg_src", x = 0, y = 0, w = -1, h = -1},
		{id = "alt-bga-1", 		src = "alt_image_src", x = 0, y = 0, w = 480, h = 480},
		{id = "alt-bga-2", 		src = "alt_image_src", x = 0, y = 481, w = 480, h = 480},

		{id = "head-line", 		src = "play_system_src", x = 15, y = 4, w = 250, h = 3},
		{id = "inload-titleline", src = "play_system_src", x = 15, y = 0, w = 1450, h = 3},
		{id = "alt-stagefile", 	src = "alt_image_src", x = 0, y = 962, w = 320, h = 240},

		-- # infomation image
		{id = "bf-info-frame", src = "info_system_src", x = 0, y = 0, w = 616, h = 480},
		{id = "af-info-frame", src = "info_system_src", x = 0, y = 481, w = 616, h = 480},
		{id = "info-rate-DnP", src = "info_system_src", x = 617, y = 481, w = 74, h = 21},
		{id = "zero-judgetiming", src = "info_system_src", x = 798, y = 110, w = 30, h = 17},

		-- # score image
		{id = "score-frame", 		src = "score_system_src", x = 0, y = 0, w = 372, h = 1080},
		{id = "score-time-colon", 	src = "score_system_src", x = 373, y = 994, w = 68, h = 21},
		{id = "score-rate-DnP", 	src = "score_system_src", x = 373, y = 1016, w = 76, h = 22},

		{id = "score-diff-zero", 	src = "score_system_src", x = 690, y = 1059, w = 40, h = 21},

		{id = "graph-aaa", 	src = "score_system_src", x = 373, y = 1039, w = 316, h = 13},
		{id = "graph-aa", 	src = "score_system_src", x = 373, y = 1053, w = 316, h = 13},
		{id = "graph-a", 	src = "score_system_src", x = 373, y = 1067, w = 316, h = 13},

		{id = "mascot", 	src = "mascot_src", x = 0, y = 0, w = -1, h = -1},

		-- # play image
		{id = "adjusted-rate-dot", 	src = "play_system_src", x = 176, y = 1025, w = 69, h = 18},
		{id = "remain-rate-dot", 	src = "play_system_src", x = 166, y = 1025, w = 9, h = 18},
		{id = "remain-rate-dot", 	src = "play_system_src", x = 166, y = 1025, w = 9, h = 18},
		{id = "song-time-colon", 	src = "play_system_src", x = 166, y = 1044, w = 9, h = 18},
		{id = "song-progress-bar",	src = "play_system_src", x = 10, y = 0, w = 4, h = 10},

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
		{id = "keybeam-w", src = "keybeam_wh_src", x = 0, y = 0, w = notesInfo.Ot_width, h = GEOMETRY.LANE_H},
		{id = "keybeam-b", src = "keybeam_bl_src", x = 0, y = 0, w = notesInfo.Ot_width, h = GEOMETRY.LANE_H},
		{id = "keybeam-y", src = "keybeam_ye_src", x = 0, y = 0, w = notesInfo.Ot_width, h = GEOMETRY.LANE_H},
		{id = "keybeam-s", src = "keybeam_sc_src", x = 0, y = 0, w = notesInfo.Sc_width, h = GEOMETRY.LANE_H},

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
		{id = "replay", 	src = "play_system_src", x = 0, y = 16, w = 258, h = 35},
		{id = "auto", 		src = "play_system_src", x = 259, y = 16, w = 348, h = 35},
		{id = "eon", 		src = "play_system_src", x = 0, y = 52, w = 390, h = 35},

		{id = "fc-effect", 	src = "play_system_src", x = 663, y = 4, w = 802, h = 1080},
		{id = "fullcombo", 	src = "play_system_src", x = 0, y = 88, w = 360, h = 36}
	}
	skin.imageset = {}
	skin.value = {
		-- # infomation valus
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
			return getDummyNumber(102)
		end},
		{id = "info-rate-adot-num", src = "info_system_src", x = 617, y = 0, w = 220, h = 21, divx = 11, digit = 2, align = 0, value = function()
			return getDummyNumber(103)
		end},

		{id = "judgetiming-num", src = "info_system_src", x = 617, y = 110, w = 180, h = 34, divx = 12, divy = 2, digit = 3, ref = 12, align = 1},

		{id = "gauge-num", 			src = "info_system_src", x = 617, y = 339, w = 300, h = 31, divx = 10, digit = 3, ref = 107, align = 0},
		{id = "gauge-adot-num", 	src = "info_system_src", x = 617, y = 339, w = 300, h = 31, divx = 10, digit = 1, ref = 407, align = 0},

		{id = "bpm-now", src = "info_system_src", x = 617, y = 408, w = 720, h = 72, divx = 10, digit = 3, ref = 160, align = 0},
		{id = "bpm-max", src = "info_system_src", x = 617, y = 371, w = 360, h = 36, divx = 10, digit = 3, ref = 90, align = 0},
		{id = "bpm-min", src = "info_system_src", x = 617, y = 371, w = 360, h = 36, divx = 10, digit = 3, ref = 91, align = 0},

		-- # score values
		{id = "score-time-hour-num", 	src = "score_system_src", x = 373, y = 0, w = 220, h = 21, divx = 11, digit = 2, ref = 27, align = 1},
		{id = "score-time-minute-num", src = "score_system_src", x = 373, y = 0, w = 220, h = 21, divx = 11, digit = 2, ref = 28, align = 1},
		{id = "score-time-second-num", src = "score_system_src", x = 373, y = 0, w = 220, h = 21, divx = 11, digit = 2, ref = 29, align = 1},
		{id = "fps-num", 				src = "score_system_src", x = 373, y = 22, w = 200, h = 21, divx = 10, digit = 4, ref = 20, align = fps_align},

		{id = "score-rate-num", 		src = "score_system_src", x = 373, y = 130, w = 200, h = 24, divx = 10, digit = 3, align = 0, value = function()
			return getDummyNumber(102)
		end},
		{id = "score-rate-adot-num", 	src = "score_system_src", x = 373, y = 130, w = 220, h = 24, divx = 11, digit = 2, align = 0, value = function()
			return getDummyNumber(103)
		end},

		{id = "score-score", 			src = "score_system_src", x = 373, y = 0, w = 200, h = 21, divx = 10, digit = 5, align = 0, value = function()
			return getDummyNumber(101)
		end},
		{id = "score-diff-best", 	src = "score_system_src", x = 373, y = 44, w = 240, h = 42, divx = 12, divy = 2, digit = 6, ref = 152, align = 0},
		{id = "score-diff-target", 	src = "score_system_src", x = 373, y = 87, w = 240, h = 42, divx = 12, divy = 2, digit = 6, ref = 153, align = 0},

		-- # play values
		{id = "adjusted-rate-num", 		src = "play_system_src", x = 0, y = 1025, w = 150, h = 18, divx = 10, digit = 1, align = 0, value = function()
			local event = main_state.event_index(55)
			local constant = main_state.option(400)
			local adjusted_cover = main_state.option(273)
			if event == 2 and (constant or adjusted_cover) then
				return main_state.number(160) / main_state.number(90)
			elseif event == 3 and (constant or adjusted_cover) then
				local magnifcation = main_state.number(160) / main_state.number(92)
				if magnifcation > 1 then
					return 1
				else
					return magnifcation
				end
			end
		end},
		{id = "adjusted-rate-adot-num", src = "play_system_src", x = 0, y = 1044, w = 165, h = 18, divx = 11, digit = 2, align = 0, value = function()
			local event = main_state.event_index(55)
			local constant = main_state.option(400)
			local adjusted_cover = main_state.option(273)
			if event == 2 and (constant or adjusted_cover) then
				return math.floor(main_state.number(160) / main_state.number(90) * 100 + 0.5)
			elseif event == 3 and (constant or adjusted_cover) then
				local magnifcation = math.floor(main_state.number(160) / main_state.number(92) * 100 + 0.5)
				if magnifcation > 100 then
					return 100
				else
					return magnifcation
				end
			end
		end},

		{id = "remain-rate-num", 		src = "play_system_src", x = 0, y = 1025, w = 150, h = 18, divx = 10, digit = 3, align = 0, value = function()
			return getRemainNotes() / main_state.number(106) * 100
		end},
		{id = "remain-rate-adot-num", 	src = "play_system_src", x = 0, y = 1044, w = 165, h = 18, divx = 11, digit = 2, align = 0, value = function()
			return getRemainNotes() / main_state.number(106) * 10000
		end},

		{id = "remain-notes",	 		src = "play_system_src", x = 0, y = 1025, w = 150, h = 18, divx = 10, digit = 5, align = 0, value = function()
			return getRemainNotes()
		end},

		{id = "song-remain-m", 			src = "play_system_src", x = 0, y = 1025, w = 150, h = 18, divx = 10, digit = 2, ref = 163, align = 0},
		{id = "song-remain-s", 			src = "play_system_src", x = 0, y = 1025, w = 165, h = 18, divx = 11, digit = 2, ref = 164, align = 0},

		{id = "lanecover-value", 		src = "play_system_src", x = 0, y = 178, w = 200, h = 21, divx = 10, digit = 4, ref = 14, align = 0},
		{id = "lanecover-green", 		src = "play_system_src", x = 0, y = 200, w = 200, h = 21, divx = 10, digit = 4, align = 0, value = function()
			return getHiSpeed() * 0.6
		end},
		{id = "lanecover-duration", 	src = "play_system_src", x = 0, y = 222, w = 200, h = 21, divx = 10, digit = 4, align = 0, value = function()
			return getHiSpeed()
		end},
		{id = "lift-value", 			src = "play_system_src", x = 0, y = 178, w = 200, h = 21, divx = 10, digit = 4, ref = 314, align = 0}
	}
	skin.text = {
		-- # in loading
		{id = "inload-genre", font = 0, size = 26, overflow = 1, value = function()
			local tx = main_state.text(13)
			if not tx or tx == "" then
				return "# No-Genre"
			else
				return tx
			end
		end},
		{id = "inload-title", font = 2, size = 73, overflow = 1, value = function()
			local tx = main_state.text(12)
			if not tx or tx == "" then
				return "# No-Title"
			else
				return tx
			end
		end},
		{id = "inload-artist", font = 1, size = 42, overflow = 1, value = function()
			local tx = main_state.text(16)
			if not tx or tx == "" then
				return "# No-Artist"
			else
				return tx
			end
		end},

		-- # common
		{id = "table", font = 1, size = 31, overflow = 1, align = title_align, value = function()
			if not main_state.option(290) then
				local tx1, tx2 = main_state.text(1001), main_state.text(1002)
				if not tx1 or tx1 == "" and not tx2 or tx2 == "" then
					local tx3 = main_state.text(1003)
					if not tx3 or tx3 == "" then
						return "# No-Table"
					else
						return tx3
					end
				else
					return tx1 .. " > " .. tx2
				end
			else
				if main_state.option(289) then
					return "COURSE : STAGE FINAL"
				elseif main_state.option(280) then
					return "COURSE : STAGE 1"
				elseif main_state.option(281) then
					return "COURSE : STAGE 2"
				elseif main_state.option(282) then
					return "COURSE : STAGE 3"
				else
					return "COURSE : STAGE 4"
				end
			end
		end},

		-- # in playing
		{id = "inplay-title", font = 2, size = 42, overflow = 1, align = title_align, value = function()
			local tx = main_state.text(12)
			if not tx or tx == "" then
				return "# No-Title"
			else
				return tx
			end
		end},
		{id = "inplay-artist", font = 0, size = 26, overflow = 1, align = title_align, value = function()
			local tx = main_state.text(16)
			if not tx or tx == "" then
				return "# No-Artist"
			else
				return tx
			end
		end}
	}
	skin.slider = {
		-- # play slider
		{id = "song-progress", 	src = "play_system_src", x = 634, y = 4, w = 12, h = 21, angle = 2, range = 600, type = 6},
		{id = "lanecover", 		src = "lanecover_src", x = 0, y = 0, w = GEOMETRY.LANE_W, h = GEOMETRY.LANE_H, angle = 2, range = GEOMETRY.LANE_H, type = 4},
		{id = "adjustedcover", 	src = "lanecover_src", x = 0, y = 0, w = GEOMETRY.LANE_W, h = GEOMETRY.LANE_H, angle = 2, range = GEOMETRY.LANE_H, value = function()
			-- BUTTON_HSFIX = 55;	0:OFF, 1:START, 2:MAX, 3:MAIN, 4:MIN
			if main_state.option(273) then
				-- NUMBER_LANECOVER1 = 	14;
				-- NUMBER_LIFT1 = 		314;
				local visible_area = 1 - (main_state.number(14) + main_state.number(314)) / 1000
				local event = main_state.event_index(55)
				if event == 2 then
					-- NUMBER_MAXBPM = 	90;
					-- NUMBER_NOWBPM = 	160;
					return visible_area - visible_area * main_state.number(160) / main_state.number(90)
				elseif event == 3 then
					-- NUMBER_MAINBPM = 92;
					return visible_area - visible_area * main_state.number(160) / main_state.number(92)
				end
			end
		end}
	}
	skin.graph = {
		-- # score graph
		{id = "graph-now", 			src = "score_system_src", x = 699, y = 0, w = 10, h = 800, angle = 1, type = 110},
		{id = "graph-final", 		src = "score_system_src", x = 732, y = 0, w = 10, h = 800, angle = 1, type = 111},
		{id = "graph-best-now", 	src = "score_system_src", x = 710, y = 0, w = 10, h = 800, angle = 1, type = 112},
		{id = "graph-best-final", 	src = "score_system_src", x = 732, y = 0, w = 10, h = 800, angle = 1, type = 113},
		{id = "graph-target-now", 	src = "score_system_src", x = 721, y = 0, w = 10, h = 800, angle = 1, type = 114},
		{id = "graph-target-final", src = "score_system_src", x = 732, y = 0, w = 10, h = 800, angle = 1, type = 115},

		-- # play graph
		{id = "song-progress-fin", 	src = "play_system_src", x = 10, y = 0, w = 4, h = 10, angle = 1, type = 101},

		-- # in loading
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
			{id = "section-line", timer = 41, offsets = {3, JUDGELINE_POS, BARLINE_TRANSPARENCY}, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = GEOMETRY.LANE_Y, w = GEOMETRY.LANE_W, h = 5, r = 255, g = 255, b = 255, a = 255, acc = 2}
			}}
		},
		time = {
			{id = "section-line", timer = 41, offsets = {3, JUDGELINE_POS, BARLINE_TRANSPARENCY}, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = GEOMETRY.LANE_Y, w = GEOMETRY.LANE_W, h = 15, r = 100, g = 100, b = 255, a = 255, acc = 2}
			}}
		},
		bpm = {
			{id = "section-line", timer = 41, offsets = {3, JUDGELINE_POS, BARLINE_TRANSPARENCY}, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = GEOMETRY.LANE_Y, w = GEOMETRY.LANE_W, h = 15, r = 100, g = 255, b = 100, a = 255, acc = 2}
			}}
		},
		stop = {
			{id = "section-line", timer = 41, offsets = {3, JUDGELINE_POS, BARLINE_TRANSPARENCY}, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = GEOMETRY.LANE_Y, w = GEOMETRY.LANE_W, h = 15, r = 255, g = 100, b = 100, a = 255, acc = 2}
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

	do
		local _parts ,_range, _cycle
		if isGaugeDisplayDef() then
			_parts ,_range, _cycle = 50, 3, 33
		else
			_parts ,_range, _cycle = 10000, 0, 0
		end
		skin.gauge = {
			id = "gauge",
			nodes = {
			-- Order: overclear(light),underclear(light),overclear(dark),underclear(dark),tip color(light),tip color(dark)

			-- assist easy gauge
			"gauge-r1","gauge-p1","gauge-r2","gauge-p2","gauge-r3","gauge-p3",
			-- easy gauge
			"gauge-r1","gauge-g1","gauge-r2","gauge-g2","gauge-r3","gauge-g3",
			-- normal gauge
			"gauge-r1","gauge-b1","gauge-r2","gauge-b2","gauge-r3","gauge-b3",
			-- hard gauge(Are the 2, 4, and 6 dummies?)
			"gauge-r1","gauge-p1","gauge-r2","gauge-p2","gauge-r3","gauge-p3",
			-- ex hard gauge(Are the 2, 4, and 6 dummies?)
			"gauge-y1","gauge-p1","gauge-y2","gauge-p2","gauge-y3","gauge-p3",
			-- hazard gauge(Are the 2, 4, and 6 dummies?)
			"gauge-w1","gauge-w1","gauge-w2","gauge-w2","gauge-w3","gauge-w3"
			},
			parts = _parts,
			range = _range,
			cycle = _cycle
		}
	end

	local _images = {}
	local _numbers = {}
	local _shift
	do
		if isJudgeTypeA() or isJudgeTypeB() then
			local judge_w = {356, 356, 288, 220, 288, 260}
			local offsets = {JUDGE_PG_TRANSPARENCY, JUDGE_GR_TRANSPARENCY, JUDGE_GD_TRANSPARENCY, JUDGE_BD_TRANSPARENCY, JUDGE_PR_TRANSPARENCY, JUDGE_MS_TRANSPARENCY}
			table.insert(skin.source, {id = "judge_src", path = "parts/judge/type_ab/*.png"})
			append_all(skin.image, {
				{id = "judge-pg", src = "judge_src", x = 0, y = 0, w = judge_w[1], h = 720, divy = 6, cycle = 100},
				{id = "judge-gr", src = "judge_src", x = 0, y = 721, w = judge_w[2], h = 240, divy = 2, cycle = 60},
				{id = "judge-gd", src = "judge_src", x = 0, y = 962, w = judge_w[3], h = 240, divy = 2, cycle = 60},
				{id = "judge-bd", src = "judge_src", x = 0, y = 1203, w = judge_w[4] * 2, h = 120, divx = 2, cycle = 60},
				{id = "judge-pr", src = "judge_src", x = 0, y = 1324, w = judge_w[5] * 2, h = 120, divx = 2, cycle = 60},
				{id = "judge-ms", src = "judge_src", x = 0, y = 1445, w = judge_w[6] * 2, h = 120, divx = 2, cycle = 60}
			})
			if isJudgeTypeA() then
				append_all(skin.value, {
					{id = "judgenum-pg", src = "judge_src", x = 357, y = 0, w = 840, h = 720, divx = 10, divy = 6, digit = 6, ref = 75, cycle = 100},
					{id = "judgenum-gr", src = "judge_src", x = 357, y = 721, w = 840, h = 240, divx = 10, divy = 2, digit = 6, ref = 75, cycle = 60},
					{id = "judgenum-gd", src = "judge_src", x = 357, y = 721, w = 840, h = 240, divx = 10, divy = 2, digit = 6, ref = 75, cycle = 60},
					{id = "judgenum-bd", src = "judge_src", x = 357, y = 721, w = 840, h = 240, divx = 10, divy = 2, digit = 6, ref = 75, cycle = 60},
					{id = "judgenum-pr", src = "judge_src", x = 357, y = 721, w = 840, h = 240, divx = 10, divy = 2, digit = 6, ref = 75, cycle = 60},
					{id = "judgenum-ms", src = "judge_src", x = 357, y = 721, w = 840, h = 240, divx = 10, divy = 2, digit = 6, ref = 75, cycle = 60}
				})
				local id = {"-pg", "-gr", "-gd", "-bd", "-pr", "-ms"}
				local judge_between
				if isLaneAlignCenter() then
					judge_between = 42
				else
					judge_between = 24
				end
				for i in ipairs(id) do
					if i <= 3 then
						-- コンボ数を伴う判定文字(PGからGD)のx座標を求める式は、「(判定文字の幅 + 判定文字とコンボ数との間隔) / 2」
						_images[i] = {id = "judge" .. id[i], filter = 1, loop = -1, timer = 46, offsets = {3, JUDGE_POS, JUDGELINE_POS, offsets[i]}, dst = {
							{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER - ((judge_w[i] + judge_between) / 2), y = GEOMETRY.JUDGE_Y, w = judge_w[i], h = 120, a = 255, acc = 2},
							{time = 1000}
						}}
					else
						-- コンボ数を伴わない判定文字(BDからMS)のx座標を求める式は、「判定文字の幅 / 2」
						_images[i] = {id = "judge" .. id[i], filter = 1, loop = -1, timer = 46, offsets = {3, JUDGE_POS, JUDGELINE_POS, offsets[i]}, dst = {
							{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER - (judge_w[i] / 2), y = GEOMETRY.JUDGE_Y, w = judge_w[i], h = 120, a = 255, acc = 2},
							{time = 1000}
						}}
					end
					-- コンボ数のx座標を求める式は、「判定文字の幅 + 判定文字とコンボ数との間隔」
					_numbers[i] = {id = "judgenum" .. id[i], loop = -1, timer = 46, offsets = {3, JUDGE_POS, JUDGELINE_POS, offsets[i]}, dst = {
						{time = 0, x = judge_w[i] + judge_between, y = 0, w = 84, h = 120, a = 255, acc = 2},
						{time = 1000}
					}}
				end
				_shift = true
			else
				table.insert(skin.source, {id = "judgenum_src", path = "parts/judgenum/*.png"})
				table.insert(skin.value, {id = "judgenum", src = "judgenum_src", x = 0, y = 0, w = 540, h = 100, divx = 10, digit = 6, ref = 105, align = 2})
				local id = {"judge-pg", "judge-gr", "judge-gd", "judge-bd", "judge-pr", "judge-ms"}
				for i in ipairs(id) do
					-- コンボ数を伴わない判定文字のx座標を求める式は、「判定文字の幅 / 2」
					_images[i] = {id = id[i], filter = 1, loop = -1, timer = 46, offsets = {3, JUDGE_POS, JUDGELINE_POS, offsets[i]}, dst = {
						{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER - (judge_w[i] / 2), y = GEOMETRY.JUDGE_Y, w = judge_w[i], h = 120, a = 255, acc = 2},
						{time = 1000}
					}}
					-- コンボ数のx座標を求める式は、「判定文字の幅 / 2」
					_numbers[i] = {id = "judgenum", loop = -1, timer = 46, offsets = {3, JUDGE_NUM_POS, offsets[i]}, dst = {
						{time = 0, x = judge_w[i] / 2, y = 482, w = 54, h = 100, a = 255, acc = 2},
						{time = 1000}
					}}
				end
				_shift = false
			end
		else
			append_all(skin.source, {
				{id = "judge_pg_src", 	path = "parts/judge/type_cd/1_pg/*.png"},
				{id = "judge_gr_src", 	path = "parts/judge/type_cd/2_gr/*.png"},
				{id = "judge_gd_src", 	path = "parts/judge/type_cd/3_gd/*.png"},
				{id = "judge_bd_src", 	path = "parts/judge/type_cd/4_bd/*.png"},
				{id = "judge_pr_src", 	path = "parts/judge/type_cd/5_pr/*.png"},
				{id = "judge_ms_src", 	path = "parts/judge/type_cd/6_ms/*.png"},
				{id = "judgenum_src", 	path = "parts/judgenum/*.png"}
			})
			append_all(skin.image, {
				{id = "judge-pg", src = "judge_pg_src", x = 0, y = 0, w = 660, h = 120},
				{id = "judge-gr", src = "judge_gr_src", x = 0, y = 0, w = 660, h = 120},
				{id = "judge-gd", src = "judge_gd_src", x = 0, y = 0, w = 660, h = 120},
				{id = "judge-bd", src = "judge_bd_src", x = 0, y = 0, w = 660, h = 120},
				{id = "judge-pr", src = "judge_pr_src", x = 0, y = 0, w = 660, h = 120},
				{id = "judge-ms", src = "judge_ms_src", x = 0, y = 0, w = 660, h = 120}
			})
			table.insert(skin.value, {id = "judgenum", src = "judgenum_src", x = 0, y = 0, w = 540, h = 100, divx = 10, digit = 6, ref = 105, align = 2})
			local id = {"judge-pg", "judge-gr", "judge-gd", "judge-bd", "judge-pr", "judge-ms"}
			local offsets = {JUDGE_PG_TRANSPARENCY, JUDGE_GR_TRANSPARENCY, JUDGE_GD_TRANSPARENCY, JUDGE_BD_TRANSPARENCY, JUDGE_PR_TRANSPARENCY, JUDGE_MS_TRANSPARENCY}
			local judgenum_y
			if isJudgeTypeC() then
				judgenum_y = 140
			else
				judgenum_y = -440
			end
			for i in ipairs(id) do
				_images[i] = {id = id[i], filter = 1, loop = -1, timer = 46, offsets = {4, JUDGE_POS, offsets[i]}, dst = {
					{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-330), y = GEOMETRY.JUDGE_Y, w = 660, h = 120, a = 255, acc = 2},
					{time = 2000}
				}}
				_numbers[i] = {id = "judgenum", loop = -1, timer = 46, offsets = {4, JUDGE_NUM_POS, JUDGE_NUM_TRANSPARENCY}, dst = {
					{time = 0, x = 330, y = judgenum_y, w = 54, h = 100, a = 255, acc = 2},
					{time = 2000}
				}}
			end
			_shift = false
		end
	end

	skin.judge = {{
			id = "judge",
			index = 0,
			images = _images,
			numbers = _numbers,
			shift = _shift
		}}
	_images, _numbers, _shift = nil, nil, nil

	skin.judgegraph = {{id = "notes-graph", noGap = 0, orderReverse = 1, type = 1, backTexOff = 1}}
	skin.bpmgraph = {{id = "bpm-graph"}}
	skin.bga = {id = "bga"}
	skin.destination = {
		{id = "bg", offset = BG_TRANSPARENCY, stretch = 1, dst = {
			{x = 0, y = 0, w = 1920, h = 1080, a = 255}
		}},
		-- BGA related
		{id = -110, dst = {
			{x = GEOMETRY.INFO_POS + GEOMETRY.BGA_X, y = GEOMETRY.BGA_Y, w = GEOMETRY.BGA_W, h = GEOMETRY.BGA_H}
		}},
		{id = "bga", offset = BGA_TRANSPARENCY, stretch = 1, dst = {
			{x = GEOMETRY.INFO_POS + GEOMETRY.BGA_X, y = GEOMETRY.BGA_Y, w = GEOMETRY.BGA_W, h = GEOMETRY.BGA_H, a = 255}
		}},
		{id = -101, timer = 41, offset = BGA_TRANSPARENCY, op = {80, 195}, filter = 1, stretch = 1, dst = {
			{x = GEOMETRY.INFO_POS + GEOMETRY.BGA_X, y = GEOMETRY.BGA_Y, w = GEOMETRY.BGA_W, h = GEOMETRY.BGA_H, a = 255}
		}},
		{id = "alt-bga-1", offset = BGA_TRANSPARENCY, stretch = 1, draw = function()
			if main_state.option(40) or main_state.option(170) then
				return true
			end
		end, timer = 41, loop = 400, dst = {
			{time = 0, x = GEOMETRY.INFO_POS + GEOMETRY.BGA_X, y = GEOMETRY.BGA_Y, w = GEOMETRY.BGA_W, h = GEOMETRY.BGA_H, a = 0},
			{time = 400, a = 255}
		}},
		{id = "alt-bga-2", offset = BGA_TRANSPARENCY, stretch = 1, draw = function()
			if main_state.option(40) or main_state.option(170) then
				return true
			end
		end, timer = 41, loop = 400, dst = {
			{time = 0, x = GEOMETRY.INFO_POS + GEOMETRY.BGA_X, y = GEOMETRY.BGA_Y, w = GEOMETRY.BGA_W, h = GEOMETRY.BGA_H, angle = 180, a = 0},
			{time = 400, angle = 360, a = 255},
			{time = 4400, angle = 0}
		}}
	}

-- ========================================================================================================================================================	

-- # song infomation area

	do
		-- table colors
		local table_color = {}
		local lua_path = skin_config.get_path("customize/TABLE_COLOR.lua")
		local status, result = pcall(function()
			return dofile(lua_path).load()
		end)
		if status and result and type(result) == "table" then
			table_color = result
		else
			table_color.r = 255
			table_color.g = 191
			table_color.b = 128
		end

		-- table, title, artist
		if isScratchRight() then
			append_all(skin.destination, {
				{id = "table", 						filter = 1, dst = 	{{x = GEOMETRY.INFO_POS + 8, y = 1044, w = 600, h = 31, r = table_color.r, g = table_color.g, b = table_color.b}}},
				{id = "inplay-title", 	timer = 41, filter = 1, dst = 	{{x = GEOMETRY.INFO_POS + 8, y = 990, w = 600, h = 42}}},
				{id = "inplay-artist", 	timer = 41, filter = 1, dst = 	{{x = GEOMETRY.INFO_POS + 8, y = 956, w = 600, h = 26}}}
			})
		else
			append_all(skin.destination, {
				{id = "table", 						filter = 1, dst = 	{{x = GEOMETRY.INFO_POS + 608, y = 1044, w = 600, h = 31, r = table_color.r, g = table_color.g, b = table_color.b}}},
				{id = "inplay-title", 	timer = 41, filter = 1, dst = 	{{x = GEOMETRY.INFO_POS + 608, y = 990, w = 600, h = 42}}},
				{id = "inplay-artist", 	timer = 41, filter = 1, dst = 	{{x = GEOMETRY.INFO_POS + 608, y = 956, w = 600, h = 26}}}
			})
		end
	end

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

	-- gauge type
	do
		local id = {"ga-aeasy-tx", "ga-easy-tx", "ga-nor-tx", "ga-hard-tx", "ga-exh-tx", "ga-haz-tx", "ga-gra", "ga-egra", "ga-ehgra"}
		for i in ipairs(id) do
			table.insert(skin.image,
				{id = id[i], src = "info_system_src", x = 838, y = 19 * (i - 1), w = 128, h = 19}
			)
			table.insert(skin.imageset,
				{id = "gauge-op-tx", value = function()
					return main_state.gauge_type()
				end, images = { id[1], id[2], id[3], id[4], id[5], id[6], id[7], id[8], id[9] }
			})
		end
	end
	table.insert(skin.destination, {id = "gauge-op-tx", dst = {{x = GEOMETRY.INFO_POS + 244, y = 184, w = 128, h = 19}}})

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
	table.insert(skin.destination, {id = "lane-op-tx", dst = {{x = GEOMETRY.INFO_POS + 407, y = 184, w = 146, h = 19}}})

	-- Hi-Speed type
	if isHiSpeedRelative() then
		table.insert(skin.image, {id = "relative-dot", src = "info_system_src", x = 692, y = 481, w = 20, h = 21})
		append_all(skin.value, {
			{id = "relative-num", src = "info_system_src", x = 617, y = 66, w = 200, h = 21, divx = 10, digit = 4, align = 0, value = function()
				return getHiSpeed() * 0.6
			end},
			{id = "relative-adot-num", src = "info_system_src", x = 617, y = 66, w = 220, h = 21, divx = 11, digit = 2, align = 0, value = function()
				return math.floor(getHiSpeed()  * 60 + 0.5)
			end}
		})
		append_all(skin.destination, {
			{id = "relative-num", dst = {{x = GEOMETRY.INFO_POS + 56, y = 182, w = 20, h = 21}}},
			{id = "relative-dot", dst = {{x = GEOMETRY.INFO_POS + 136, y = 182, w = 20, h = 21}}},
			{id = "relative-adot-num", dst = {{x = GEOMETRY.INFO_POS + 156, y = 182, w = 20, h = 21}}},
		})
	else
		table.insert(skin.image, {id = "absolute-dot", src = "info_system_src", x = 713, y = 481, w = 20, h = 21})
		append_all(skin.value, {
			{id = "absolute-num", src = "info_system_src", x = 617, y = 88, w = 200, h = 21, divx = 10, digit = 4, align = 0, value = function()
				return getHiSpeed()
			end},
			{id = "absolute-adot-num", src = "info_system_src", x = 617, y = 88, w = 220, h = 21, divx = 11, digit = 2, align = 0, value = function()
					return math.floor(getHiSpeed() * 100 + 0.5)
			end}
		})
		append_all(skin.destination, {
			{id = "absolute-num", dst = {{x = GEOMETRY.INFO_POS + 56, y = 182, w = 20, h = 21}}},
			{id = "absolute-dot", dst = {{x = GEOMETRY.INFO_POS + 136, y = 182, w = 20, h = 21}}},
			{id = "absolute-adot-num", dst = {{x = GEOMETRY.INFO_POS + 156, y = 182, w = 20, h = 21}}},
		})
	end

	-- F/S Threshold
	do
		local threshold_y
		if isFastSlowThresholdDef() then
			threshold_y = 145
		else
			threshold_y = 163
		end
		table.insert(skin.value, {id = "threshold-num", src = "info_system_src", x = 617, y = threshold_y, w = 180, h = 34, divx = 12, divy = 2, digit = 4, align = 1, value = function()
				return FS_THRESHOLD
		end})
		append_all(skin.destination, {
			{id = "zero-judgetiming", draw = function()
				return not eliminateZeroNumber(12)
			end, dst = {{x = GEOMETRY.INFO_POS + 81, y = 157, w = 30, h = 17}}},
			{id = "judgetiming-num", draw = function()
				return eliminateZeroNumber(12)
			end, dst = {{x = GEOMETRY.INFO_POS + 81, y = 157, w = 15, h = 17}}},
			{id = "threshold-num", dst = {{x = GEOMETRY.INFO_POS + 146, y = 157, w = 15, h = 17}}}
		})
	end

-- ========================================================================================================================================================

-- # score area start

	-- scores, score-rates, graphs, etc.
	append_all(skin.destination, {
		{id = "score-frame", 			timer = 41, dst = {{x = GEOMETRY.SCORE_POS,							y = 0, w = 372, h = 1080}}},
		{id = "score-rate-DnP", 		timer = 41, dst = {{x = GEOMETRY.SCORE_POS + 91,					y = 993, w = 76, h = 22}}},
		{id = "score-rate-num", 		timer = 41, dst = {{x = GEOMETRY.SCORE_POS + 28, 					y = 992, w = 20, h = 24}}},
		{id = "score-rate-adot-num", 	timer = 41, dst = {{x = GEOMETRY.SCORE_POS + 102, 					y = 992, w = 20, h = 24}}},
		{id = "score-score", 			timer = 41, dst = {{x = GEOMETRY.SCORE_POS + 244, 					y = 961, w = 20, h = 21}}},
		-- mybest
		{id = "score-diff-zero", 		timer = 41, draw = function() return main_state.float_number(113) == 0 and not eliminateZeroNumber(152) end,
													dst = {{x = GEOMETRY.SCORE_POS + 304, 					y = 935, w = 40, h = 21, r = 128, g = 128, b = 128}}},
		{id = "score-diff-best", 		timer = 41, draw = function() return main_state.float_number(113) == 0 and eliminateZeroNumber(152) end,
													dst = {{x = GEOMETRY.SCORE_POS + 224, 					y = 935, w = 20, h = 21, r = 128, g = 128, b = 128}}},
		{id = "score-diff-zero", 		timer = 41, draw = function() return main_state.float_number(113) ~= 0 and not eliminateZeroNumber(152) end,
													dst = {{x = GEOMETRY.SCORE_POS + 304, 					y = 935, w = 40, h = 21}}},
		{id = "score-diff-best", 		timer = 41, draw = function() return main_state.float_number(113) ~= 0 and eliminateZeroNumber(152) end,
													dst = {{x = GEOMETRY.SCORE_POS + 224, 					y = 935, w = 20, h = 21}}},
		-- target
		{id = "score-diff-zero", 		timer = 41, draw = function() return not eliminateZeroNumber(153) end,
													dst = {{x = GEOMETRY.SCORE_POS + 304, 					y = 909, w = 40, h = 21}}},
		{id = "score-diff-target", 		timer = 41, draw = function() return eliminateZeroNumber(153) end,
													dst = {{x = GEOMETRY.SCORE_POS + 224, 					y = 909, w = 20, h = 21}}},
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
			{id = "score-time-colon", 			dst = {{x = GEOMETRY.SCORE_POS + 251, 	y = 1054, w = 68, h = 21}}},
			{id = "score-time-hour-num", 		dst = {{x = GEOMETRY.SCORE_POS + 205, 	y = 1054, w = 20, h = 21}}},
			{id = "score-time-minute-num", 		dst = {{x = GEOMETRY.SCORE_POS + 265, 	y = 1054, w = 20, h = 21}}},
			{id = "score-time-second-num", 		dst = {{x = GEOMETRY.SCORE_POS + 325, 	y = 1054, w = 20, h = 21}}},
			{id = "fps-num", 					dst = {{x = GEOMETRY.SCORE_POS + 285, 	y = 1031, w = 20, h = 21}}}
		})
	else
		append_all(skin.destination, {
			{id = "score-time-colon", 			dst = {{x = GEOMETRY.SCORE_POS + 51, 	y = 1054, w = 68, h = 21}}},
			{id = "score-time-hour-num", 		dst = {{x = GEOMETRY.SCORE_POS + 5, 	y = 1054, w = 20, h = 21}}},
			{id = "score-time-minute-num", 		dst = {{x = GEOMETRY.SCORE_POS + 65, 	y = 1054, w = 20, h = 21}}},
			{id = "score-time-second-num",	 	dst = {{x = GEOMETRY.SCORE_POS + 125,	y = 1054, w = 20, h = 21}}},
			{id = "fps-num", 					dst = {{x = GEOMETRY.SCORE_POS + 5, 	y = 1031, w = 20, h = 21}}}
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
				if main_state.timer(41) == TIMER_OFF then
					return true
				elseif main_state.timer(143) ~= TIMER_OFF then
					return true
				end
			end, dst = {
				{x = GEOMETRY.SCORE_POS + GEOMETRY.MASCOT_X, y = GEOMETRY.MASCOT_Y, w = GEOMETRY.MASCOT_W, h = GEOMETRY.MASCOT_H}
			}})
			table.insert(skin.destination,
			{id = "mascot", filter = 1, loop = 0, timer = 140, draw = function()
				if main_state.timer(143) == TIMER_OFF then
					return true
				end
			end, dst = {
				{time = 0, x = GEOMETRY.SCORE_POS + GEOMETRY.MASCOT_X, 	y = GEOMETRY.MASCOT_Y, w = GEOMETRY.MASCOT_W, h = GEOMETRY.MASCOT_H, acc = 2},
				{time = 500, 											y = GEOMETRY.MASCOT_Y + 10},
				{time = 1000, 											y = GEOMETRY.MASCOT_Y}
			}})
	end

	-- notes graph
	table.insert(skin.destination,{id = "notes-graph", dst = {{x = GEOMETRY.SCORE_POS + 10, y = 0, w = 352, h = 100}}})
	-- BPM graph
	table.insert(skin.destination,{id = "bpm-graph", dst = {{x = GEOMETRY.SCORE_POS + 10, y = 0, w = 352, h = 100}}})

-- ========================================================================================================================================================

-- # play area start

	-- lane background
	append_all(skin.destination, {
		{id = -110, loop = -1, dst = {
			{timer = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = 0, w = GEOMETRY.LANE_W, h = 0, a = 255, acc = 2},
			{timer = 600, h = GEOMETRY.LANE_H}
		}},
		-- effect
		{id = -111, offsets = {3, JUDGELINE_POS}, loop = 1400, dst = {
			{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = GEOMETRY.LANE_Y, w = GEOMETRY.LANE_W, h = 2160, a = 0, acc = 2},
			{time = 600, a = 0},
			{time = 650, a = 255},
			{time = 1300, a = 0}
		}}
	})

	-- judge line
	table.insert(skin.destination, {id = "judgeline", offsets = {3, JUDGELINE_POS, JUDGELINE_HEIGHT}, dst = {
		{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = GEOMETRY.LANE_Y, w = GEOMETRY.LANE_W, h = GEOMETRY.LANE_LINE}
	}})

	-- gauge function
	local function processGauge()
		if isScratchRight() then
			append_all(skin.destination, {
				{id = -110, offset = GAUGE_POS_SIZE, loop = 250, dst = {
					{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + 752 + 25, y = 0, w = -752, h = 0, a = 255, acc = 2},
					{time = 200},
					{time = 250, h = GEOMETRY.LANE_LINE}
				}},
				{id = "gauge", offsets = {GAUGE_POS_SIZE, GAUGE_TRANSPARENCY}, loop = 250, dst = {
					{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + 752 + 25, y = 0, w = -752, h = 0, a = 255, acc = 2},
					{time = 200},
					{time = 250, h = GEOMETRY.LANE_LINE}
				}}
			})
		elseif isScratchLeft() then
			append_all(skin.destination, {
				{id = -110, offset = GAUGE_POS_SIZE, loop = 250, dst = {
					{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + 25, y = 0, w = 752, h = 0, a = 255, acc = 2},
					{time = 200},
					{time = 250, h = GEOMETRY.LANE_LINE}
				}},
				{id = "gauge", offsets = {GAUGE_POS_SIZE, GAUGE_TRANSPARENCY}, loop = 250, dst = {
					{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + 25, y = 0, w = 752, h = 0, a = 255, acc = 2},
					{time = 200},
					{time = 250, h = GEOMETRY.LANE_LINE}
				}}
			})
		end
	end
	if not isBombUnderTheGaugeOn() then processGauge() end

	-- lane frame
	if isLaneFrameOn() then
		table.insert(skin.image, {id = "lane-frame", src = "play_system_src", x = 647, y = 4, w = 15, h = GEOMETRY.LANE_H})
		append_all(skin.destination, {
			{id = "lane-frame", loop = 600, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = 0, w = -15, h = 0, acc = 2},
				{time = 600, h = GEOMETRY.LANE_H}
			}},
			{id = "lane-frame", loop = 600, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_W, y = 0, w = 15, h = 0, acc = 2},
				{time = 600, h = GEOMETRY.LANE_H}
			}}
		})
	end

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
				notesInfo.Ot_width * 5
			}
		elseif isScratchRight() and isNotesWidthCustom() then
			-- 1,2,3,4,5,S - CUSTOM
			kb_x = {
				0,
				notesInfo.Ot_width,
				notesInfo.Ot_width * 2,
				notesInfo.Ot_width * 3,
				notesInfo.Ot_width * 4,
				notesInfo.Ot_width * 5
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

	-- keybeam display fast
	if isKeybeamFast() then
		-- when a key is pressed
		do
			for i = 1, #kb_type, 1 do
				if not isInputKeyboard() and not is9key() then
					if kb_type[i] == "s" then
						table.insert(skin.destination,
						{id = "keybeam-s", offsets = {3, JUDGELINE_POS}, timer = kb_onTimer[i], loop = -1, blend = 1, dst = {
								{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + kb_x[i], y = GEOMETRY.LANE_Y, w = kb_w[i], h = kb_h, a = getKeybeamAlpha(255)},
								{time = 66},
								{time = 200, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + kb_x[i] + kb_move_x[i], w = 0, a = 0}
							}
						})
					else
						table.insert(skin.destination,
						{id = "keybeam-"..kb_type[i], offsets = {3, JUDGELINE_POS}, timer = kb_onTimer[i], blend = 1, dst = {
								{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + kb_x[i], y = GEOMETRY.LANE_Y, w = kb_w[i], h = kb_h, a = getKeybeamAlpha(255)}
							}
						})
					end
				else
					table.insert(skin.destination,
					{id = "keybeam-"..kb_type[i], offsets = {3, JUDGELINE_POS}, timer = kb_onTimer[i], blend = 1, dst = {
							{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + kb_x[i], y = GEOMETRY.LANE_Y, w = kb_w[i], h = kb_h, a = getKeybeamAlpha(255)}
						}
					})
				end
			end
		end
		-- when a key is released
		do
			for i = 1, #kb_type, 1 do
				if not isInputKeyboard() and not is9key() then
					if kb_type[i] ~= "s" then
						table.insert(skin.destination,
						{id = "keybeam-"..kb_type[i], offsets = {3, JUDGELINE_POS}, timer = kb_offTimer[i], loop = -1, blend = 1, dst = {
								{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + kb_x[i], y = GEOMETRY.LANE_Y, w = kb_w[i], h = kb_h, a = getKeybeamAlpha(255)},
								{time = 100, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + kb_x[i] + kb_move_x[i], w = 0, a = 0}
							}
						})
					end
				else
					table.insert(skin.destination,
					{id = "keybeam-"..kb_type[i], offsets = {3, JUDGELINE_POS}, timer = kb_offTimer[i], loop = -1, blend = 1, dst = {
							{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + kb_x[i], y = GEOMETRY.LANE_Y, w = kb_w[i], h = kb_h, a = getKeybeamAlpha(255)},
							{time = 100, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + kb_x[i] + kb_move_x[i], w = 0, a = 0}
						}
					})
				end
			end
		end

	-- keybeam display slow
	else
		-- when a key is pressed
		do
			for i = 1, #kb_type, 1 do
				if not isInputKeyboard() and not is9key() then
					if kb_type[i] == "s" then
						table.insert(skin.destination,
						{id = "keybeam-s", offsets = {3, JUDGELINE_POS}, timer = kb_onTimer[i], loop = -1, blend = 1, dst = {
								{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + kb_x[i], y = GEOMETRY.LANE_Y, w = kb_w[i], h = kb_h, a = 0},
								{time = 33, a = getKeybeamAlpha(255)},
								{time = 66, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + kb_x[i], y = GEOMETRY.LANE_Y, w = kb_w[i], h = math.floor(kb_h * 1.2), a = getKeybeamAlpha(200)},
								{time = 200, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + kb_x[i] + kb_move_x[i], w = 0, a = 0}
							}
						})
					else
						table.insert(skin.destination,
						{id = "keybeam-"..kb_type[i], offsets = {3, JUDGELINE_POS}, timer = kb_onTimer[i], loop = 33, blend = 1, dst = {
								{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + kb_x[i], y = GEOMETRY.LANE_Y, w = kb_w[i], h = kb_h, a = 0},
								{time = 33, a = getKeybeamAlpha(255)}
							}
						})
					end
				else
					table.insert(skin.destination,
					{id = "keybeam-"..kb_type[i], offsets = {3, JUDGELINE_POS}, timer = kb_onTimer[i], loop = 33, blend = 1, dst = {
							{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + kb_x[i], y = GEOMETRY.LANE_Y, w = kb_w[i], h = kb_h, a = 0},
							{time = 33, a = getKeybeamAlpha(255)}
						}
					})
				end
			end
		end
		-- when a key is released
		do
			for i = 1, #kb_type, 1 do
				if not isInputKeyboard() and not is9key() then
					if kb_type[i] ~= "s" then
						table.insert(skin.destination,
						{id = "keybeam-"..kb_type[i], offsets = {3, JUDGELINE_POS}, timer = kb_offTimer[i], loop = -1, blend = 1, dst = {
								{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + kb_x[i], y = GEOMETRY.LANE_Y, w = kb_w[i], h = math.floor(kb_h * 1.2), a = getKeybeamAlpha(200)},
								{time = 200, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + kb_x[i] + kb_move_x[i], w = 0, a = 0}
							}
						})
					end
				else
					table.insert(skin.destination,
					{id = "keybeam-"..kb_type[i], offsets = {3, JUDGELINE_POS}, timer = kb_offTimer[i], loop = -1, blend = 1, dst = {
							{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + kb_x[i], y = GEOMETRY.LANE_Y, w = kb_w[i], h = math.floor(kb_h * 1.2), a = getKeybeamAlpha(200)},
							{time = 200, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + kb_x[i] + kb_move_x[i], w = 0, a = 0}
						}
					})
				end
			end
		end
	end

	-- notes
	table.insert(skin.destination,{id = "notes", offset = 30})

	-- lanecover
	table.insert(skin.destination,
		{id = "lanecover", loop = 1700, dst = {
			{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = 2160, w = GEOMETRY.LANE_W, h = GEOMETRY.LANE_H, acc = 2},
			{time = 1300},
			{time = 1700, y = 1080}
		}})

	-- adjustedcover
	append_all(skin.destination, {
		{id = "adjustedcover", offset = 4, loop = 1600, draw = function()
			if main_state.timer(41) == TIMER_OFF then
				return true
			end
		end, dst = {
			{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = 2160, w = GEOMETRY.LANE_W, h = GEOMETRY.LANE_H, acc = 2},
			{time = 1200},
			{time = 1600, y = 1080}
		}},
		{id = "adjustedcover", offset = 4, timer = 41,  dst = {
			{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = 1080, w = GEOMETRY.LANE_W, h = GEOMETRY.LANE_H, acc = 2}
		}}
	})

	-- values for lanecover and lift
	do
		local id_lanecover = {"lanecover-value", "lanecover-green", "lanecover-duration"}
		local id_lift = {"lift-value", "lanecover-green", "lanecover-duration"}
		local dst_x = {68, 342, 616}
		local dst_w = {20, 20, 20}
		local dst_h = {21, 21, 21}
		for i = 1, 3, 1 do
			append_all(skin.destination, {
				{id = id_lanecover[i], offset = 4, op = {270}, dst = {{x = dst_x[i] + GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = 1049, w = dst_w[i], h = dst_h[i]}}},
				{id = id_lift[i], offset = 3, op = {270}, dst = {{x = dst_x[i] + GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = GEOMETRY.LANE_Y + 40, w = dst_w[i], h = dst_h[i]}}
			}})
		end
	end
	append_all(skin.destination, {
		{id = -111, offset = 4, op = {270, 271}, loop = 0, dst = {
			{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = 1080, w = GEOMETRY.LANE_W, h = 24, a = 255, acc = 2},
			{time = 500, a = 64},
			{time = 1000, a = 255}
		}},
		{id = -111, offset = 3, op = {270, 272}, loop = 0, dst = {
			{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = GEOMETRY.LANE_Y, w = GEOMETRY.LANE_W, h = 24, a = 255, acc = 2},
			{time = 500, a = 64},
			{time = 1000, a = 255}
		}}
	})

	-- judge
	table.insert(skin.destination,{id = "judge"})

	-- fast/slow
	if not isFastSlowMSCenter() and not isFastSlowMSRnL() then
		table.insert(skin.source, {id = "fs_char_src", 	path = "parts/fast_slow/character/*.png"})
		append_all(skin.image, {
			{id = "fast", src = "fs_char_src", x = 0, y = 0, w = 148, h = 35},
			{id = "slow", src = "fs_char_src", x = 0, y = 36, w = 148, h = 35}
		})
		if isFastSlowThresholdDef() and isFastSlowCenter() then
			append_all(skin.destination, {
				{id = "fast", offsets = {3, JUDGELINE_POS, FAST_SLOW_POS, FAST_SLOW_TRANSPARENCY}, loop = -1, timer = 46, draw = function()
					return main_state.option(1242) and eliminateZeroNumber(525)
				end, dst = {
					{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-74), y = GEOMETRY.TRACER_Y, w = 148, h = 35, a = 255, acc = 2},
					{time = 500}
				}},
				{id = "slow", offsets = {3, JUDGELINE_POS, FAST_SLOW_POS, FAST_SLOW_TRANSPARENCY}, loop = -1, timer = 46, draw = function()
					return main_state.option(1243) and eliminateZeroNumber(525)
				end, dst = {
					{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-74), y = GEOMETRY.TRACER_Y, w = 148, h = 35, a = 255, acc = 2},
					{time = 500}
				}}
			})
		elseif isFastSlowThresholdDef() and isFastSlowRnL() then
			append_all(skin.destination, {
				{id = "fast", offsets = {3, JUDGELINE_POS, FAST_SLOW_POS, FAST_SLOW_TRANSPARENCY}, loop = -1, timer = 46, draw = function()
					return main_state.option(1242) and eliminateZeroNumber(525)
				end, dst = {
					{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-GEOMETRY.LANE_DISTANCE), y = GEOMETRY.TRACER_Y, w = 148, h = 35, a = 255, acc = 2},
					{time = 500}
				}},
				{id = "slow", offsets = {3, JUDGELINE_POS, FAST_SLOW_POS, FAST_SLOW_TRANSPARENCY}, loop = -1, timer = 46, draw = function()
					return main_state.option(1243) and eliminateZeroNumber(525)
				end, dst = {
					{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + GEOMETRY.LANE_DISTANCE + (-148), y = GEOMETRY.TRACER_Y, w = 148, h = 35, a = 255, acc = 2},
					{time = 500}
				}}
			})
		elseif not isFastSlowThresholdDef() and isFastSlowCenter() then
			append_all(skin.destination, {
				{id = "fast", offsets = {3, JUDGELINE_POS, FAST_SLOW_POS, FAST_SLOW_TRANSPARENCY}, loop = -1, timer = 46, draw = function()
					return predicateFast() and eliminateZeroNumber(525)
				end, dst = {
					{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-74), y = GEOMETRY.TRACER_Y, w = 148, h = 35, a = 255, acc = 2},
					{time = 500}
				}},
				{id = "slow", offsets = {3, JUDGELINE_POS, FAST_SLOW_POS, FAST_SLOW_TRANSPARENCY}, loop = -1, timer = 46, draw = function()
					return predicateSlow() and eliminateZeroNumber(525)
				end, dst = {
					{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-74), y = GEOMETRY.TRACER_Y, w = 148, h = 35, a = 255, acc = 2},
					{time = 500}
				}}
			})
		elseif not isFastSlowThresholdDef() and isFastSlowRnL() then
			append_all(skin.destination, {
				{id = "fast", offsets = {3, JUDGELINE_POS, FAST_SLOW_POS, FAST_SLOW_TRANSPARENCY}, loop = -1, timer = 46, draw = function()
					return predicateFast() and eliminateZeroNumber(525)
				end, dst = {
					{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-GEOMETRY.LANE_DISTANCE), y = GEOMETRY.TRACER_Y, w = 148, h = 35, a = 255, acc = 2},
					{time = 500}
				}},
				{id = "slow", offsets = {3, JUDGELINE_POS, FAST_SLOW_POS, FAST_SLOW_TRANSPARENCY}, loop = -1, timer = 46, draw = function()
					return predicateSlow() and eliminateZeroNumber(525)
				end, dst = {
					{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + GEOMETRY.LANE_DISTANCE + (-148), y = GEOMETRY.TRACER_Y, w = 148, h = 35, a = 255, acc = 2},
					{time = 500}
				}}
			})
		end
	else
		table.insert(skin.source, {id = "fsms_num_src", path = "parts/fast_slow/number/*.png"})
		if isFastSlowMSCenter() then
			table.insert(skin.value, {id = "fsms-num", src = "fsms_num_src", x = 0, y = 0, w = 408, h = 70, divx = 12, divy = 2, digit = 4, ref = 525, align = 2})
			if isFastSlowThresholdDef() then
				table.insert(skin.destination,	{
					id = "fsms-num", offsets = {3, JUDGELINE_POS, FAST_SLOW_POS, FAST_SLOW_TRANSPARENCY}, loop = -1, timer = 46, draw = function()
						return not main_state.option(241) and eliminateZeroNumber(525)
					end, dst = {
						{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-85), y = GEOMETRY.TRACER_Y, w = 34, h = 35, a = 255, acc = 2},
						{time = 500}
					}
				})
			elseif not isFastSlowThresholdDef() then
				table.insert(skin.destination,	{
					id = "fsms-num", offsets = {3, JUDGELINE_POS, FAST_SLOW_POS, FAST_SLOW_TRANSPARENCY}, loop = -1, timer = 46, draw = function()
						if eliminateZeroNumber(525) then
							return predicateFast() or predicateSlow()
						end
					end, dst = {
						{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-85), y = GEOMETRY.TRACER_Y, w = 34, h = 35, a = 255, acc = 2},
						{time = 500}
					}
				})
			end
		elseif isFastSlowMSRnL() then
			append_all(skin.value, {
				{id = "fast-ms-num", src = "fsms_num_src", x = 0, y = 71, w = 408, h = 70, divx = 12, divy = 2, digit = 4, ref = 525, align = 1},
				{id = "slow-ms-num", src = "fsms_num_src", x = 0, y = 142, w = 408, h = 70, divx = 12, divy = 2, digit = 4, ref = 525, align = 0}
			})
			if isFastSlowThresholdDef() then
				append_all(skin.destination, {
					{id = "fast-ms-num", offsets = {3, JUDGELINE_POS, FAST_SLOW_TRANSPARENCY}, loop = -1, timer = 46, draw = function()
						return not main_state.option(241) and eliminateZeroNumber(525)
					end, dst = {
						{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-GEOMETRY.LANE_DISTANCE), y = GEOMETRY.TRACER_Y, w = 34, h = 35, a = 255, acc = 2},
						{time = 500}
					}},
					{id = "slow-ms-num", offsets = {3, JUDGELINE_POS, FAST_SLOW_TRANSPARENCY}, loop = -1, timer = 46, draw = function()
						return not main_state.option(241) and eliminateZeroNumber(525)
					end, dst = {
						{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER  + GEOMETRY.LANE_DISTANCE + (-136), y = GEOMETRY.TRACER_Y, w = 34, h = 35, a = 255, acc = 2},
						{time = 500}
					}}
				})
			elseif not isFastSlowThresholdDef() then
				append_all(skin.destination, {
					{id = "fast-ms-num", offsets = {3, JUDGELINE_POS, FAST_SLOW_POS, FAST_SLOW_TRANSPARENCY}, loop = -1, timer = 46, draw = function()
						return predicateFast() and eliminateZeroNumber(525)
					end, dst = {
						{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-GEOMETRY.LANE_DISTANCE), y = GEOMETRY.TRACER_Y, w = 34, h = 35, a = 255, acc = 2},
						{time = 500}
					}},
					{id = "slow-ms-num", offsets = {3, JUDGELINE_POS, FAST_SLOW_POS, FAST_SLOW_TRANSPARENCY}, loop = -1, timer = 46, draw = function()
						return predicateSlow() and eliminateZeroNumber(525)
					end, dst = {
						{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + GEOMETRY.LANE_DISTANCE + (-136), y = GEOMETRY.TRACER_Y, w = 34, h = 35, a = 255, acc = 2},
						{time = 500}
					}}
				})
			end
		end
	end

	-- score difference from target
	if not isTarget2On() and isTargetBest() then
		do
			local _number
			table.insert(skin.source, {id = "mybest_num_src", path = "parts/scorenum/mybest/*.png"})
			table.insert(skin.image, {id = "zero-mybest", src = "mybest_num_src", x = 0, y = 70, w = 68, h = 35})
			table.insert(skin.value, {id = "diff-mybest", src = "mybest_num_src", x = 0, y = 0, w = 408, h = 70, divx = 12, divy = 2, digit = 5, align = 2, value = function()
				if main_state.float_number(113) ~= 0 then
					_number = 152	-- NUMBER_DIFF_HIGHSCORE
					return main_state.number(_number)
				else
					_number = 153	-- NUMBER_DIFF_TARGETSCORE
					return main_state.number(_number)
				end
			end})
			append_all(skin.destination, {
				{id = "zero-mybest", offsets = {3, JUDGELINE_POS, TARGET_POS, TARGET_TRANSPARENCY}, timer = 41, draw = function()
					return not eliminateZeroNumber(_number)
				end, dst = {
					{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-34), y = GEOMETRY.TRACER_Y, w = 68, h = 35, a = 255, acc = 2}
				}},
				{id = "diff-mybest", offsets = {3, JUDGELINE_POS, TARGET_POS, TARGET_TRANSPARENCY}, timer = 41, draw = function()
					return eliminateZeroNumber(_number)
				end, dst = {
					{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-85), y = GEOMETRY.TRACER_Y, w = 34, h = 35, a = 255, acc = 2}
				}}
			})
		end
	elseif not isTarget2On() and isTargetRank() then
		table.insert(skin.source, {id = "target_num_src", path = "parts/scorenum/target/*.png"})
		table.insert(skin.image, {id = "zero-target", src = "target_num_src", x = 0, y = 70, w = 68, h = 35})
		table.insert(skin.value, {id = "diff-target", src = "target_num_src", x = 0, y = 0, w = 408, h = 70, divx = 12, divy = 2, digit = 5, ref = 153, align = 2})
		append_all(skin.destination, {
			{id = "zero-target", offsets = {3, JUDGELINE_POS, TARGET_POS, TARGET_TRANSPARENCY}, timer = 41, draw = function()
				return not eliminateZeroNumber(153)
			end, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-34), y = GEOMETRY.TRACER_Y, w = 68, h = 35, a = 255, acc = 2}
			}},
			{id = "diff-target", offsets = {3, JUDGELINE_POS, TARGET_POS, TARGET_TRANSPARENCY}, timer = 41, draw = function()
				return eliminateZeroNumber(153)
			end, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-85), y = GEOMETRY.TRACER_Y, w = 34, h = 35, a = 255, acc = 2}
			}}
		})
	elseif isTarget2On() then
		append_all(skin.source, {
			{id = "target_num_src", path = "parts/scorenum/target/*.png"},
			{id = "mybest_num_src", path = "parts/scorenum/mybest/*.png"}
		})
		append_all(skin.image, {
			{id = "zero-target", src = "target_num_src", x = 0, y = 70, w = 68, h = 35},
			{id = "zero-mybest", src = "mybest_num_src", x = 0, y = 70, w = 68, h = 35}
		})
		if isTargetBest() then
			append_all(skin.value, {
				{id = "diff-target", src = "target_num_src", x = 0, y = 0, w = 408, h = 70, divx = 12, divy = 2, digit = 5, ref = 153, align = 1},
				{id = "diff-mybest", src = "mybest_num_src", x = 0, y = 0, w = 408, h = 70, divx = 12, divy = 2, digit = 5, ref = 152, align = 0}
			})
			append_all(skin.destination, {
				{id = "zero-target", offsets = {3, JUDGELINE_POS, TARGET2_POS, TARGET2_TRANSPARENCY}, timer = 41, draw = function()
					return not eliminateZeroNumber(153)
				end, dst = {
					{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-GEOMETRY.LANE_DISTANCE), y = GEOMETRY.TRACER_Y, w = 68, h = 35, a = 255, acc = 2}
				}},
				{id = "diff-target", offsets = {3, JUDGELINE_POS, TARGET2_POS, TARGET2_TRANSPARENCY}, timer = 41, draw = function()
					return eliminateZeroNumber(153)
				end, dst = {
					{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-GEOMETRY.LANE_DISTANCE), y = GEOMETRY.TRACER_Y, w = 34, h = 35, a = 255, acc = 2}
				}},
				{id = "zero-mybest", offsets = {3, JUDGELINE_POS, TARGET_POS, TARGET2_TRANSPARENCY}, timer = 41, draw = function()
					if main_state.float_number(113) ~= 0 then
						return not eliminateZeroNumber(152)
					end
				end, dst = {
					{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + GEOMETRY.LANE_DISTANCE + (-68), y = GEOMETRY.TRACER_Y, w = 68, h = 35, a = 255, acc = 2}
				}},
				{id = "diff-mybest", offsets = {3, JUDGELINE_POS, TARGET_POS, TARGET2_TRANSPARENCY}, timer = 41, draw = function()
					if main_state.float_number(113) ~= 0 then
						return eliminateZeroNumber(152)
					end
				end, dst = {
					{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + GEOMETRY.LANE_DISTANCE + (-170), y = GEOMETRY.TRACER_Y, w = 34, h = 35, a = 255, acc = 2}
				}}
			})
		elseif isTargetRank() then
			append_all(skin.value, {
				{id = "diff-mybest", src = "mybest_num_src", x = 0, y = 0, w = 408, h = 70, divx = 12, divy = 2, digit = 5, ref = 152, align = 1},
				{id = "diff-target", src = "target_num_src", x = 0, y = 0, w = 408, h = 70, divx = 12, divy = 2, digit = 5, ref = 153, align = 0}
			})
			append_all(skin.destination, {
				{id = "zero-mybest", offsets = {3, JUDGELINE_POS, TARGET2_POS, TARGET2_TRANSPARENCY}, timer = 41, draw = function()
					if main_state.float_number(113) ~= 0 then
						return not eliminateZeroNumber(152)
					end
				end, dst = {
					{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-GEOMETRY.LANE_DISTANCE), y = GEOMETRY.TRACER_Y, w = 68, h = 35, a = 255, acc = 2}
				}},
				{id = "diff-mybest", offsets = {3, JUDGELINE_POS, TARGET2_POS, TARGET2_TRANSPARENCY}, timer = 41, draw = function()
					if main_state.float_number(113) ~= 0 then
						return eliminateZeroNumber(152)
					end
				end, dst = {
					{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-GEOMETRY.LANE_DISTANCE), y = GEOMETRY.TRACER_Y, w = 34, h = 35, a = 255, acc = 2}
				}},
				{id = "zero-target", offsets = {3, JUDGELINE_POS, TARGET_POS, TARGET_TRANSPARENCY}, timer = 41, draw = function()
					return not eliminateZeroNumber(153)
				end, dst = {
					{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + GEOMETRY.LANE_DISTANCE + (-68), y = GEOMETRY.TRACER_Y, w = 68, h = 35, a = 255, acc = 2}
				}},
				{id = "diff-target", offsets = {3, JUDGELINE_POS, TARGET_POS, TARGET_TRANSPARENCY}, timer = 41, draw = function()
					return eliminateZeroNumber(153)
				end, dst = {
					{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + GEOMETRY.LANE_DISTANCE + (-170), y = GEOMETRY.TRACER_Y, w = 34, h = 35, a = 255, acc = 2}
				}}
			})
		end
	end

	-- hiterror visualizer
	if isHitErrorVisualizerOn() then
		do
			skin.hiterrorvisualizer = {{
				id = "hiterror-visualizer",
				width = 406,
				judgeWidthMillis = 100,
				lineWidth = 6,
				colorMode = 0,
				-- hiterrorMode = 1,
				-- emaMode = 1,
				lineColor = "DDFFFFDD",
				centerColor = "0090FFFF",
				-- PGColor = "00000000",
				-- GRColor = "00000000",
				-- GDColor = "00000000",
				-- BDColor = "00000000",
				-- PRColor = "00000000",
				emaColor = "FF0000FF",
				-- alpha = 0.1,
				windowLength = 80,
				-- transparent = 0,
				drawDecay = 0
			}}

			local bg_y
			if is5key() or is7key() then
				if main_state.option(180) then
					-- veryhard
					bg_y = 178
				elseif main_state.option(181) then
					-- hard
					bg_y = 167
				elseif main_state.option(182) then
					-- normal
					bg_y = 156
				elseif main_state.option(183) then
					-- easy
					bg_y = 145
				else
					-- veryeasy
					bg_y = 134
				end
			else
				if main_state.option(180) then
					-- veryhard
					bg_y = 233
				elseif main_state.option(181) then
					-- hard
					bg_y = 222
				elseif main_state.option(182) then
					-- normal
					bg_y = 211
				elseif main_state.option(183) then
					-- easy
					bg_y = 200
				else
					-- veryeasy
					bg_y = 189
				end
			end

			table.insert(skin.image, {id = "hiterror-visualizer-bg", src = "play_system_src", x = 240, y = bg_y, w = 406, h = 10})
			append_all(skin.destination, {
				{id = "hiterror-visualizer-bg", offsets = {3, JUDGELINE_POS, HITERRORVISUALIZER_POS, HITERRORVISUALIZER_BG_TRANSPARENCY}, op = {32}, timer = 41, dst = {
					{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-203), y = GEOMETRY.DETAIL_Y - 5, w = 406, h = 10, a = 255, acc = 2}
				}},
				{id = "hiterror-visualizer", offsets = {3, JUDGELINE_POS, HITERRORVISUALIZER_POS, HITERRORVISUALIZER_TRANSPARENCY}, op = {32}, timer = 41, dst = {
					{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER - (203), y = GEOMETRY.DETAIL_Y - 25, w =  406, h = 50, a = 255, acc = 2}
				}},
			})
		end
	end

	-- rate display on lanes
	if isScoreRateOn() then
		if isJudgeTypeA() or isJudgeTypeB() then
			table.insert(skin.image, {id = "play-rate-dot", src = "play_system_src", x = 82, y = 1063, w = 80, h = 21})
			append_all(skin.value, {
				{id = "play-rate-num", src = "play_system_src", x = 0, y = 178, w = 200, h = 21, divx = 10, digit = 3, align = 0, value = function()
					return getDummyNumber(102)
				end},
				{id = "play-rate-adot-num", src = "play_system_src", x = 0, y = 178, w = 220, h = 21, divx = 11, digit = 2, align = 0, value = function()
					return getDummyNumber(103)
				end}
			})
			append_all(skin.destination, {
				{id = "play-rate-num", offsets = {3, JUDGELINE_POS, SCORE_RATE_POS, SCORE_RATE_TRANSPARENCY}, timer = 41, dst = {
					{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-70), y = GEOMETRY.TRACER_Y - 155, w = 20, h = 21, a = 255, acc = 2}
				}},
				{id = "play-rate-dot", offsets = {3, JUDGELINE_POS, SCORE_RATE_POS, SCORE_RATE_TRANSPARENCY}, timer = 41, dst = {
					{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-10), y = GEOMETRY.TRACER_Y - 155, w = 80, h = 21, a = 255, acc = 2}
				}},
				{id = "play-rate-adot-num", offsets = {3, JUDGELINE_POS, SCORE_RATE_POS, SCORE_RATE_TRANSPARENCY}, timer = 41, dst = {
					{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + 10, y = GEOMETRY.TRACER_Y - 155, w = 20, h = 21, a = 255, acc = 2}
				}}
			})
		else
			local playrate_y
			if isJudgeTypeC() then
				playrate_y = - 350
			else
				playrate_y = 250
			end
			table.insert(skin.image, {id = "play-rate-dot", src = "judgenum_src", x = 309, y = 101, w = 16, h = 50})
			append_all(skin.value, {
				{id = "play-rate-num", src = "judgenum_src", x = 0, y = 101, w = 280, h = 50, divx = 10, digit = 3, align = 0, value = function()
					return getDummyNumber(102)
				end},
				{id = "play-rate-adot-num", src = "judgenum_src", x = 0, y = 101, w = 308, h = 50, divx = 11, digit = 2, align = 0, value = function()
					return getDummyNumber(103)
				end}
			})
			append_all(skin.destination, {
				{id = "play-rate-num", offsets = {3, JUDGELINE_POS, SCORE_RATE_POS, SCORE_RATE_TRANSPARENCY}, timer = 41, dst = {
					{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-8) + (-84), y = GEOMETRY.TRACER_Y + playrate_y, w = 28, h = 50, a = 255, acc = 2}
				}},
				{id = "play-rate-dot", offsets = {3, JUDGELINE_POS, SCORE_RATE_POS, SCORE_RATE_TRANSPARENCY}, timer = 41, dst = {
					{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-8), y = GEOMETRY.TRACER_Y + playrate_y, w = 16, h = 50, a = 255, acc = 2}
				}},
				{id = "play-rate-adot-num", offsets = {3, JUDGELINE_POS, SCORE_RATE_POS, SCORE_RATE_TRANSPARENCY}, timer = 41, dst = {
					{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + 8, y = GEOMETRY.TRACER_Y + playrate_y, w = 28, h = 50, a = 255, acc = 2}
				}}
			})
		end
	end

	-- fast/slow counter on playground
	if isFastSlowCounterOn() then
		append_all(skin.image, {
			{id = "fast-opg-frame", src = "play_system_src", x = 0, y = 1063, w = 40, h = 21},
			{id = "slow-opg-frame", src = "play_system_src", x = 41, y = 1063, w = 40, h = 21}
		})
		append_all(skin.value, {
			{id = "fast-opg-num", src = "play_system_src", x = 0, y = 134, w = 200, h = 21, divx = 10, digit = 4, ref = 423, align = 1},
			{id = "slow-opg-num", src = "play_system_src", x = 0, y = 156, w = 200, h = 21, divx = 10, digit = 4, ref = 424, align = 0}
		})
		append_all(skin.destination, {
			-- fast
			{id = "fast-opg-frame", offsets = {3, JUDGELINE_POS, FAST_SLOW_COUNT_POS, FAST_SLOW_COUNT_TRANSPARENCY}, op = {32}, timer = 41, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-GEOMETRY.LANE_DISTANCE), y = GEOMETRY.DETAIL_Y, w = 40, h = 21, a = 255, acc = 2}
			}},
			{id = "fast-opg-num", offsets = {3, JUDGELINE_POS, FAST_SLOW_COUNT_POS, FAST_SLOW_COUNT_TRANSPARENCY}, op = {32}, timer = 41, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-GEOMETRY.LANE_DISTANCE), y = GEOMETRY.DETAIL_Y + (-26), w = 20, h = 21, a = 255, acc = 2}
			}},
			-- slow
			{id = "slow-opg-frame", offsets = {3, JUDGELINE_POS, FAST_SLOW_COUNT_POS, FAST_SLOW_COUNT_TRANSPARENCY}, op = {32}, timer = 41, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + GEOMETRY.LANE_DISTANCE + (-40), y = GEOMETRY.DETAIL_Y, w = 40, h = 21, a = 255, acc = 2}
			}},
			{id = "slow-opg-num", offsets = {3, JUDGELINE_POS, FAST_SLOW_COUNT_POS, FAST_SLOW_COUNT_TRANSPARENCY}, op = {32}, timer = 41, dst = {
				{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + GEOMETRY.LANE_DISTANCE + (-80), y = GEOMETRY.DETAIL_Y + (-26), w = 20, h = 21, a = 255, acc = 2}
			}}
		})
	end

	-- bomb
	local b_init = 			{}
	local bombTimer = 		{}
	local lnBombTimer = 	{}
	local bombPosX = 		{}
	local bombProperty = 	getBombProperty()
	local bombCycle = 		math.floor(bombProperty.BOMB_CYCLE_MULUTIPLIER * 251)
	local lnbombCycle = 	math.floor(bombProperty.LNBOMB_CYCLE_MULUTIPLIER * 160)
	local bombWidth = 		math.floor(bombProperty.BOMB_WIDTH_MULUTIPLIER * 600)
	local bombHeight = 		bombProperty.BOMB_HEIGHT_MULUTIPLIER * 450
	local bomb_y =			GEOMETRY.LANE_Y - math.floor((bombHeight - GEOMETRY.LANE_LINE) / 2)

	if is7key() then
		b_init = 		{"1", "2", "3", "4", "5", "6", "7", "s"}
		bombTimer = 	{51, 52, 53, 54, 55, 56, 57, 50}
		lnBombTimer = 	{71, 72, 73, 74, 75, 76, 77, 70}

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
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 5
			}
		elseif isScratchRight() and isNotesWidthCustom() then
			-- 1,2,3,4,5,S - CUSTOM
			bombPosX = {
				notesInfo.Ot_width / 2,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 2,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 3,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 4,
				notesInfo.Ot_width / 2 + notesInfo.Ot_width * 5
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

	-- cutting out bomb
	table.insert(skin.image, {
		id = "bomb", src = "bomb_src", x = 0, y = 0, w = -1, h = -1
	})
	for i = 1, #b_init, 1 do
		table.insert(skin.image, {
			id = "bomb-"..b_init[i], src = "bomb_src", x = 0, y = 0, w = 9600, h = 450, divx = 16, divy = 1, cycle = bombCycle, timer = bombTimer[i]
		})
	end

	-- cutting out LNbomb
	table.insert(skin.image, {id = "lnbomb", src = "bomb_src", x = 0, y = 0, w = -1, h = -1})
	for i = 1, #b_init, 1 do
		table.insert(skin.image, {
			id = "lnbomb-"..b_init[i], src = "bomb_src", x = 0, y = 0, w = 4800, h = 450, divx = 8, divy = 1, cycle = lnbombCycle, timer = lnBombTimer[i]
		})
	end

	-- bomb preload
	table.insert(skin.destination, {id = "bomb", dst = {{x = 0, y = 0, w = 1, h = 1}}})
	table.insert(skin.destination, {id = "lnbomb", dst = {{x = 0, y = 0, w = 1, h = 1}}})

-- local test = main_state.offset("Bomb Alpha").a

	-- Normal explosion effect placement
	for i = 1, #b_init, 1 do
		table.insert(skin.destination, {
			id = "bomb-"..b_init[i], offsets = {3, JUDGELINE_POS, BOMB_POS, BOMB_TRANSPARENCY}, loop = -1, filter = 1, timer = bombTimer[i], blend = 2, dst = {
				{time = 0, 	x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + bombPosX[i] - bombWidth / 2,
							y = bomb_y,
							w = bombWidth,
							h = bombHeight,
							a = 255, r = bombProperty.BOMB_RED, g = bombProperty.BOMB_GREEN, b = bombProperty.BOMB_BLUE, acc = 2},
				{time = bombCycle - 1}
			}
		})
	end

	-- LN explosion effect placement
	for i = 1, #b_init, 1 do
		table.insert(skin.destination,	{
			id = "lnbomb-"..b_init[i], offsets = {3, JUDGELINE_POS, BOMB_POS, BOMB_TRANSPARENCY}, filter = 1, timer = lnBombTimer[i], blend = 2, dst = {
				{time = 0, x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + bombPosX[i] - bombWidth / 2,
							y = bomb_y,
							w = bombWidth,
							h = bombHeight,
							a = 255, r = bombProperty.LNBOMB_RED, g = bombProperty.LNBOMB_GREEN, b = bombProperty.LNBOMB_BLUE, acc = 2},
				{time = lnbombCycle - 1}
			}
		})
	end

	-- gauge
	if isBombUnderTheGaugeOn() then processGauge() end

	-- song length + remain notes
	if isScratchRight() then
		append_all(skin.destination, {
			-- adjusted cover persent
			{id = "adjusted-rate-num", 				draw = function()
				if main_state.option(400) and main_state.option(177) and (main_state.event_index(55) == 2 or main_state.event_index(55) == 3) then
					return true
				end
			end, 									dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + GEOMETRY.LANE_W + 53, y = 1002, w = 15, h = 18}}},
			{id = "adjusted-rate-adot-num", 		draw = function()
				if main_state.option(400) and main_state.option(177) and (main_state.event_index(55) == 2 or main_state.event_index(55) == 3) then
					return true
				end
			end, 									dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + GEOMETRY.LANE_W + 77, y = 1002, w = 15, h = 18}}},
			{id = "adjusted-rate-dot", 				draw = function()
				if main_state.option(400) and main_state.option(177) and (main_state.event_index(55) == 2 or main_state.event_index(55) == 3) then
					return true
				end
			end, 									dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + GEOMETRY.LANE_W + 38, y = 1002, w = 69, h = 18}}},
			-- remain notes persent
			{id = "remain-rate-num", 				dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + GEOMETRY.LANE_W + 23, y = 74, w = 15, h = 18}}},
			{id = "remain-rate-adot-num", 			dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + GEOMETRY.LANE_W + 77, y = 74, w = 15, h = 18}}},
			{id = "remain-rate-dot", 				dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + GEOMETRY.LANE_W + 68, y = 74, w = 9, h = 18}}},
			-- remain notes
			{id = "remain-notes", 					dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + GEOMETRY.LANE_W + 32, y = 44, w = 15, h = 18}}},
			-- time left
			{id = "song-remain-m", 					dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + GEOMETRY.LANE_W + 38, y = 10, w = 15, h = 18}}},
			{id = "song-remain-s", 					dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + GEOMETRY.LANE_W + 77, y = 10, w = 15, h = 18}}},
			{id = "song-time-colon", 				dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + GEOMETRY.LANE_W + 68, y = 10, w = 9, h = 18}}},
			-- song length slider
			{id = "song-progress-bar", 	timer = 41, dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + GEOMETRY.LANE_W + 74, y = 330, w = 4, h = 600, a = 100}}},
			{id = "song-progress-fin", 	timer = 41, dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + GEOMETRY.LANE_W + 74, y = 930, w = 4, h = -600}}},
			{id = "song-progress", 		timer = 41, dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + GEOMETRY.LANE_W + 70, y = 930, w = 12, h = 21}}}
		})
	else
		append_all(skin.destination, {
			-- adjusted cover persent
			{id = "adjusted-rate-num", 				draw = function()
				if (main_state.option(400) or main_state.option(273)) and main_state.option(177) and (main_state.event_index(55) == 2 or main_state.event_index(55) == 3) then
					return true
				end
			end, 									dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + (-89), y = 1002, w = 15, h = 18}}},
			{id = "adjusted-rate-adot-num", 		draw = function()
				if (main_state.option(400) or main_state.option(273)) and main_state.option(177) and (main_state.event_index(55) == 2 or main_state.event_index(55) == 3) then
					return true
				end
			end, 									dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + (-65), y = 1002, w = 15, h = 18}}},
			{id = "adjusted-rate-dot", 				draw = function()
				if (main_state.option(400) or main_state.option(273)) and main_state.option(177) and (main_state.event_index(55) == 2 or main_state.event_index(55) == 3) then
					return true
				end
			end, 									dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + (-104), y = 1002, w = 69, h = 18}}},
			-- remain notes persent
			{id = "remain-rate-num", 				dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + (-104), y = 74, w = 15, h = 18}}},
			{id = "remain-rate-adot-num", 			dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + (-50), y = 74, w = 15, h = 18}}},
			{id = "remain-rate-dot", 				dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + (-59), y = 74, w = 9, h = 18}}},
			-- remain notes
			{id = "remain-notes", 					dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + (-95), y = 44, w = 15, h = 18}}},
			-- time left	
			{id = "song-remain-m", 					dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + (-89), y = 10, w = 15, h = 18}}},
			{id = "song-remain-s", 					dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + (-50), y = 10, w = 15, h = 18}}},
			{id = "song-time-colon", 				dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + (-59), y = 10, w = 9, h = 18}}},
			-- song length slider		
			{id = "song-progress-bar", 	timer = 41, dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + (-78), y = 330, w = 4, h = 600, a = 100}}},
			{id = "song-progress-fin", 	timer = 41, dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + (-78), y = 930, w = 4, h = -600}}},
			{id = "song-progress", 		timer = 41, dst = {{x = GEOMETRY.PLAY_POS + GEOMETRY.LANE_X + (-82), y = 930, w = 12, h = 21}}}
		})
	end

	append_all(skin.destination, {
		-- replay
		{id = "replay", offsets = {3, JUDGELINE_POS}, op = {84}, dst = {
			{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-129), y = GEOMETRY.LANE_Y + 45, w = 258, h = 35}
		}},
		-- auto play
		{id = "auto", offsets = {3, JUDGELINE_POS}, op = {33}, dst = {
			{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-174), y = GEOMETRY.LANE_Y + 45, w = 348, h = 35}
		}},
		-- end of note
		{id = "eon", draw = function()
			if main_state.timer(143) == TIMER_OFF and getRemainNotes() == 0 then
				return true
			end
		end, dst = {
			{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-195), y = GEOMETRY.LANE_Y + 522, w = 390, h = 35, r = 64, g = 64, b = 64}
		}},
		{id = "eon", timer = 143, dst = {
			{x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-195), y = GEOMETRY.LANE_Y + 522, w = 390, h = 35}
		}}
	})

	-- fullcombo
	append_all(skin.destination, {
		{id = "fc-effect", loop = -1, timer = 48, stretch = 3, blend = 2, dst = {
			{time = 0, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS, y = 0, w = GEOMETRY.LANE_W, h = 1080, a = 128},
			{time = 2100, y = 100, a = 0}
		}},
		{id = "fullcombo",  loop = -1, timer = 48, dst = {
			{time = 550, x = GEOMETRY.LANE_X + GEOMETRY.PLAY_POS + GEOMETRY.LANE_CENTER + (-180), y = GEOMETRY.LANE_Y + 607, w = 360, h = 36, a = 0},
			{time = 650, a = 255},
			{time = 1600},
			{time = 1800, y = GEOMETRY.LANE_Y + 577, a = 0}
		}},
	})

-- ========================================================================================================================================================	

	-- # song infomation in loading start

	do
		local loading_pos = {}
		if isScratchRight() then
			loading_pos.text = 75
			loading_pos.stagefile = 1500
			loading_pos.titleline = 30
		else
			loading_pos.text = 445
			loading_pos.stagefile = 50
			loading_pos.titleline = 400
		end
		-- background
		table.insert(skin.destination,
		{id = -110, loop = 600, op = {80}, dst = {
			{time = 0, x = 0, y = 360, w = 1920, h = 360, a = 0},
			{time = 300},
			{time = 600, a = 150}
		}})
		-- loading end		
		table.insert(skin.destination,
		{id = -110, timer = 40, loop = 300, op = {81}, dst = {
			{time = 0, x = 0, y = 360, w = 1920, h = 360, a = 150},
			{time = 300, a = 0}
		}})
		-- genre, title, artist
		table.insert(skin.destination,
		{id = "inload-genre", loop = 600, op = {80}, filter = 1, dst = {
			{time = 0, x = loading_pos.text, y = 608, w = 1405, h = 26, a = 0},
			{time = 300},
			{time = 600, a = 255}
		}})
		table.insert(skin.destination,
		{id = "inload-title", loop = 600, op = {80}, filter = 1, dst = {
			{time = 0, x = loading_pos.text, y = 515, w = 1405, h = 73, a = 0},
			{time = 300},
			{time = 600, a = 255}
		}})
		table.insert(skin.destination,
		{id = "inload-artist", loop = 600, op = {80}, filter = 1, dst = {
			{time = 0, x = loading_pos.text, y = 425, w = 1405, h = 42, a = 0},
			{time = 300},
			{time = 600, a = 255}
		}})
		-- loading end
		table.insert(skin.destination,
		{id = "inload-genre", timer = 40,loop = 300, op = {81}, filter = 1, dst = {
			{time = 0, x = loading_pos.text, y = 608, w = 1405, h = 26, a = 255},
			{time = 300, a = 0}
		}})
		table.insert(skin.destination,
		{id = "inload-title", tiemr = 40, loop = 300, op = {81}, filter = 1, dst = {
			{time = 0, x = loading_pos.text, y = 515, w = 1405, h = 73, a = 255},
			{time = 300, a = 0}
		}})
		table.insert(skin.destination,
		{id = "inload-artist", timer = 40, loop = 300, op = {81}, filter = 1, dst = {
			{time = 0, x = loading_pos.text, y = 425, w = 1405, h = 42, a = 255},
			{time = 300, a = 0}
		}})
		-- stagefile
		table.insert(skin.destination,
		{id = -100, loop = 600, filter = 1, op = {80, 191}, dst = {
			{time = 0, x = loading_pos.stagefile, y = 420, w = 320, h = 240, a = 0},
			{time = 300},
			{time = 600, a = 255}
		}})
		-- loading end
		table.insert(skin.destination,
		{id = -100, timer = 40, loop = 300, filter = 1, op = {81, 191}, dst = {
			{time = 0, x = loading_pos.stagefile, y = 420, w = 320, h = 240, a = 255},
			{time = 300, a = 0}
		}})
		-- no stagefile
		table.insert(skin.destination,
		{id = "alt-stagefile", loop = 600, filter = 1, op = {80, 190}, dst = {
			{time = 0, x = loading_pos.stagefile, y = 420, w = 320, h = 240, a = 0},
			{time = 300},
			{time = 600, a = 255}
		}})
		-- loading end
		table.insert(skin.destination,
		{id = "alt-stagefile", timer = 40, loop = 300, filter = 1, op = {81, 190}, dst = {
			{time = 0, x = loading_pos.stagefile, y = 420, w = 320, h = 240, a = 255},
			{time = 300, a = 0}
		}})
		-- line under the song title
		table.insert(skin.destination,
			{id = "inload-titleline", loop = 900, op = {80}, dst = {
				{time = 0, x = loading_pos.titleline, y = 505, w = 0, h = 3, a = 100, acc = 2},
				{time = 300, w = 0},
				{time = 400},
				{time = 900, w = 1450}
			}})
		table.insert(skin.destination,
			{id = "inload-progress", loop = 900, op = {80}, dst = {
				{time = 0, x = loading_pos.titleline, y = 505, w = 0, h = 3, acc = 2},
				{time = 300, w = 0},
				{time = 400},
				{time = 900, w = 1450}
			}})
		-- loading end
		table.insert(skin.destination,
			{id = "inload-progress", timer = 40, loop = 300, op = {81}, dst = {
				{time = 0, x = loading_pos.titleline, y = 505, w = 1450, h = 3, a = 100},
				{time = 300, a = 0}
			}})
	end

-- ========================================================================================================================================================	

	-- # other

	-- fade in
	table.insert(skin.destination,
		{id = -110, loop = 250, dst = {
			{time = 0, x = 0, y = 0, w = 1920, h = 1080, a = 255},
			{time = 250, a = 0}
		}})

	-- shut out
	table.insert(skin.destination,
		{id = -110, timer = 3, loop = 250, dst = {
			{time = 0, x = 0, y = 0, w = 1920, h = 1080, a = 0},
			{time = 250, a = 255}
		}})

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