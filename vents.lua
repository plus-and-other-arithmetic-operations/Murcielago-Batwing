local yourSwitch = 3 --0-Extra A, 1-Extra B, etc..
local tempTreshold = 82 --i've set the treshold to 85, real value is 90, increase or decrease if you want to
local openVents = false --are the vents open?
local isOverride = false --if the user has pressed extra switch

function VentsBehaviour(isOverride)
    if (isOverride) then --if the user has pressed extra switch
        openVents = true
    elseif (car.waterTemperature >= tempTreshold)  then --always up if temps are high
        openVents = true
    elseif (car.speedKmh > 20 and car.waterTemperature < tempTreshold) then --if the speed is above 20kmh and temps are fine
        openVents = false
    elseif (car.speedKmh <= 20 and car.waterTemperature < tempTreshold) then --if the speed is below 20kmh and temps are fine
        openVents = false
    end
end


function script.update(dt)
    if(car.extraD ~= openVents) then --user overriden extra switch
        isOverride = not isOverride
    end
    VentsBehaviour(isOverride)
    ac.setExtraSwitch(yourSwitch, openVents)
end
