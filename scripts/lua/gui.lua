-- Updated table.getn
table.getn = function(t)
    if t == nil then
        return 0
    end
    if t.n ~= nil then
        return t.n
    else
        local n = 0
        for i in pairs(t) do
            if type(i) == "number" then
                n = math.max(n, i)
            end
        end
        return n
    end
end
-- Updated math.mod to math.fmod
math.mod = function(val, mod)
    return math.fmod(val, mod)
end -- Returns the remainder of the division of 'val' by 'mod' that rounds the quotient towards zero.
-- Updated string.gfind to string.gmatch
string.gfind = function(s, pattern)
    return string.gmatch(s, pattern)
end
function GetTextureID(texture_file)
    return CLU.GetTextureID(texture_file)
end

function ARGB(a, r, g, b)
    return ARGB(a, r, g, b)
end

function GetTerrainTextureID(terrain_id)
    terrain_id = terrain_id or 0
    local tex_id = CLU.GetTerrainTextureID(terrain_id)
    if tex_id == 0 then
        return nil
    end
    return tex_id
end

function GetChaPhotoTexID(cha_id)
    cha_id = cha_id or 0
    local tex = CLU.GetChaPhotoTexID(cha_id)
    if tex == 0 then
        return nil
    end
    return tex
end

function GetSceneObjPhotoTexID(obj_id)
    obj_id = obj_id or 0
    local tex = CLU.GetSceneObjPhotoTexID(obj_id)
    if tex == 0 then
        return nil
    end
    return tex
end

function GetEffectPhotoTexID(eff_id)
    eff_id = eff_id or 0
    local tex = CLU.GetEffectPhotoTexID(eff_id)
    if tex == 0 then
        return nil
    end
    return tex
end

function GetTerrainTextureType(terrain_id)
    terrain_id = terrain_id or 0
    local tex_id = CLU.GetTerrainTextureType(terrain_id)
    if tex_id == -1 then
        return nil
    end
    return tex_id
end

function GetSceneObjPhotoTexType(id)
    id = id or 0
    local tex_id = CLU.GetSceneObjPhotoTexType(id)
    if tex_id == -1 then
        return nil
    end
    return tex_id
end

function UI_CreateWindow(name, x, y, w, h)
    CLU.UI_CreateWindow(name, x, y, w, h)
end

function UI_CreateButton(name, x, y, w, h, parent)
    CLU.UI_CreateButton(name, x, y, w, h, parent)
end

function UI_SetButtonCheckBox(name, check)
    CLU.UI_SetButtonCheckBox(name, check)
end

function UI_SetButtonGroup(name, group)
    CLU.UI_SetButtonGroup(name, group)
end

function UI_SetButtonLabel(name, label)
    CLU.UI_SetButtonLabel(name, label)
end

function UI_SetImage(name, state, tx, ty, tw, th, scale_x, scale_y, texture)
    CLU.UI_SetImage(name, state, tx, ty, tw, th, scale_x, scale_y, texture)
end

function UI_SetFrameImage(name, state, tx, ty, tw, th, scale_x, scale_y, texture)
    CLU.UI_SetFrameImage(name, state, tx, ty, tw, th, scale_x, scale_y, texture)
end

function UI_SetOpaque(name, opaque)
    CLU.UI_SetOpaque(name, opaque)
end

function UI_SetAccessory(name, data)
    CLU.UI_SetAccessory(name, data)
end

NORMAL = 0
HOVER = 1
DOWN = 2
DISABLE = 3
ALL = 4

-----------------------------------------------------------------------
-- 
-----------------------------------------------------------------------

-- 
LUA_TRUE = 1
LUA_FALSE = 0
-- 
caLeft = 1
caLeftUp = 2
caUp = 3
caRightUp = 4
caRight = 5
caRightBottom = 6
caBottom = 7
caLeftBottom = 8
caClient = 9
caCenter = 10 -- 
caWidthCenter = 11 -- 
caHeightCenter = 12 --  

-- ß‰
LABEL_TYPE = 0
LABELEX_TYPE = 1
BUTTON_TYPE = 2
COMBO_TYPE = 3
EDIT_TYPE = 4
IMAGE_TYPE = 5
LIST_TYPE = 6
PROGRESS_TYPE = 7
CHECK_TYPE = 8
CHECK_GROUP_TYPE = 9
GRID_TYPE = 10
PAGE_TYPE = 11
FIX_LIST_TYPE = 12
CHECK_FIX_LIST_TYPE = 13
DRAG_TITLE_TYPE = 14
TREE_TYPE = 15
IMAGE_FRAME_TYPE = 16
UI3D_COMPENT_TYPE = 17
MEMO_TYPE = 18
MEMOEX_TYPE = 19
GOODS_GRID_TYPE = 20
FAST_COMMANG_TYPE = 21
COMMAND_ONE_TYPE = 22
IMAGE_FLASH_TYPE = 23
SCROLL_TYPE = 24
SKILL_LIST_TYPE = 25
LISTEX_TYPE = 26
MENU_TYPE = 27
RICHMEMO_TYPE = 28
TITLE_TYPE = 29
RICHEDIT_TYPE = 30
SCROLL_PANEL_TYPE = 32

UI3D_COMPENT = UI3D_COMPENT_TYPE

-- new color management now can pass color ass "f5806e" or hxd value @mothannakh--
COLOR_BLACK = 0xFF000000
COLOR_RED = 0xFFf5806e --
COLOR_WHITE = 0xFFFFFFFF --"0xFFFFFFFF" -- 4294967295
COLOR_PURPLE = 0xFF7F00D0 -- 
COLOR_YELLOW = 0xFFFFE22E -- 03-21 no Changes
COLOR_BLUE = 0xFF0000FF -- 
COLOR_GREEN = 0xFF00FF00 -- 
COLOR_PINK = 0xFFFF00FF -- 
COLOR_OFFGREEN = 0xFF4B9A3A -- ODS  -- 03-21
COLOR_CLOUD = 0xFF4C94B2 -- 03-21
COLOR_BLANK = 0xFFFFFF -- ODS-- 03-21
COLOR_STSFY = 0xFF4F8C7F
COLOR_STSFD = 0xFF7F7F80
GMPanelColor = "AA00FF"
ForgePaELLCOLOR = "BB00FF"
TREE_TEXT_COLOR = COLOR_WHITE

-- ÆÈ¶Å
NORMAL = 0
HOVER = 1
DOWN = 2
DISABLE = 3

-- 
COMPENT_BACK = 0 -- ß‰

-- °Á§Â
PROGRESS_PROGRESS = 1 -- 

-- §Â
UNCHECKED = 0 -- ™È
CHECKED = 1 -- 

-- °Ê£é
PROGRESS_HORIZONTAL = 0 -- ,™Â
PROGRESS_VERTICAL = 1 -- 

-- ®Â
-- 0 :ÆÈ; 12 3 Y 4¶Ô 567   8 ¶‰9 10 ¶‰ 11 
FORM_NONE = 0 -- ÆÈ
FORM_ALLCENTER = 1 -- ®Â
FORM_XCENTER = 2 -- x
FORM_YCENTER = 3 -- Y
FORM_LEFT = 4 -- 
FORM_RIGHT = 5 -- 
FORM_TOP = 6 -- 
FORM_BOTTOM = 7 -- 
FORM_LEFTTOP = 8 -- ¶‰
FORM_RIGHTTOP = 9 -- 
FORM_LEFTBOTTOM = 10 -- ¶‰
FORM_RIGHTBOTTOM = 11 -- 

-----------------------------------------------------------------------
-- 
-----------------------------------------------------------------------

-- UI
function UI_LoadScript(file)
    CLU.UI_LoadScript(file)
end

function UI_LoadBinScript(file)
    CLU.UI_LoadBinScript(file)
end

-- 
function UI_CreateForm(name, ismodal, w, h, x, y, isTitle, isShowFrame)
    ismodal = ismodal or 0
    isShowFrame = isShowFrame or 0
    isTitle = isTitle or 0
    local id = CLU.UI_CreateForm(name, ismodal, w, h, x, y, isTitle, isShowFrame)
    if id == -1 then
        return nil
    end
    return id
end

-- 
function UI_FormSetIsEscClose(nFormID, IsEscClose)
    IsEscClose = IsEscClose or 0
    nFormID = nFormID or 0
    CLU.UI_FormSetIsEscClose(nFormID, IsEscClose)
end

-- ®Ânter,ßË°å£‰
function UI_FormSetEnterButton(nFormID, nButtonID)
    nFormID = nFormID or 0
    nButtonID = nButtonID or 0
    CLU.UI_FormSetEnterButton(nFormID, nButtonID)
end

ALT_KEY = 0
CTRL_KEY = 1
SHIFT_KEY = 2
-- §∫orm
function UI_FormSetHotKey(id, control_key, key)
    id = id or 0
    control_key = control_key or 0
    CLU.UI_FormSetHotKey(id, control_key, key)
end

-- Form°ÊßÂ,°ªß‰
function UI_SetFormTempleteMax(max)
    CLU.UI_SetFormTempleteMax(max)
end

-- ormnTempleteNo°Ê,nTempleteNoax,ß‰
function UI_AddFormToTemplete(formid, nTempleteNo)
    formid = formid or 0
    nTempleteNo = nTempleteNo or 0
    CLU.UI_AddFormToTemplete(formid, nTempleteNo)
end

-- ormTempleteNo°Ê
function UI_AddAllFormTemplete(form_id)
    form_id = form_id or 0
    CLU.UI_AddAllFormTemplete(form_id)
end

-- Form°Ê,nTempleteNo,¢ÂÆ§°Ê
function UI_SwitchTemplete(nTempleteNo)
    nTempleteNo = nTempleteNo or 0
    CLU.UI_SwitchTemplete(nTempleteNo)
end

-- formlientØÂcw,chØÂbw,bhØÊ°Ü
function UI_LoadFormImage(id, client, cw, ch, tx, ty, board, bw, bh)
    id = id or 0
    CLU.UI_LoadFormImage(id, client, cw, ch, tx, ty, board, bw, bh)
end

-- form.
-- 0 :ÆÈ; 12 3 Y 4¶Ô 567   8 ¶‰9 10 ¶‰ 11 
function UI_SetFormStyle(id, index)
    id = id or 0
    index = index or 0
    CLU.UI_SetFormStyle(id, index)
end

-- form.
-- 0 :ÆÈ; 12 3 Y 4¶Ô 567   8 ¶‰9 10 ¶‰ 11 
-- offWidth ØÁ
-- offHeight ØÁ
function UI_SetFormStyleEx(id, index, offWidth, offHeight)
    id = id or 0
    offHeight = offHeight or 0
    offWidth = offWidth or 0
    CLU.UI_SetFormStyleEx(id, index, offWidth, offHeight)
end

-- FrameImagelientØÂcw,chØÂbw,bhØÊ°Ü
function UI_LoadFrameImage(id, client, cw, ch, tx, ty, board, bw, bh)
    id = id or 0
    board = board or 0
    CLU.UI_LoadFrameImage(id, client, cw, ch, tx, ty, board, bw, bh)
end

-- §∫°®®ÂID
function UI_ShowForm(id, show)
    id = id or 0
    show = show or 0
    CLU.UI_ShowForm(id, show)
end

-- ß‰°®ß‰,Y
-- 1-2-3-4-5-6-°®
-- -1ß‰ID
function UI_CreateCompent(formid, type, name, w, h, x, y)
    formid = formid or 0
    local ret = CLU.UI_CreateCompent(formid, type, name, w, h, x, y)
    if ret == -1 then
        return nil
    end
    return ret
end

-- ß‰¨Ë°®ØÂØ‰
function UI_SetIsDrag(id, isDrag)
    id = id or 0
    isDrag = isDrag or 0
    CLU.UI_SetIsDrag(id, isDrag)
end

-- ß‰§∫
function UI_SetHint(id, hint)
    id = id or 0
    CLU.UI_SetHint(id, hint)
end

-- Tree grid thumbnail from UI_CreateGraphItemTex (use item id returned there, not a form control id).
function UI_TreeGraphItemSetHint(itemId, hint)
    itemId = itemId or 0
    if not hint then return end
    CLU.UI_TreeGraphItemSetHint(itemId, hint)
end

-- °å°®,-1
-- style£é
eSimpleTitle = 0 -- ,
eWindowTitle = 1 -- °windows§¥,™Ê
eNoTitle = 2 -- °Ê¢ò
function UI_CreateListView(formid, name, w, h, x, y, col, style)
    formid = formid or 0
    local ret = CLU.UI_CreateListView(formid, name, w, h, x, y, col, style)
    if ret == -1 then
        return nil
    end
    return ret
end

-- listview§¥,¨°:id,,§¥,§¥,ßã
function UI_ListViewSetTitle(listviewid, index, width, titleimage, w, h, sx, sy)
    listviewid = listviewid or 0
    CLU.UI_ListViewSetTitle(listviewid, index, width, titleimage, w, h, sx, sy)
end

-- listview§¥
function UI_ListViewSetTitleHeight(listviewid, height)
    listviewid = listviewid or 0
    CLU.UI_ListViewSetTitleHeight(listviewid, height)
end

--
function UI_SetListIsMouseFollow(listid, IsFollow)
    listid = listid or 0
    CLU.UI_SetListIsMouseFollow(listid, IsFollow)
end

-- ß‰,tag
function UI_SetTag(id, tag)
    id = id or 0
    tag = tag or 0
    CLU.UI_SetTag(id, tag)
end

-- ß‰ßÂ
function UI_SetSize(id, w, h)
    id = id or 0
    CLU.UI_SetSize(id, w, h)
end

-- ß‰
function UI_SetPos(id, x, y)
    id = id or 0
    CLU.UI_SetPos(id, x, y)
end

-- ß‰ØÂÆÁ¶Á
function UI_SetIsKeyFocus(id, IsKeyFocus)
    id = id or 0
    CLU.UI_SetIsKeyFocus(id, IsKeyFocus)
end

-- ß‰
function UI_SetCaption(id, caption)
    id = id or 0
    CLU.UI_SetCaption(id, caption)
end

-- ¶‰™Ê
-- 1§±-1
function UI_CopyImage(targetid, sourceid)
    targetid = targetid or 0
    CLU.UI_CopyImage(targetid, sourceid)
end

-- ß‰lpha,255,®È:0
function UI_SetAlpha(id, alpha)
    id = id or 0
    CLU.UI_SetAlpha(id, alpha)
end

-- ß‰lpha,255,®È:0
function UI_SetImageAlpha(id, alpha)
    id = id or 0
    CLU.UI_SetImageAlpha(id, alpha)
end

-- ß‰§∫
function UI_SetAlign(id, align)
    id = id or 0
    CLU.UI_SetAlign(id, align)
end

--
function UI_SetIsShow(id, isshow)
    id = id or 0
    CLU.UI_SetIsShow(id, isshow)
end

-- ß‰ØÂØÁ
function UI_SetIsEnabled(id, isEnabled)
    id = id or 0
    CLU.UI_SetIsEnabled(id, isEnabled)
end

-- ß‰®Á
function UI_SetMargin(id, left, top, right, bottom)
    id = id or 0
    CLU.UI_SetMargin(id, left, top, right, bottom)
end

-- ¢ú¨°,Ø‰,,¨‰,GM,,§Ê,
function UI_SetChatColor(p1, p2, p3, p4, p5, p6, p7, p8)
    CLU.UI_SetChatColor(p1, p2, p3, p4, p5, p6, p7, p8)
end

-- ß‰ß‰id,Y
function UI_LoadImage(id, file, frame, w, h, tx, ty)
    id = id or 0
    CLU.UI_LoadImage(id, file, frame, w, h, tx, ty)
end

-- ß‰ØÂ
function UI_SetMaxImage(id, max)
    id = id or 0
    CLU.UI_SetMaxImage(id, max)
end

-- ß‰()d,Y
function UI_LoadScaleImage(id, file, frame, w, h, tx, ty, scalex, scaley)
    id = id or 0
    CLU.UI_LoadScaleImage(id, file, frame, w, h, tx, ty, scalex, scaley)
end

-- ß‰()d,Y
function UI_LoadFlashScaleImage(id, flash, file, frame, w, h, tx, ty, scalex, scaley)
    id = id or 0
    CLU.UI_LoadFlashScaleImage(id, flash, file, frame, w, h, tx, ty, scalex, scaley)
end

-- SkillListÆÂ
function UI_LoadSkillListButtonImage(id, file, w, h, sx, sy, item_w, item_h)
    id = id or 0
    CLU.UI_LoadSkillListButtonImage(id, file, w, h, sx, sy, item_w, item_h)
end

-- 
function UI_LoadButtonImage(id, file, w, h, sx, sy, isHorizontal)
    id = id or 0
    isHorizontal = isHorizontal or 0
    CLU.UI_LoadButtonImage(id, file, w, h, sx, sy, isHorizontal)
end

BUTTON_NONE = 0
BUTTON_CLOSE = 1
BUTTON_YES = 2
BUTTON_NO = 3
BUTTON_OK = 4
BUTTON_CANCLE = 5

-- 
function UI_SetButtonModalResult(id, modal)
    id = id or 0
    CLU.UI_SetButtonModalResult(id, modal)
end

-- int
function UI_ButtonSetHint(id, strHint)
    id = id or 0
    CLU.UI_ButtonSetHint(id, strHint)
end

-- comboistcrollcrollßÂ
function UI_GetScroll(id)
    id = id or 0
    local ret = CLU.UI_GetScroll(id)
    if ret == -1 then
        return nil
    end
    return ret
end

-- comboListViewist
function UI_GetList(id)
    id = id or 0
    local ret = CLU.UI_GetList(id)
    if ret == -1 then
        return nil
    end
    return ret
end

-- ®Ê
function UI_GridLoadSelectImage(id, file, w, h, tx, ty)
    id = id or 0
    CLU.UI_GridLoadSelectImage(id, file, w, h, tx, ty)
end

-- ®ÊØÂØ‰¶‰ßÂ
function UI_SetGridIsDragSize(id, IsEnabled)
    id = id or 0
    CLU.UI_SetGridIsDragSize(id, IsEnabled)
end

-- °‰Øπ:up,down,scroll
SCROLL_UP = 0
SCROLL_DOWN = 1
SCROLL_SCROLL = 2
function UI_GetScrollObj(id, scrolltype)
    id = id or 0
    local ret = CLU.UI_GetScrollObj(id, scrolltype)
    if ret == -1 then
        return nil
    end
    return ret
end

-- comboedit•Ê,hØπ,ex,ey,buttonÆËØÊbw,bhÆÂ,bx,by,isHorizontal
function UI_LoadComboImage(id, edit, ew, eh, ex, ey, button, bw, bh, bx, by, isHorizontal)
    id = id or 0
    CLU.UI_LoadComboImage(id, edit, ew, eh, ex, ey, button, bw, bh, bx, by, isHorizontal)
end

-- comboist,
function UI_ComboSetStyle(id, IsDown)
    id = id or 0
    CLU.UI_ComboSetStyle(id, IsDown)
end

-- comboext
function UI_ComboSetTextColor(id, color)
    id = id or 0
    CLU.UI_ComboSetTextColor(id, color)
end

-- FixList
function UI_LoadListFixSelect(id, imagefile, w, h, sx, sy)
    id = id or 0
    CLU.UI_LoadListFixSelect(id, imagefile, w, h, sx, sy)
end

-- ¶‰™Ê§±
function UI_CopyCompent(targetid, sourceid)
    targetid = targetid or 0
    CLU.UI_CopyCompent(targetid, sourceid)
end

-- list
function UI_AddListText(id, text)
    id = id or 0
    CLU.UI_AddListText(id, text)
end

-- List≠È°ËØÂ
function UI_ListLoadSelectImage(id, file, w, h, sx, sy)
    id = id or 0
    CLU.UI_ListLoadSelectImage(id, file, w, h, sx, sy)
end

-- List≠È°π
function UI_LoadListItemImage(id, file, w, h, sx, sy, item_w, item_h)
    id = id or 0
    CLU.UI_LoadListItemImage(id, file, w, h, sx, sy, item_w, item_h)
end

-- List≠Êtem
function UI_ListSetItemMargin(id, left, top)
    id = id or 0
    CLU.UI_ListSetItemMargin(id, left, top)
end

-- List≠ÊtemØÂ
function UI_ListSetItemImageMargin(id, left, top)
    id = id or 0
    CLU.UI_ListSetItemImageMargin(id, left, top)
end

-- list(¶Ë),prgress,0.0~1.0
function UI_AddListBarText(id, text, prgress)
    id = id or 0
    CLU.UI_AddListBarText(id, text, prgress)
end

-- ListØË•Â
function UI_SetListFontColor(listid, nBackColor, nSelectColor)
    listid = listid or 0
    CLU.UI_SetListFontColor(listid, nBackColor, nSelectColor)
end

-- List
function UI_SetListRowHeight(id, height)
    id = id or 0
    CLU.UI_SetListRowHeight(id, height)
end

-- checkbox
function UI_AddGroupBox(id, checkbox)
    id = id or 0
    CLU.UI_AddGroupBox(id, checkbox)
end

-- °Ê£é
function UI_SetProgressStyle(id, style)
    id = id or 0
    CLU.UI_SetProgressStyle(id, style)
end

PROGRESS_HINT_NUM = 0
PROGRESS_HINT_PERCENT = 1
-- °Ê£é£é
function UI_SetProgressHintStyle(id, style)
    id = id or 0
    CLU.UI_SetProgressHintStyle(id, style)
end

function UI_SetProgressActiveMouse(id, style)
    id = id or 0
    CLU.UI_SetProgressActiveMouse(id, style)
end

-- £é
function UI_SetScrollStyle(id, style)
    id = id or 0
    CLU.UI_SetScrollStyle(id, style)
end

-- ßË•Â,:byte
function UI_SetEditMaxNum(id, num)
    id = id or 0
    CLU.UI_SetEditMaxNum(id, num)
end

-- ¢ú
function UI_SetEditCursorColor(id, color)
    id = id or 0
    CLU.UI_SetEditCursorColor(id, color)
end

-- 
function UI_SetEditEnterButton(nEditID, nButtonID)
    nEditID = nEditID or 0
    CLU.UI_SetEditEnterButton(nEditID, nButtonID)
end

-- ßË•Â,:byte
function UI_SetEditMaxNumVisible(id, num)
    id = id or 0
    CLU.UI_SetEditMaxNumVisible(id, num)
end

-- ß‰
function UI_SetTextColor(id, color)
    id = id or 0
    CLU.UI_SetTextColor(id, color)
end

-- grid,Æ§2
function UI_SetGridSpace(id, x, y)
    id = id or 0
    CLU.UI_SetGridSpace(id, x, y)
end

-- grid,
function UI_SetGridContent(id, nRow, nCol)
    id = id or 0
    CLU.UI_SetGridContent(id, nRow, nCol)
end

-- GoodGrid
function UI_GoodGridLoadUnitImage(id, file, w, h, tx, ty)
    id = id or 0
    CLU.UI_GoodGridLoadUnitImage(id, file, w, h, tx, ty)
end

-- grid,Ææ,40
function UI_SetGridUnitSize(id, w, h)
    id = id or 0
    CLU.UI_SetGridUnitSize(id, w, h)
end

-- ®Êrid,frame°®
function UI_AddFaceToGrid(id, file, w, h, sx, sy, frame, nTag)
    id = id or 0
    CLU.UI_AddFaceToGrid(id, file, w, h, sx, sy, frame, nTag)
end

-- ßË°å
function UI_FixListSetMaxNum(id, num)
    id = id or 0
    CLU.UI_FixListSetMaxNum(id, num)
end

-- °å§∫
function UI_SetMemoMaxNumPerRow(id, num)
    id = id or 0
    CLU.UI_SetMemoMaxNumPerRow(id, num)
end

-- Memo°µ§∫°å
function UI_SetMemoPageShowNum(id, num)
    id = id or 0
    CLU.UI_SetMemoPageShowNum(id, num)
end

-- Memo°å§∫
function UI_SetMemoRowHeight(id, num)
    id = id or 0
    CLU.UI_SetMemoRowHeight(id, num)
end

-- Rich£Å™Â
function UI_RichSetClipRect(id, x0, y0, x1, y1)
    id = id or 0
    CLU.UI_RichSetClipRect(id, x0, y0, x1, y1)
end

-- RichßÂÆπ°å
function UI_RichSetMaxLine(id, line)
    id = id or 0
    CLU.UI_RichSetMaxLine(id, line)
end

-- Øπ
function UI_FixListSetText(id, index, text)
    id = id or 0
    CLU.UI_FixListSetText(id, index, text)
end

-- 
function UI_FixListSetRowSpace(id, height)
    id = id or 0
    CLU.UI_FixListSetRowSpace(id, height)
end

-- CheckFixListheck
function UI_CheckFixListSetCheckMargin(id, left, top)
    id = id or 0
    CLU.UI_CheckFixListSetCheckMargin(id, left, top)
end

function UI_LoadCheckFixListCheck(id, checkimage, cw, ch, csx, csy, uncheckimage, uw, uh, usx, usy)
    id = id or 0
    CLU.UI_LoadCheckFixListCheck(id, checkimage, cw, ch, csx, csy, uncheckimage, uw, uh, usx, usy)
end

enumTreeAddImage = 0
enumTreeSubImage = 1
-- ß‰,nType£Ö£Â,ßÂÆÆ16x16,§∫itemw,itemh
function UI_TreeLoadImage(nTreeID, nType, imagefile, w, h, sx, sy, itemw, itemh)
    nTreeID = nTreeID or 0
    CLU.UI_TreeLoadImage(nTreeID, nType, imagefile, w, h, sx, sy, itemw, itemh)
end

-- ™Êtem,®‰treenode
function UI_CreateTextItem(text, color)
    local ret = CLU.UI_CreateTextItem(text, color)
    if ret == -1 then
        return nil
    end
    return ret
end

-- ™Â°Item,®‰treenode
function UI_CreateGraphItem(file, w, h, sx, sy, frame)
    local ret = CLU.UI_CreateGraphItem(file, w, h, sx, sy, frame)
    if ret == -1 then
        return nil
    end
    return ret
end

-- ™Âtem,®‰treenode
function UI_CreateNoteGraphItem(file, w, h, sx, sy, frame, text, textx, texty)
    local ret = CLU.UI_CreateNoteGraphItem(file, w, h, sx, sy, frame, text, textx, texty)
    if ret == -1 then
        return nil
    end
    return ret
end

-- ™Âreenode,¨°:treeid,tem,d(-1,•Ê•Â)
function UI_CreateSingleNode(treeid, itemid, nodeid_parent)
    local ret = CLU.UI_CreateSingleNode(treeid, itemid, nodeid_parent)
    if ret == -1 then
        return nil
    end
    return ret
end

-- ™Ë°®reenode,¨°:treeid,°å,,d(-1,•Ê•Â)
function UI_CreateGridNode(treeid, itemid, maxcol, uw, uh, nodeid_parent)
    treeid = treeid or 0
    local ret = CLU.UI_CreateGridNode(treeid, itemid, maxcol, uw, uh, nodeid_parent)
    if ret == -1 then
        return nil
    end
    return ret
end

-- raph
function UI_CreateGraphItemTex(tx, ty, tw, th, scale_x, scale_y, nTextureID, nTag)
    local ret = CLU.UI_CreateGraphItemTex(tx, ty, tw, th, scale_x, scale_y, nTextureID, nTag)
    if ret == -1 then
        return nil
    end
    return ret
end

-- temidodeid
function UI_GridNodeAddItem(nodeid, itemid)
    nodeid = nodeid or 0
    CLU.UI_GridNodeAddItem(nodeid, itemid)
end

-- ®Page≠ÂageItem
function UI_CreatePageItem(page_id)
    page_id = page_id or 0
    local ret = CLU.UI_CreatePageItem(page_id)
    if ret == -1 then
        return nil
    end
    return ret
end

-- age
PAGE_BUTTON_LEFT_UP = 0 -- 
PAGE_BUTTON_FULL_UP = 1 -- 
PAGE_BUTTON_CUSTOM = 2 -- ™Â
function UI_SetPageButton(page_id, button_style, bw, bh)
    page_id = page_id or 0
    CLU.UI_SetPageButton(page_id, button_style, bw, bh)
end

-- PageItem
PAGE_ITEM_IMAGE = 0
PAGE_ITEM_TITLE = 1
function UI_GetPageItemObj(page_item_id, type)
    page_item_id = page_item_id or 0
    local ret = CLU.UI_GetPageItemObj(page_item_id, type)
    if ret == -1 then
        return nil
    end
    return ret
end

-- PAGE_ITEM_TITLE≠Â
PAGE_ITEM_TITLE_NORMAL = 0
PAGE_ITEM_TITLE_ACTIVE = 1

-- ™ÂØπ°Â•Â™ÂÆπ®‰
function UI_AddCompent(container_id, compent_id)
    container_id = container_id or 0
    compent_id = compent_id or 0
    CLU.UI_AddCompent(container_id, compent_id)
end

-- ©ÂLabelØÈ¢ú
function UI_SetLabelExShadowColor(label_id, color)
    label_id = label_id or 0
    CLU.UI_SetLabelExShadowColor(label_id, color)
end

-- Øπ®Ê
function UI_SetDragSnapToGrid(nGridWidth, nGridHeight)
    CLU.UI_SetDragSnapToGrid(nGridWidth, nGridHeight)
end

-- °Á,nIndexØÁ,ØÂ
function UI_SetTextParse(nIndex, file, w, h, sx, sy, frame)
    CLU.UI_SetTextParse(nIndex, file, w, h, sx, sy, frame)
end

-- ¶Ë
function UI_ItemBarLoadImage(file, w, h, tx, ty)
    CLU.UI_ItemBarLoadImage(file, w, h, tx, ty)
end

-- 
function UI_MenuLoadImage(id, IsShowFrame, IsTitle, clientfile, cw, ch, tx, ty, framefile, w, h)
    CLU.UI_MenuLoadImage(id, IsShowFrame, IsTitle, clientfile, cw, ch, tx, ty, framefile, w, h)
end

-- °Á
function UI_MenuLoadSelect(menuid, imagefile, w, h, tx, ty)
    menuid = menuid or 0
    CLU.UI_MenuLoadSelect(menuid, imagefile, w, h, tx, ty)
end

-- 
function UI_MenuAddText(id, text)
    id = id or 0
    CLU.UI_MenuAddText(id, text)
end

-- ®‰®Ê
function UI_AddFilterTextToNameTable(text)
    CLU.UI_AddFilterTextToNameTable(text)
end

-- ®‰§©Æπ§Â
function UI_AddFilterTextToDialogTable(text)
    CLU.UI_AddFilterTextToDialogTable(text)
end

-- °∂©ÊØÈ¢ú
function UI_SetHeadSayBkgColor(color)
    CLU.UI_SetHeadSayBkgColor(color)
end

-- Title¢ú
function UI_SetTitleFont(id, font, color, height)
    id = id or 0
    CLU.UI_SetTitleFont(id, font, color, height)
end

-- ©ÂLabel,•ÂØÂ§∫
function UI_SetLabelExFont(id, nFontIndex, IsShadow, dwShadowColor)
    -- If `id` is nil, set it to 1
    id = id or 0
    IsShadow = IsShadow or 0
    CLU.UI_SetLabelExFont(id, nFontIndex, IsShadow, dwShadowColor)
end

-- 
function UI_LoadSkillActiveImage(file, maxframe, w, h, sx, sy)
    CLU.UI_LoadSkillActiveImage(file, maxframe, w, h, sx, sy)
end

-- £≥
function UI_LoadChargeImage(link, file, maxframe, w, h, sx, sy)
    CLU.UI_LoadChargeImage(link, file, maxframe, w, h, sx, sy)
end

-- gif loading from .clu
function UI_LoadFormGif(id, gifPath, poseX, poseY, scaleWidth, scaleHeight, opacity, renderBelowCompents)
    menuid = menuid or 0
    CLU.UI_LoadFormGif(id, gifPath, poseX, poseY, scaleWidth, scaleHeight, opacity, renderBelowCompents)
end

-- ®‰®Ê¨Ë•Ê°Ü®Êrame°®
-- UI_SetTextParse( 0 , "texture/ui/face/em001.tga", 40, 40 , 0 , 0 ,4  )
-- UI_SetTextParse( 1 , "texture/ui/face/em003.tga", 40, 40 , 0 , 0 ,4  )
-- UI_SetTextParse( 2 , "texture/ui/face/em001.tga", 40, 40 , 0 , 0 ,4  )
-- UI_SetTextParse( 3 , "texture/ui/face/em003.tga", 40, 40 , 0 , 0 ,4  )
-- UI_SetTextParse( 4 , "texture/ui/face/em001.tga", 40, 40 , 0 , 0 ,4  )
-- UI_SetTextParse( 5 , "texture/ui/face/em003.tga", 40, 40 , 0 , 0 ,4  )
-- UI_SetTextParse( 6 , "texture/ui/face/em001.tga", 40, 40 , 0 , 0 ,4  )
-- UI_SetTextParse( 7 , "texture/ui/face/em003.tga", 40, 40 , 0 , 0 ,4  )
-- UI_SetTextParse( 8 , "texture/ui/face/em001.tga", 40, 40 , 0 , 0 ,4  )
-- UI_SetTextParse( 9 , "texture/ui/face/em003.tga", 40, 40 , 0 , 0 ,4  )

UI_ItemBarLoadImage("texture/ui/system/progress.tga", 64, 16, 0, 0)

-- ASCII,®‰´Ê
HOTKEY_A = 65
HOTKEY_B = 66
HOTKEY_C = 67
HOTKEY_D = 68
HOTKEY_E = 69
HOTKEY_F = 70
HOTKEY_G = 71
HOTKEY_H = 72
HOTKEY_I = 73
HOTKEY_J = 74
HOTKEY_K = 75
HOTKEY_L = 76
HOTKEY_M = 77
HOTKEY_N = 78
HOTKEY_O = 79
HOTKEY_P = 80
HOTKEY_Q = 81
HOTKEY_R = 82
HOTKEY_S = 83
HOTKEY_T = 84
HOTKEY_U = 85
HOTKEY_V = 86
HOTKEY_W = 87
HOTKEY_X = 88
HOTKEY_Y = 89
HOTKEY_Z = 90

UI_SetDragSnapToGrid(4, 4)

-- ITemplete.h
FORM_LOGIN = 0
FORM_MAIN = 1
FORM_SELECT_CHA = 2
FORM_EDITOR = 3
FORM_SWITCH_SCENE = 4
FORM_CREATE_CHA = 5
FORM_SELECT = 6
UI_SetFormTempleteMax(7) -- 

FORM_DIALOG = FORM_SWITCH_SCENE -- -4
----------------------------------------------

-- 
UI_LoadScript("scripts/lua/filter.lua")

