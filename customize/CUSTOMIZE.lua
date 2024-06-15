--[[
    Please ensure that the value assigned to the variable meets the following conditions:

    - The value is not nil.
    - The type of the value is "number".
    - The value is an integer(except CUSTOM_BOMB_PROPERTY:1-4).
    - The value must be within the specified range.
    - OTHER_WIDTH * n + SCRATCH_WIDTH = 802 (only for XX_WIDTH).

    If the entered value does not meet these conditions, the value of the “Template” option (if it’s a 7key, OTHER_WIDTH = 94, SCRATCH_WIDTH = 144)
    will be used. and Don’t forget the ‘,’ (comma) when entering !

------------------------------------------------------------------------------------------------------------------------------------------------------
    変数に代入する値は、以下の条件を満たすものにしてください。

    - 値が nil でないこと
    - 値の型が "number" であること
    - 値が整数であること（CUSTOM_BOMB_PROPERTY:1～4以外）
    - 値が指定の範囲内であること
    - OTHER_WIDTH * n + SCRATCH_WIDTH = 802 であること ※～WIDTHのみ

    入力された値がこの条件を満たさない場合、"Template" オプションの値(7keyであればOTHER_WIDTH = 94, SCRATCH_WIDTH = 144)が使用されます。
    入力する際は「,」（カンマ）を忘れずに！
]]

-- OTHER_WIDTH * 7 + SCRATCH_WIDTH * 1 = 802
-- Default: OTHER_WIDTH = 94, SCRATCH_WIDTH = 144
local CUSTOM_NOTES_WIDTH_7KEY = {
    OTHER_WIDTH = 94,
    SCRATCH_WIDTH = 144
}

-- OTHER_WIDTH * 5 + SCRATCH_WIDTH * 1 = 802
-- Default: OTHER_WIDTH = 132, SCRATCH_WIDTH = 142
local CUSTOM_NOTES_WIDTH_5KEY = {
    OTHER_WIDTH = 132,
    SCRATCH_WIDTH = 142
}

-- OTHER_WIDTH * 7 + SCRATCH_WIDTH * 2 = 802
-- Default: OTHER_WIDTH = 84, SCRATCH_WIDTH = 107
local CUSTOM_NOTES_WIDTH_9KEY = {
    OTHER_WIDTH = 84,
    SCRATCH_WIDTH = 107
}

-- Value from 1 to 255
-- Default : CUSTOM_NOTES_HEIGHT = 64
local CUSTOM_NOTES_HEIGHT_7KEY = {
    CUSTOM_NOTES_HEIGHT = 64
}

-- Value from 1 to 255
-- Default : CUSTOM_NOTES_HEIGHT = 64
local CUSTOM_NOTES_HEIGHT_5KEY = {
    CUSTOM_NOTES_HEIGHT = 64
}

-- Value from 1 to 255
-- Default : CUSTOM_NOTES_HEIGHT = 64
local CUSTOM_NOTES_HEIGHT_9KEY = {
    CUSTOM_NOTES_HEIGHT = 64
}

-- Value from -255 to 255
-- Default : FS_THRESHOLD_DELTA = -3
local CUSTOM_FAST_SLOW_THRESHOLD = {
    FS_THRESHOLD_DELTA = -3
}

-- 1 to 4 : Value from 0.1 to 10.0
-- 5 to 10 : Value from 1 to 255
-- Default : 
--[[
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
]]
local CUSTOM_BOMB_PROPERTY = {
    BOMB_CYCLE_MULUTIPLIER = 	1.0,    -- 1 : Decimals are acceptable
    LNBOMB_CYCLE_MULUTIPLIER = 	1.0,    -- 2 : Decimals are acceptable
    BOMB_WIDTH_MULUTIPLIER =	1.0,    -- 3 : Decimals are acceptable
    BOMB_HEIGHT_MULUTIPLIER =	1.0,    -- 4 : Decimals are acceptable
    BOMB_RED =		            255,    -- 5 : Integer only
    BOMB_GREEN =	            255,    -- 6 : Integer only
    BOMB_BLUE =		            255,    -- 7 : Integer only
    LNBOMB_RED =	            255,    -- 8 : Integer only
    LNBOMB_GREEN =	            255,    -- 9 : Integer only
    LNBOMB_BLUE =	            255     -- 10 : Integer only
}

local function load(varName)
    if varName ==       "CUSTOM_NOTES_WIDTH_7KEY" then
        return CUSTOM_NOTES_WIDTH_7KEY
    elseif varName ==   "CUSTOM_NOTES_WIDTH_5KEY" then
        return CUSTOM_NOTES_WIDTH_5KEY
    elseif varName ==   "CUSTOM_NOTES_WIDTH_9KEY" then
        return CUSTOM_NOTES_WIDTH_9KEY
    elseif varName ==   "CUSTOM_NOTES_HEIGHT_7KEY" then
        return CUSTOM_NOTES_HEIGHT_7KEY
    elseif varName ==   "CUSTOM_NOTES_HEIGHT_5KEY" then
        return CUSTOM_NOTES_HEIGHT_5KEY
    elseif varName ==   "CUSTOM_NOTES_HEIGHT_9KEY" then
        return CUSTOM_NOTES_HEIGHT_9KEY
    elseif varName ==   "CUSTOM_FAST_SLOW_THRESHOLD" then
        return CUSTOM_FAST_SLOW_THRESHOLD
    elseif varName ==   "CUSTOM_BOMB_PROPERTY" then
        return CUSTOM_BOMB_PROPERTY
    else
        return nil
    end
end

return {
    load = load
}