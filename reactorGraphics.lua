local re = re
local monitor = monitor

local conReactor = re.getConnected()
local statusReactor = re.getActive()

local xLength, yHeight = monitor.getResolution()

-- Remember to set both background and foreground colors as you wish before calling this function
function clear ()
    monitor.fill(1, 1, xLength, yHeight, " ")
end

if conReactor == true then
    rstatus = "Conectado"
else
    rstatus = "Não conectado"
end

if statusReactor == true then
    act = "Ativo"
else
    act = "Inativo"
end