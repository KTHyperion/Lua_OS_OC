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