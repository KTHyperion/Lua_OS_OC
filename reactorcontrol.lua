local component = require("component")

local gpuSerial = "<SERIAL GPU>"
local monitorSerial = "<SERIAL MONITOR>"
local reactorSerial = "<SERIAL REATOR>"

local monitor = component.proxy(monitorSerial)
monitor.bind(monitorSerial)
local xLength, yHeight = monitor.getResolution()

local re = component.proxy(reactorSerial)

local conReactor = re.getConnected()
local statusReactor = re.getActive()

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

monitor.set(1,1, "Conexão com o Reator: "..rstatus)
monitor.set(1,2, "Status do Reator: "..act)