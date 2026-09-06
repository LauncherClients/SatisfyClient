-------------------------------------------------------------
-- 
-------------------------------------------------------------
enumEQUIP_HEAD = 0 --
enumEQUIP_FACE = 1
enumEQUIP_BODY = 2
enumEQUIP_GLOVE = 3 -- 
enumEQUIP_SHOES = 4 -- 

enumEQUIP_LHAND = 6 -- 		-- ¢æink
enumEQUIP_RHAND = 9 -- 

enumEQUIP_NECK = 5 -- 
enumEQUIP_HAND1 = 7 -- 
enumEQUIP_HAND2 = 8

enumEQUIP_Jewelry1 = 10
enumEQUIP_Jewelry2 = 11
enumEQUIP_Jewelry3 = 12
enumEQUIP_Jewelry4 = 13
enumEQUIP_WING = 14
--if we define these here it got fked in other places
TRUE  = 1
FALSE = 0
True  = 1
False = 0

function SN_CreateScene(typeid, name, map_name, ui, max_cha, max_obj, max_item, max_eff)
    local tex_id = CLU.SN_CreateScene(typeid, name, map_name, ui, max_cha, max_obj, max_item, max_eff)
    if tex_id == -1 then
        return nil
    end
    return tex_id
end

-- ­å
function SN_SetTerrainShowCenter(sceneid, x, y)
    CLU.SN_SetTerrainShowCenter(sceneid, x, y)
end

-- ¯å¤º3D
function SN_SetIsShow3DCursor(isShow)
    CLU.SN_SetIsShow3DCursor(isShow)
end

-- ¯å¤º
function SN_SetIsShowMinimap(isShow)
    CLU.SN_SetIsShowMinimap(isShow)
end

-- «é§»¨æ«æ§’¯å
function SN_SetAttackChaColor(r, g, b)
    CLU.SN_SetAttackChaColor(r, g, b)
end

-------------------------------------------------------------
-- 
-------------------------------------------------------------
-- ¨å¯ä,ªè§’,type§’
function CH_Create(sceneid, type)
    local tex_id = CLU.CH_Create(sceneid, type)
    if tex_id == -1 then
        return nil
    end
    return tex_id
end

-- 
function CH_SetPos(id, x, y)
    CLU.CH_SetPos(id, x, y)
end

-- 0-360(0)
function CH_SetYaw(id, yaw)
    CLU.CH_SetYaw(id, yaw)
end

-- ­æ¨ç
PLAY_ONCE = 1
PLAY_LOOP = 2
PLAY_FRAME = 3
PLAY_ONCE_SMOOTH = 4
PLAY_LOOP_SMOOTH = 5
PLAY_PAUSE = 6
PLAY_CONTINUE = 7
PLAY_INVALID = 0
function CH_PlayPos(id, pose, posetype)
    CLU.CH_PlayPos(id, pose, posetype)
end

-------------------------------------------------------------
-- 
-------------------------------------------------------------
-- ,
function GP_SetCameraPos(ex, ey, ez, rx, ry, rz)
    CLU.GP_SetCameraPos(ex, ey, ez, rx, ry, rz)
end

-- £ï
function GP_SetScriptScene(sceneid)
    CLU.GP_SetScriptScene(sceneid)
end

-- ªå,sceneid¨SN_CreateScene
function GP_GotoScene(sceneid)
    CLU.GP_GotoScene(sceneid)
end

-- 
enumLoginScene = 0
enumWorldScene = 1 -- 
enumSelectChaScene = 2 -- 
enumCreateChaScene = 3 -- 

----------------------------------------------------------------
-- ¥ä
----------------------------------------------------------------
CLU.SN_SetAttackChaColor(255, 180, 180)
