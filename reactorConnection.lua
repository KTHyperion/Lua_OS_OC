local component = require("component")

local gpuSerial = "<SERIAL GPU>"
local monitorSerial = "<SERIAL MONITOR>"
local reactorSerial = "<SERIAL REATOR>"

monitor = component.proxy(gpuSerial)
monitor.bind(monitorSerial)

re = component.proxy(reactorSerial)

-- reactorGraphics will further work with both monitor and reactor's data.
os.execute("reactorGraphics monitor re")

-- THIS SCRIPT IS CONCLUDED