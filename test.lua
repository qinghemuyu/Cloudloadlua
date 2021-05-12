local lp = entities.GetLocalPlayer()

local globals_FrameCount = globals.FrameCount
local math_max = math.max
local math_min = math.min
local table_insert = table.insert
local math_modf = math.modf
local draw_GetScreenSize = draw.GetScreenSize
local health = math_min(100, lp:GetHealth())
local armor = math_min(100, lp:GetProp("m_ArmorValue"))
