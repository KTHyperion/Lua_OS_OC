local re = re
local monitor = monitor

local conReactor = re.getConnected()
local statusReactor = re.getActive()

local reactorMaxEnergy = 10000000

local xLength, yHeight = monitor.getResolution()

-- Remember to set both background and foreground colors as you wish before calling this function
function clear ()
    monitor.fill(1, 1, xLength, yHeight, " ")
end

-- Set color scheme
function setColorBF (color1, color2)
    monitor.setBackground(color1)
    monitor.setForeground(color2)
end

if conReactor == true then
    rconnection = "Connected"
else
    rconnection = "Not connected"
end

if statusReactor == true then
    act = "Active"
else
    act = "Inactive"
end

setColorBF(0x000000, 0xFFFFFF)
clear()

monitor.set(1, 1, "Reactor connection: "..rconnection)
monitor.set(1, 2, "Reactor status: "..act)

monitor.set(1, 4, "Internal buffer")
setColorBF(0xFFFFFF, 0x000000)
monitor.fill(1, 5, xLength, 8, " ")
setColorBF(0x000000, 0x000000)
monitor.fill(2, 6, xLength-4, 6, " ")

local internalEnergy = re.getEnergyStored()
local proportion = internalEnergy / reactorMaxEnergy

setColorBF(0xFF0000, 0x000000)
monitor.fill(2, 6, 2+proportion, 6, " ")