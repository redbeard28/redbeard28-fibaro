--[[
%% properties
242 value
242 armed
%% events
%% globals
--]]

local startSource = fibaro:getSourceTrigger();
local sunset_time = fibaro:getGlobal("VAR_SUNSET");
local sunrise_time = fibaro:getGlobal("VAR_SUNRISE");
local currentDate = os.date("*t");
local currentTime = string.format("%02d", currentDate.hour) .. ":" .. string.format("%02d", currentDate.min);


if (
 ( (tonumber(fibaro:getValue(242, "value")) > 0 and tonumber(fibaro:getValue(242, "armed")) == 0) )
or
startSource["type"] == "other"
)
then
  if (currentTime > "21:00" or currentTime < "07:00") then
     fibaro:call(228, "turnOn");
     fibaro:call(228, "changeBrightness", "25");
  else
    fibaro:call(228, "turnOn");
    fibaro:call(228, "changeBrightness", "255");
  end
end

-- local startSource = fibaro:getSourceTrigger();
-- local sunset_time = fibaro:getGlobal("VAR_SUNSET");
-- local sunrise_time = fibaro:getGlobal("VAR_SUNRISE");
-- local currentDate = os.date("*t");
-- local currentTime = string.format("%02d", currentDate.hour) .. ":" .. string.format("%02d", currentDate.min);

-- local luminosite = 75;
-- local ID = 228; -- HUE DOUCHE


   --  if ((currentTime > "21:00") or (currentTime < "07h00")) then
   --  --fibaro:call(ID, "changeBrightness", luminosite);
   --  fibaro:call(ID, "turnOn");
    -- fibaro:call(ID, "changeBrightness", "75");
    -- else
    -- fibaro:call(ID, "turnOn");
    -- fibaro:call(ID, "changeBrightness", "255");
   --  end

