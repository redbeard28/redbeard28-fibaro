--[[
%% autostart
%% properties
242 value
242 armed
%% events
%% globals
--]]

local startSource = fibaro:getSourceTrigger();
if(startSource["type"] == "other") then
	fibaro:call(228, "turnOff");
else
if (( (tonumber(fibaro:getValue(242, "value")) == 0 and tonumber(fibaro:getValue(242, "armed")) == 0) )) then
setTimeout(function()
local delayedCheck0 = false;
local tempDeviceState0, deviceLastModification0 = fibaro:get(6, "value");
if (( (tonumber(fibaro:getValue(242, "value")) == 0 and tonumber(fibaro:getValue(242, "armed")) == 0) ) and (os.time() - deviceLastModification0) >= 50) then
	delayedCheck0 = true;
end

local startSource = fibaro:getSourceTrigger();
if (
 ( delayedCheck0 == true )
or
startSource["type"] == "other"
)
then
	fibaro:call(228, "turnOff");
end
end, 20000)
end
end

