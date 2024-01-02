os.execute("clear")

local component = require("component")
local gpu = component.gpu
local logo = [[
  _   _           _     _  ____              _ 
 | | | | __ _ ___| |__ (_)/ ___|__ _ _ __ __| |
 | |_| |/ _` / __| '_ \| | |   / _` | '__/ _` |
 |  _  | (_| \__ \ | | | | |__| (_| | | | (_| |
 |_| |_|\__,_|___/_| |_|_|\____\__,_|_|  \__,_|
                                               
]]
gpu.setForeground(0xa020f0)
print(logo .. "\n")
print("Loading...\n")
os.sleep(1)
print("=== [ SETUP ] ===\n\n")
print("Шаг 1: В каком режиме вы хотите использовать терминал\n\n1: Режим дверного контроллера - в этом режиме данный компьютер становиться контроллером кард, для работы требуется подключенный считыватель.\n\n2: Режим терминала записи - в этом режиме данный пк становиться устройством для записи новых магнитных карт. Для работы требуется подключенный Блок Записи Карт")
io.write("В каком режиме вы хотите использовать терминал (1/2): ")
local mode = io.read()

if (mode == 1) then
  os.execute("wget -f https://raw.githubusercontent.com/KilDoomWise/HashiCard/master/modules/module_controller.lua && module_controller.lua")
elseif (mode == 2) then
  os.execute("wget -f https://raw.githubusercontent.com/KilDoomWise/HashiCard/master/modules/module_terminal.lua && module_terminal.lua")
else
  os.exit()
end
