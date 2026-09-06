-----------------------------------------------------------------------
-- Editor
-----------------------------------------------------------------------	
frmEditor = UI_CreateForm( "frmEditor", FALSE, 192, 768, 0, 0, FALSE, FALSE )
-- UI_FormSetHotKey( frmEditor, ALT_KEY, 69 ) --'E'
-- UI_LoadFormImage( frmEditor, "texture/ui/title2.png", 128, 128, 0, 0, "texture/ui/board2.png", 16, 16 )
-- UI_AddAllFormTemplete( frmEditor )
UI_ShowForm( frmEditor, TRUE )
UI_AddFormToTemplete( frmEditor, FORM_EDITOR )

imgTreeFrame = UI_CreateCompent( frmEditor, IMAGE_FRAME_TYPE, "imgTreeFrame", 192, 768, 0, 0 )
UI_LoadFrameImage( imgTreeFrame, "texture/ui/editor/title2.png", 192, 192, 0, 0, "texture/ui/editor/board2.png", 16, 16 )

imgEditor = UI_CreateCompent( frmEditor, IMAGE_TYPE, "imgEditor", 285, 35, 195, 0 )
UI_LoadImage( imgEditor,  "texture/ui/editor/bkg.png", NORMAL, 1, 1, 0, 0 )
UI_SetAlpha( imgEditor, 100 )

chkSize01 = UI_CreateCompent( frmEditor, CHECK_TYPE, "chkSize01", 20, 20, 200, 5 )
UI_LoadImage( chkSize01, "texture/ui/editor/brushsize.png", CHECKED, 20, 20, 0, 0 )
UI_LoadImage( chkSize01, "texture/ui/editor/brushsize.png", UNCHECKED, 20, 20, 0, 20 )

chkSize02 = UI_CreateCompent( frmEditor, CHECK_TYPE, "chkSize02", 20, 20, 220, 5 )
UI_LoadImage( chkSize02, "texture/ui/editor/brushsize.png", CHECKED, 20, 20, 20, 0 )
UI_LoadImage( chkSize02, "texture/ui/editor/brushsize.png", UNCHECKED, 20, 20, 20, 20 )

chkSize03 = UI_CreateCompent( frmEditor, CHECK_TYPE, "chkSize03", 20, 20, 240, 5 )
UI_LoadImage( chkSize03, "texture/ui/editor/brushsize.png", CHECKED, 20, 20, 40, 0 )
UI_LoadImage( chkSize03, "texture/ui/editor/brushsize.png", UNCHECKED, 20, 20, 40, 20 )

chgGroup = UI_CreateCompent( frmEditor, CHECK_GROUP_TYPE, "chgGroup", 0, 0, 0, 0 )
UI_AddGroupBox( chgGroup, chkSize01 )
UI_AddGroupBox( chgGroup, chkSize02 )
UI_AddGroupBox( chgGroup, chkSize03 )

chkWireFrame = UI_CreateCompent( frmEditor, CHECK_TYPE, "chkWireFrame", 20, 20, 270, 5 )
UI_LoadImage( chkWireFrame, "texture/ui/editor/wireframe.png", CHECKED, 20, 20, 0, 0 )
UI_LoadImage( chkWireFrame, "texture/ui/editor/wireframe.png", UNCHECKED, 20, 20, 0, 20 )

chkModifyHeight = UI_CreateCompent( frmEditor, CHECK_TYPE, "chkModifyHeight", 20, 20, 290, 5 )
UI_LoadImage( chkModifyHeight, "texture/ui/editor/modifyheight.png", CHECKED, 20, 20, 0, 0 )
UI_LoadImage( chkModifyHeight, "texture/ui/editor/modifyheight.png", UNCHECKED, 20, 20, 0, 20 )

chkEnabledAlpha = UI_CreateCompent( frmEditor, CHECK_TYPE, "chkEnabledAlpha", 20, 20, 310, 5 )
UI_LoadImage( chkEnabledAlpha, "texture/ui/editor/texalpha.png", CHECKED, 20, 20, 0, 0 )
UI_LoadImage( chkEnabledAlpha, "texture/ui/editor/texalpha.png", UNCHECKED, 20, 20, 0, 20 )

chkSmooth = UI_CreateCompent( frmEditor, CHECK_TYPE, "chkSmooth", 20, 20, 330, 5 )
UI_LoadImage( chkSmooth, "texture/ui/editor/smooth.png", CHECKED, 20, 20, 0, 0 )
UI_LoadImage( chkSmooth, "texture/ui/editor/smooth.png", UNCHECKED, 20, 20, 0, 20 )

chkHideTree = UI_CreateCompent( frmEditor, CHECK_TYPE, "chkHideTree", 20, 20, 350, 5 )
UI_LoadImage( chkHideTree, "texture/ui/editor/hidetree.png", CHECKED, 20, 20, 0, 0 )
UI_LoadImage( chkHideTree, "texture/ui/editor/hidetree.png", UNCHECKED, 20, 20, 0, 20 )

-- Toolbar hints (hover); tree graph items use UI_TreeGraphItemSetHint with graph item ids.
UI_SetHint( chkSize01, "Brush size 1 - smallest terrain / region footprint" )
UI_SetHint( chkSize02, "Brush size 2 - medium footprint" )
UI_SetHint( chkSize03, "Brush size 3 - largest footprint" )
UI_SetHint( chkWireFrame, "Toggle terrain wireframe overlay" )
UI_SetHint( chkModifyHeight, "Terrain mode: raise/lower height with LMB drag instead of texture paint" )
UI_SetHint( chkEnabledAlpha, "Terrain paint: enable texture alpha blending" )
UI_SetHint( chkSmooth, "After each height stroke, smooth/blend nearby heights (UIEditor-style)" )
UI_SetHint( chkHideTree, "Hide or show this resource tree panel" )

local start = 380

btnColor = UI_CreateCompent( frmEditor, BUTTON_TYPE, "btnColor", 14, 20, start, 5 )
UI_LoadImage( btnColor, "texture/ui/white.png", NORMAL, 1, 1, 0, 0  )
UI_LoadImage( btnColor, "texture/ui/white.png", HOVER, 1, 1, 0, 0 )
UI_LoadImage( btnColor, "texture/ui/white.png", DOWN, 1, 1, 0, 0 )
UI_LoadImage( btnColor, "texture/ui/white.png", DISABLE, 1, 1, 0, 0 )
UI_SetHint( btnColor, "Current terrain paint color; click to open color picker" )

start = start + 15
chkColor = UI_CreateCompent( frmEditor, CHECK_TYPE, "chkColor", 20, 20, start, 5 )
UI_LoadImage( chkColor, "texture/ui/editor/color.png", CHECKED, 20, 20, 0, 0 )
UI_LoadImage( chkColor, "texture/ui/editor/color.png", UNCHECKED, 20, 20, 0, 20 )
UI_SetHint( chkColor, "Terrain mode: paint vertex color instead of texture" )

start = start + 20
chkShowLightBrush = UI_CreateCompent( frmEditor, CHECK_TYPE, "chkShowLightBrush", 20, 20,start, 5 )
UI_LoadImage( chkShowLightBrush, "texture/ui/editor/lightcolor.png", CHECKED, 20, 20, 0, 0 )
UI_LoadImage( chkShowLightBrush, "texture/ui/editor/lightcolor.png", UNCHECKED, 20, 20, 0, 20 )
UI_SetHint( chkShowLightBrush, "Show catalog point-light brush preview on terrain tint" )


start = start + 25
ckhShowCompass =  UI_CreateCompent( frmEditor, CHECK_TYPE, "ckhShowCompass", 20, 20, start, 5 )
UI_LoadImage( ckhShowCompass, "texture/ui/editor/compass.png", CHECKED, 20, 20, 0, 0 )
UI_LoadImage( ckhShowCompass, "texture/ui/editor/compass.png", UNCHECKED, 20, 20, 0, 20 )
UI_SetHint( ckhShowCompass, "Toggle compass / axis helper in the editor view" )

start = start + 18
-- ,
ckhHideOptionEx = UI_CreateCompent( frmEditor, CHECK_TYPE, "ckhHideOptionEx", 20, 20, start, 5 )
UI_LoadImage( ckhHideOptionEx, "texture/ui/editor/hideoption.png", CHECKED, 32, 32, 0, 0 )
UI_LoadImage( ckhHideOptionEx, "texture/ui/editor/hideoption.png", UNCHECKED, 32, 32, 0, 32 )
UI_SetHint( ckhHideOptionEx, "Hide the extended editor option bar (top strip)" )

imgEditorEx = UI_CreateCompent( frmEditor, IMAGE_TYPE, "imgEditorEx", 245, 65, 570, 0 )
UI_LoadImage( imgEditorEx,  "texture/ui/editor/bkg.png", NORMAL, 30, 16, 0, 0 )
UI_SetAlpha( imgEditorEx, 80 )

-- 
lblSetMainChaPos = UI_CreateCompent( frmEditor, LABEL_TYPE, "lblSetMainChaPos", 40, 30, 575, 0 )
UI_SetCaption( lblSetMainChaPos, "Instant\nMovement" )
UI_SetTextColor( lblSetMainChaPos, COLOR_WHITE )

edtSetMainChaPos = UI_CreateCompent( frmEditor, EDIT_TYPE, "edtSetMainChaPos", 100, 30, 610, 0 )
UI_LoadImage( edtSetMainChaPos, "texture/ui/editor/edit.png", NORMAL, 128, 32, 0, 0 )

lblSetBrushHeight = UI_CreateCompent( frmEditor, LABEL_TYPE, "lblSetBrushHeight", 40, 30, 715, 0 )
UI_SetCaption( lblSetBrushHeight, "Brush\nAltitude" )
UI_SetTextColor( lblSetBrushHeight, COLOR_WHITE )

edtSetBrushHeight = UI_CreateCompent( frmEditor, EDIT_TYPE, "edtSetBrushHeight", 50, 30, 755, 0 )
UI_LoadImage( edtSetBrushHeight, "texture/ui/editor/edit.png", NORMAL, 128, 32, 0, 0 )

-- 
lblShotMiniMap = UI_CreateCompent( frmEditor, LABEL_TYPE, "lblShotMiniMap", 40, 30, 575, 32 )
UI_SetCaption( lblShotMiniMap, "Mini-map\nScreenshot" )
UI_SetTextColor( lblShotMiniMap, COLOR_WHITE )

edtShotMiniMap = UI_CreateCompent( frmEditor, EDIT_TYPE, "edtShotMiniMap", 250, 30, 620, 32 )
UI_LoadImage( edtShotMiniMap, "texture/ui/editor/edit.png", NORMAL, 128, 32, 0, 0 )



lblSetIslandIndex = UI_CreateCompent( frmEditor, LABEL_TYPE, "lblSetIslandIndex", 40, 30, 200, 50)
UI_SetCaption( lblSetIslandIndex, "Island\n ID" )
UI_SetTextColor( lblSetIslandIndex, COLOR_WHITE )
edtSetIslandIndex = UI_CreateCompent( frmEditor, EDIT_TYPE, "edtSetIslandIndex", 50, 30, 250, 50)
UI_LoadImage( edtSetIslandIndex, "texture/ui/editor/edit.png", NORMAL, 128, 32, 0, 0)
-- 
lblEraseAttrib = UI_CreateCompent(frmEditor, LABEL_TYPE, "lblEraseAttrib", 40, 30, 200, 50)
UI_SetCaption(lblEraseAttrib, "Reset \n Attribute")
UI_SetTextColor(lblEraseAttrib, COLOR_WHITE)

chkEraseAttrib =  UI_CreateCompent( frmEditor, CHECK_TYPE, "chkEraseAttrib", 20, 20, 260, 50)
UI_LoadImage( chkEraseAttrib, "texture/ui/editor/lightcolor.png", CHECKED, 20, 20, 0, 0 )
UI_LoadImage( chkEraseAttrib, "texture/ui/editor/lightcolor.png", UNCHECKED, 20, 20, 0, 20 )
-- add by claude end

UI_SetHint( lblSetMainChaPos, "Teleport main character: enter world X,Y or tile coords (per client convention)" )
UI_SetHint( edtSetMainChaPos, "Instant move target position (confirm in client)" )
UI_SetHint( lblSetBrushHeight, "Absolute terrain height (Z) for exact-height brush mode" )
UI_SetHint( edtSetBrushHeight, "Brush altitude value for absolute height painting" )
UI_SetHint( lblShotMiniMap, "Minimap capture / screenshot parameters" )
UI_SetHint( edtShotMiniMap, "Minimap ix,iy,dx,dy (40-tile steps) or path" )
UI_SetHint( lblSetIslandIndex, "Default AreaSet island id (btIsland) when painting islands" )
UI_SetHint( edtSetIslandIndex, "Island id for terrain island paint" )
UI_SetHint( lblEraseAttrib, "When enabled, painting clears selected region bits instead of setting" )
UI_SetHint( chkEraseAttrib, "Erase/clear region attribute bits on painted tiles" )


trvEditor = UI_CreateCompent( frmEditor, TREE_TYPE, "trvEditor", 192 - 5, 768 - 9, 5, 5 )
-- UI_LoadImage( trvEditor,  "texture/ui/editor/frame.png", NORMAL, 1, 1, 0, 0 )
scrollid = UI_GetScroll( trvEditor )
UI_SetSize( scrollid, 15, 15 )
-- UI_LoadImage( scrollid, "texture/ui/editor/chat.png", COMPENT_BACK, 9, 9, 0, 51 )
scrollid = UI_GetScrollObj( scrollid, SCROLL_SCROLL )
UI_LoadImage( scrollid, "texture/ui/editor/scroll.png", COMPENT_BACK, 16, 32, 0, 0 )
UI_SetSize( scrollid, 10, 32 )
-- UI_SetAlpha( trvEditor, 100 )

itemid = UI_CreateTextItem( "surface", TREE_TEXT_COLOR )
sndNode = UI_CreateSingleNode( trvEditor, itemid, -1 )
	itemid = UI_CreateTextItem( "Style 1", TREE_TEXT_COLOR )
	gridid1 = UI_CreateGridNode( trvEditor, itemid, 4, 32, 32, sndNode )
	
	itemid = UI_CreateTextItem( "Style 2", TREE_TEXT_COLOR )
	gridid2 = UI_CreateGridNode( trvEditor, itemid, 4, 32, 32, sndNode )
	
	itemid = UI_CreateTextItem( "Style 3", TREE_TEXT_COLOR )
	gridid3 = UI_CreateGridNode( trvEditor, itemid, 4, 32, 32, sndNode )
		
	itemid = UI_CreateTextItem( "Public", TREE_TEXT_COLOR )
	gridid100 = UI_CreateGridNode( trvEditor, itemid, 4, 32, 32, sndNode )
	
	local n, tex_type
	n  = 1		
	while 1 do			
	    local terrain_tex = GetTerrainTextureID(n)
	    if terrain_tex==nil then break end
	    
		graphid = UI_CreateGraphItemTex( 0, 0, 32, 32, 1.0, 1.0, terrain_tex, n )
	    	
	    	tex_type = GetTerrainTextureType(n)
	    	if tex_type==1 then
		    	UI_GridNodeAddItem( gridid1, graphid )
		    	UI_TreeGraphItemSetHint( graphid, string.format("Terrain tex id %d - layer 0 brush", n) )
		end
		if tex_type==2 then 
		    	UI_GridNodeAddItem( gridid2, graphid )
		    	UI_TreeGraphItemSetHint( graphid, string.format("Terrain tex id %d - layer 0 brush", n) )
		end
		if tex_type==3 then 
		    	UI_GridNodeAddItem( gridid3, graphid )
		    	UI_TreeGraphItemSetHint( graphid, string.format("Terrain tex id %d - layer 0 brush", n) )
		end
		if tex_type==100 then 
		    	UI_GridNodeAddItem( gridid100, graphid )
		    	UI_TreeGraphItemSetHint( graphid, string.format("Terrain tex id %d - layer 0 brush", n) )
		end
		
	    	n = n + 1
	end	   	
	
itemid = UI_CreateTextItem( "Building", TREE_TEXT_COLOR )
sndNode = UI_CreateSingleNode( trvEditor, itemid, -1 )

	itemid = UI_CreateTextItem( "Argent City", TREE_TEXT_COLOR )
	gridid1 = UI_CreateGridNode( trvEditor, itemid, 4, 32, 32, sndNode )
	
	itemid = UI_CreateTextItem( "Thundoria Castle", TREE_TEXT_COLOR )
	gridid2 = UI_CreateGridNode( trvEditor, itemid, 4, 32, 32, sndNode )
			
	itemid = UI_CreateTextItem( "Shaitan City", TREE_TEXT_COLOR )
	gridid3 = UI_CreateGridNode( trvEditor, itemid, 4, 32, 32, sndNode )
				
	itemid = UI_CreateTextItem( "Icicle Castle", TREE_TEXT_COLOR )
	gridid4 = UI_CreateGridNode( trvEditor, itemid, 4, 32, 32, sndNode )
				
	itemid = UI_CreateTextItem( "Style 5", TREE_TEXT_COLOR )
	gridid5 = UI_CreateGridNode( trvEditor, itemid, 4, 32, 32, sndNode )
				
	itemid = UI_CreateTextItem( "Style 6", TREE_TEXT_COLOR )
	gridid6 = UI_CreateGridNode( trvEditor, itemid, 4, 32, 32, sndNode )
				
	itemid = UI_CreateTextItem( "Maze", TREE_TEXT_COLOR )
	gridid7 = UI_CreateGridNode( trvEditor, itemid, 4, 32, 32, sndNode )
	
	itemid = UI_CreateTextItem( "Tree", TREE_TEXT_COLOR )
	gridid8 = UI_CreateGridNode( trvEditor, itemid, 4, 32, 32, sndNode )
	
	itemid = UI_CreateTextItem( "Others", TREE_TEXT_COLOR )
	gridid9 = UI_CreateGridNode( trvEditor, itemid, 4, 32, 32, sndNode )
		
	itemid = UI_CreateTextItem( "Public", TREE_TEXT_COLOR )
	gridid100 = UI_CreateGridNode( trvEditor, itemid, 4, 32, 32, sndNode )
	
	itemid = UI_CreateTextItem( "dummy item", TREE_TEXT_COLOR )
	gridid200 = UI_CreateGridNode( trvEditor, itemid, 4, 32, 32, sndNode )

	-- SceneObjInfo rows (MaxSceneObjType in kop.cfg); same order as legacy editor.lua (tex_id first).
	local function editor_valid_tex_id( id )
		return id ~= nil and id ~= 0 and id ~= -1
	end
	n  = 1
	local maxSceneObj = 1380
	while n <= maxSceneObj do
		local tex_id = GetSceneObjPhotoTexID(n)
		if tex_id ~= nil and tex_id ~= 0 then
			graphid = UI_CreateGraphItemTex( 0, 0, 32, 32, 1.0, 1.0, tex_id, n  )
			if graphid ~= nil then
				local tex_type = GetSceneObjPhotoTexType(n)
				if tex_type == 1 then
					UI_GridNodeAddItem( gridid1, graphid )
				end
				if tex_type == 2 then
					UI_GridNodeAddItem( gridid2, graphid )
				end
				if tex_type == 3 then
					UI_GridNodeAddItem( gridid3, graphid )
				end
				if tex_type == 4 then
					UI_GridNodeAddItem( gridid4, graphid )
				end
				if tex_type == 5 then
					UI_GridNodeAddItem( gridid5, graphid )
				end
				if tex_type == 6 then
					UI_GridNodeAddItem( gridid6, graphid )
				end
				if tex_type == 7 then
					UI_GridNodeAddItem( gridid7, graphid )
				end
				if tex_type == 8 then
					UI_GridNodeAddItem( gridid8, graphid )
				end
				if tex_type == 9 then
					UI_GridNodeAddItem( gridid9, graphid )
				end
				if tex_type == 100 then
					UI_GridNodeAddItem( gridid100, graphid )
				end
				if tex_type == 200 then
					UI_GridNodeAddItem( gridid200, graphid )
				end
				-- Hint text set in C++ (UI_GridNodeAddItem) from SceneObjInfo szName.
			end
		end
		n = n + 1
	end

			
	itemid = UI_CreateTextItem( "Character", TREE_TEXT_COLOR )
	gridid1 = UI_CreateGridNode( trvEditor, itemid, 4, 32, 32, -1 )
	n  = 1
	local valid_cnt = 0
	local maxCha = 350 -- MaxChaType in kop.cfg
	while n <= maxCha do
	    local tex_id = GetChaPhotoTexID(n)
	    if tex_id ~= nil and tex_id ~= 0 then
		graphid = UI_CreateGraphItemTex( 0, 0, 32, 32, 1.0, 1.0, tex_id, n  )
		if graphid ~= nil then
	    		UI_GridNodeAddItem( gridid1, graphid )
	        	valid_cnt = valid_cnt + 1
		end
	    end
	    n = n + 1
	end

-- sRegion/MPTile::setRegion index 1..16 (bit n-1); thumbnail grid uses taller cells for readability.
-- Build lighter tree sections before the large Effect scan (4200 ids) so Map List etc. appear while loading.
local region_attr_hints = {
	[1] = "1: Land - sRegion bit 1 (0x0001)",
	[2] = "2: Safe zone - 0x0002",
	[3] = "3: PK area - 0x0004",
	[4] = "4: Bridge - 0x0008",
	[5] = "5: No monster - 0x0010",
	[6] = "6: Mine - 0x0020",
	[7] = "7: Fight ask - 0x0040",
	[8] = "8: sRegion bit 8 - 0x0080",
	[9] = "9: sRegion bit 9 - 0x0100",
	[10] = "10: sRegion bit 10 - 0x0200",
	[11] = "11: sRegion bit 11 - 0x0400",
	[12] = "12: sRegion bit 12 - 0x0800",
	[13] = "13: sRegion bit 13 - 0x1000",
	[14] = "14: sRegion bit 14 - 0x2000",
	[15] = "15: sRegion bit 15 - 0x4000",
	[16] = "16: sRegion bit 16 - 0x8000",
}
itemid = UI_CreateTextItem( "Region attribute", TREE_TEXT_COLOR )
gridid = UI_CreateGridNode( trvEditor, itemid, 4, 36, 44, -1 )
	n = 1
	while 1 do
	    name = "texture/photo/sceneobj/Icicle Statue 01.png"
	    tex_id = GetTextureID( name )
	    if editor_valid_tex_id( tex_id ) then
		    graphid = UI_CreateGraphItemTex( 0, 0, 32, 40, 1.0, 1.0, tex_id, n  )
		    UI_GridNodeAddItem( gridid, graphid )
		    UI_TreeGraphItemSetHint( graphid, region_attr_hints[n] or ("Region attribute " .. tostring(n)) )
	    end
	    n = n + 1
            if n==17 then break end
	end

itemid = UI_CreateTextItem( "Island ID", TREE_TEXT_COLOR )
gridid = UI_CreateGridNode( trvEditor, itemid, 4, 32, 32, -1 )
	n = 1
	while 1 do
	    name = "texture/photo/sceneobj/Icicle Statue 01.png"
	    tex_id = GetTextureID( name )
	    if editor_valid_tex_id( tex_id ) then
		    graphid = UI_CreateGraphItemTex( 0, 0, 30, 30, 1.0, 1.0, tex_id, n  )
		    UI_GridNodeAddItem( gridid, graphid )
		    UI_TreeGraphItemSetHint( graphid, string.format("Island terrain id %d", n) )
	    end
	    n = n + 1
            if n==2 then break end
	end

itemid = UI_CreateTextItem( "Map List", TREE_TEXT_COLOR )
gridid = UI_CreateGridNode( trvEditor, itemid, 4, 32, 32, -1 )
	local max_map_photo_id = 50
	local mapinfo_ids = {}
	local mapinfo_count = 0
	local last_map_id = 0

	local function load_mapinfo_ids(path)
		if io == nil or io.open == nil then
			return false
		end

		local file = io.open(path, "r")
		if file == nil then
			return false
		end

		for line in file:lines() do
			local comment_pos = string.find(line, "//", 1, true)
			if comment_pos ~= nil then
				line = string.sub(line, 1, comment_pos - 1)
			end

			local map_id = tonumber(string.match(line, "^%s*(%d+)"))
			if map_id ~= nil and map_id > 0 and map_id <= max_map_photo_id then
				if mapinfo_ids[map_id] ~= 1 then
					mapinfo_count = mapinfo_count + 1
				end
				mapinfo_ids[map_id] = 1
				if map_id > last_map_id then
					last_map_id = map_id
				end
			end
		end

		file:close()
		return mapinfo_count > 0
	end

	load_mapinfo_ids("scripts/table/mapinfo.txt")

	if mapinfo_count == 0 then
		last_map_id = max_map_photo_id
	end

	local map_graph_count = 0
	n = 1
	while 1 do
		if mapinfo_count == 0 or mapinfo_ids[n] == 1 then
		    name = "texture/photo/sceneobj/map"..n..".png"
		    tex_id = GetTextureID( name )
		    if editor_valid_tex_id( tex_id ) then
			    graphid = UI_CreateGraphItemTex( 0, 0, 30, 30, 1.0, 1.0, tex_id, n  )
			    UI_GridNodeAddItem( gridid, graphid )
			    map_graph_count = map_graph_count + 1
		    end
		end
	    n = n + 1
            if n > last_map_id then break end
	end
	if map_graph_count == 0 and mapinfo_count > 0 then
		n = 1
		while 1 do
		    name = "texture/photo/sceneobj/map"..n..".png"
		    tex_id = GetTextureID( name )
		    if editor_valid_tex_id( tex_id ) then
			    graphid = UI_CreateGraphItemTex( 0, 0, 30, 30, 1.0, 1.0, tex_id, n  )
			    UI_GridNodeAddItem( gridid, graphid )
		    end
		    n = n + 1
            if n > max_map_photo_id then break end
		end
	end

itemid = UI_CreateTextItem( "Character Image", TREE_TEXT_COLOR )
gridid = UI_CreateGridNode( trvEditor, itemid, 4, 32, 32, -1 )
	n = 0
	while 1 do
	    name = "texture/photo/part"..(n+1)..".png"
	    tex_id = GetTextureID( name )
	    if editor_valid_tex_id( tex_id ) then
		    graphid = UI_CreateGraphItemTex( 0, 0, 30, 30, 1.0, 1.0, tex_id, n  )
		    UI_GridNodeAddItem( gridid, graphid )
	    end
	    n = n + 1
            if n==5 then break end
	end

itemid = UI_CreateTextItem( "Mouse Shape", TREE_TEXT_COLOR )
gridid = UI_CreateGridNode( trvEditor, itemid, 4, 32, 32, -1 )
	n = 1
	while 1 do
	    name = "texture/photo/mouse"..n..".png"
	    tex_id = GetTextureID( name )
	    if editor_valid_tex_id( tex_id ) then
		    graphid = UI_CreateGraphItemTex( 0, 0, 30, 30, 1.0, 1.0, tex_id, n  )
		    UI_GridNodeAddItem( gridid, graphid )
	    end
	    n = n + 1
            if n==21 then break end
	end

itemid = UI_CreateTextItem( "Character Effect", TREE_TEXT_COLOR )
gridid = UI_CreateGridNode( trvEditor, itemid, 4, 32, 32, -1 )
	n = 0
	while 1 do
	    name = "texture/photo/chareffect"..(n+1)..".png"
	    tex_id = GetTextureID( name )
	    if editor_valid_tex_id( tex_id ) then
		    graphid = UI_CreateGraphItemTex( 0, 0, 30, 30, 1.0, 1.0, tex_id, n  )
		    UI_GridNodeAddItem( gridid, graphid )
	    end
	    n = n + 1
            if n==2 then break end
	end

-- Effect catalog last: 0..4200 scan is slow; frmEditor is shown before this script finishes.
itemid = UI_CreateTextItem( "Effect", TREE_TEXT_COLOR )
gridid = UI_CreateGridNode( trvEditor, itemid, 4, 32, 32, -1 )
	n = 0
	local maxEffect = 4200 -- MaxEffectType in kop.cfg
	while n <= maxEffect do
	    local tex_id = GetEffectPhotoTexID(n)
	    if tex_id ~= nil and tex_id ~= 0 then
		    graphid = UI_CreateGraphItemTex( 0, 0, 30, 30, 1.0, 1.0, tex_id, n  )
		    if graphid ~= nil then
			    UI_GridNodeAddItem( gridid, graphid )
		    end
	    end
	    n = n + 1
	end
