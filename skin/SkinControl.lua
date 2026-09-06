--[[
[gameOption]

--]] -- Set from C++ (user/system.ini [gameOption]) before this file runs. 1 = Satisfy, 0 = Noir.
if type(IsSatisfySkin) ~= "number" then
    IsSatisfySkin = 1
end
-------------don't touch here -------------------------
loadbinfiles = true
LUA_TRUE = 1
LUA_FALSE = 0
if loadbinfiles then
    if IsSatisfySkin == 1 then

        UI_LoadBinScript("scripts/lua/forms/main.bin")
        UI_LoadBinScript("scripts/lua/forms/login.bin")
        UI_LoadBinScript("scripts/lua/forms/loading.bin")
        UI_LoadBinScript("scripts/lua/forms/NPC.bin")
        UI_LoadBinScript("scripts/lua/forms/Player.bin")
        UI_LoadBinScript("scripts/lua/forms/minimap.bin")
        UI_LoadBinScript("scripts/lua/forms/help.bin")
        UI_LoadBinScript("scripts/lua/forms/system.bin")
        UI_LoadBinScript("scripts/lua/forms/equip.bin")
        UI_LoadBinScript("scripts/lua/forms/chat.bin")
        UI_LoadBinScript("scripts/lua/forms/preperty.bin")
        UI_LoadBinScript("scripts/lua/forms/mission.bin")
        UI_LoadBinScript("scripts/lua/forms/coze.bin")
        UI_LoadBinScript("scripts/lua/forms/dialog.bin")
        UI_LoadBinScript("scripts/lua/forms/ship.bin")
        UI_LoadBinScript("scripts/lua/forms/traderoom.bin")
        UI_LoadBinScript("scripts/lua/forms/manage.bin")
        UI_LoadBinScript("scripts/lua/forms/select.bin")
        -- UI_LoadBinScript("scripts/lua/scene/face.lua")
        -- load stall image here 
        UI_LoadHeadSayShopImage(0, 15, 34, "texture/ui/forms/Satisfy/BoothName.png", 15, 34, 0, 0)
        UI_LoadHeadSayShopImage(1, 1, 34, "texture/ui/forms/Satisfy/BoothName.png", 1, 34, 18, 0)
        UI_LoadHeadSayShopImage(2, 15, 34, "texture/ui/forms/Satisfy/BoothName.png", 15, 34, 22, 0)

    else

        UI_LoadBinScript("scripts/lua/formsNoir/main.bin")
        UI_LoadBinScript("scripts/lua/formsNoir/login.bin")
        UI_LoadBinScript("scripts/lua/formsNoir/loading.bin")
        UI_LoadBinScript("scripts/lua/formsNoir/NPC.bin")
        UI_LoadBinScript("scripts/lua/formsNoir/Player.bin")
        UI_LoadBinScript("scripts/lua/formsNoir/minimap.bin")
        UI_LoadBinScript("scripts/lua/formsNoir/help.bin")
        UI_LoadBinScript("scripts/lua/formsNoir/system.bin")
        UI_LoadBinScript("scripts/lua/formsNoir/equip.bin")
        UI_LoadBinScript("scripts/lua/formsNoir/chat.bin")
        UI_LoadBinScript("scripts/lua/formsNoir/preperty.bin")
        UI_LoadBinScript("scripts/lua/formsNoir/mission.bin")
        UI_LoadBinScript("scripts/lua/formsNoir/coze.bin")
        UI_LoadBinScript("scripts/lua/formsNoir/dialog.bin")
        UI_LoadBinScript("scripts/lua/formsNoir/ship.bin")
        UI_LoadBinScript("scripts/lua/formsNoir/traderoom.bin")
        UI_LoadBinScript("scripts/lua/formsNoir/manage.bin")
        UI_LoadBinScript("scripts/lua/formsNoir/select.bin")
        -- UI_LoadScript("scripts/lua/scene/faceNoir.bin")
        -- load stall image here 
        UI_LoadHeadSayShopImage(0, 15, 34, "texture/ui/forms/SatisfyNoir/BoothName.png", 15, 34, 0, 0)
        UI_LoadHeadSayShopImage(1, 1, 34, "texture/ui/forms/SatisfyNoir/BoothName.png", 1, 34, 18, 0)
        UI_LoadHeadSayShopImage(2, 15, 34, "texture/ui/forms/SatisfyNoir/BoothName.png", 15, 34, 22, 0)

    end
end

UI_LoadScript("scripts/lua/GlowEditor.lua")
