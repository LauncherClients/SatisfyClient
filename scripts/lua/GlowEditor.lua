-----------------------------------------------------------------------
-- Weapon Glow Editor Form (2025)
-- Background: gloweditor.png must be 600x270 (themed slots; no stretch)
-- Left: effect grid + dummy/scale end before x~420 so they sit on slot art
-- Right corner (x>=456): Lit tint HSV + presets + alpha (no overlap with Scale)
-----------------------------------------------------------------------
frmGlowEditor = CLU.UI_CreateForm("frmGlowEditor", FALSE, 700, 270, 200, 100, TRUE, FALSE)
CLU.UI_ShowForm(frmGlowEditor, FALSE)
CLU.UI_AddFormToTemplete(frmGlowEditor, FORM_MAIN)
CLU.UI_FormSetIsEscClose(frmGlowEditor, TRUE)
CLU.UI_SetIsDrag(frmGlowEditor, TRUE)
CLU.UI_SetFormStyle(frmGlowEditor, 2)
--CLU.UI_FormSetHotKey(frmGlowEditor, ALT_KEY, HOTKEY_G)

imgGlowEditorBg = CLU.UI_CreateCompent(frmGlowEditor, IMAGE_TYPE, "imgGlowEditorBg", 700, 270, -22, -20)
CLU.UI_LoadImage(imgGlowEditorBg, "texture/ui/forms/Shared/gloweditor.png", NORMAL, 700, 270, 1, 11)

-- ========== WEAPON INFO SECTION ==========
labCurrentItem = CLU.UI_CreateCompent(frmGlowEditor, LABELEX_TYPE, "labCurrentItem", 200, 16, 15, 10)
CLU.UI_SetCaption(labCurrentItem, "Current: None")
CLU.UI_SetTextColor(labCurrentItem, COLOR_WHITE)

labItemID = CLU.UI_CreateCompent(frmGlowEditor, LABELEX_TYPE, "labItemID", 150, 16, 15, 30)
CLU.UI_SetCaption(labItemID, "ID: -1")
CLU.UI_SetTextColor(labItemID, COLOR_WHITE)

labLoadMode = CLU.UI_CreateCompent(frmGlowEditor, LABELEX_TYPE, "labLoadMode", 85, 16, 110, 35)
CLU.UI_SetCaption(labLoadMode, "Load Mode:")
CLU.UI_SetTextColor(labLoadMode, COLOR_WHITE)


-- ========== LIGHT ID SECTION ==========
labLightID = CLU.UI_CreateCompent(frmGlowEditor, LABELEX_TYPE, "labLightID", 60, 16, 10, 55)
CLU.UI_SetCaption(labLightID, "Light ID:")
CLU.UI_SetTextColor(labLightID, COLOR_WHITE)

edtLightID = CLU.UI_CreateCompent(frmGlowEditor, EDIT_TYPE, "edtLightID", 70, 16, 78, 55)
CLU.UI_SetTextColor(edtLightID, COLOR_WHITE)
CLU.UI_SetEditMaxNum(edtLightID, 10)



-- ========== LIT TINT (right corner; Paint-style spectrum: hue X, saturation Y, white bottom; V=1 on pick) ==========
labTintColor = CLU.UI_CreateCompent(frmGlowEditor, LABELEX_TYPE, "labTintColor", 130, 14, 456, 32)
CLU.UI_SetCaption(labTintColor, "Lit tint")
CLU.UI_SetTextColor(labTintColor, COLOR_WHITE)

imgTintSpectrum = CLU.UI_CreateCompent(frmGlowEditor, IMAGE_TYPE, "imgTintSpectrum", 124, 84, 456, 44)
CLU.UI_LoadImage(imgTintSpectrum, "texture/ui/forms/Shared/colorpicker/colorpicker_spectrum.png", NORMAL, 124, 84, 0, 0)

labTintPresets = CLU.UI_CreateCompent(frmGlowEditor, LABELEX_TYPE, "labTintPresets", 140, 12, 456, 134)
CLU.UI_SetCaption(labTintPresets, "Saved Colour Presets")
CLU.UI_SetTextColor(labTintPresets, COLOR_WHITE)

imgTintPreset0 = CLU.UI_CreateCompent(frmGlowEditor, IMAGE_TYPE, "imgTintPreset0", 16, 16, 456, 150)
CLU.UI_LoadImage(imgTintPreset0, "texture/ui/forms//Shared/colorpicker/gloweditor_preset_0.png", NORMAL, 16, 16, 0, 0)
imgTintPreset1 = CLU.UI_CreateCompent(frmGlowEditor, IMAGE_TYPE, "imgTintPreset1", 16, 16, 476, 150)
CLU.UI_LoadImage(imgTintPreset1, "texture/ui/forms//Shared/colorpicker/gloweditor_preset_1.png", NORMAL, 16, 16, 0, 0)
imgTintPreset2 = CLU.UI_CreateCompent(frmGlowEditor, IMAGE_TYPE, "imgTintPreset2", 16, 16, 496, 150)
CLU.UI_LoadImage(imgTintPreset2, "texture/ui/forms//Shared/colorpicker/gloweditor_preset_2.png", NORMAL, 16, 16, 0, 0)
imgTintPreset3 = CLU.UI_CreateCompent(frmGlowEditor, IMAGE_TYPE, "imgTintPreset3", 16, 16, 516, 150)
CLU.UI_LoadImage(imgTintPreset3, "texture/ui/forms//Shared/colorpicker/gloweditor_preset_3.png", NORMAL, 16, 16, 0, 0)
imgTintPreset4 = CLU.UI_CreateCompent(frmGlowEditor, IMAGE_TYPE, "imgTintPreset4", 16, 16, 536, 150)
CLU.UI_LoadImage(imgTintPreset4, "texture/ui/forms//Shared/colorpicker/gloweditor_preset_4.png", NORMAL, 16, 16, 0, 0)
imgTintPreset5 = CLU.UI_CreateCompent(frmGlowEditor, IMAGE_TYPE, "imgTintPreset5", 16, 16, 556, 150)
CLU.UI_LoadImage(imgTintPreset5, "texture/ui/forms//Shared/colorpicker/gloweditor_preset_5.png", NORMAL, 16, 16, 0, 0)

labTintAlpha = CLU.UI_CreateCompent(frmGlowEditor, LABELEX_TYPE, "labTintAlpha", 36, 12, 456, 182)
CLU.UI_SetCaption(labTintAlpha, "Alpha")
CLU.UI_SetTextColor(labTintAlpha, COLOR_WHITE)

proTintAlpha = CLU.UI_CreateCompent(frmGlowEditor, PROGRESS_TYPE, "proTintAlpha", 104, 10, 492, 181)
CLU.UI_SetProgressStyle(proTintAlpha, PROGRESS_HORIZONTAL)
CLU.UI_LoadScaleImage(proTintAlpha, "texture/ui/forms/Satisfy/new3.png", PROGRESS_PROGRESS, 104, 10, 0, 153, 1.0, 1.0)
CLU.UI_SetProgressHintStyle(proTintAlpha, PROGRESS_HINT_NUM)
CLU.UI_SetProgressActiveMouse(proTintAlpha, 1)

labTintPreview = CLU.UI_CreateCompent(frmGlowEditor, LABELEX_TYPE, "labTintPreview", 140, 12, 456, 198)
CLU.UI_SetCaption(labTintPreview, "[255,255,255]")
CLU.UI_SetTextColor(labTintPreview, COLOR_WHITE)


-- ========== CHARACTER EFFECT SECTIONS (left grid; keep x <= ~410 for scale row) ==========
labEffect0 = CLU.UI_CreateCompent(frmGlowEditor, LABELEX_TYPE, "labEffect0", 100, 16, 10, 80)
CLU.UI_SetCaption(labEffect0, "Lance:")
CLU.UI_SetTextColor(labEffect0, COLOR_WHITE)

edtEffect0_0 = CLU.UI_CreateCompent(frmGlowEditor, EDIT_TYPE, "edtEffect0_0", 38, 16, 80, 80)
CLU.UI_SetTextColor(edtEffect0_0, COLOR_WHITE)
CLU.UI_SetEditMaxNum(edtEffect0_0, 6)

edtEffect0_1 = CLU.UI_CreateCompent(frmGlowEditor, EDIT_TYPE, "edtEffect0_1", 38, 16, 125, 80)
CLU.UI_SetTextColor(edtEffect0_1, COLOR_WHITE)
CLU.UI_SetEditMaxNum(edtEffect0_1, 6)

edtEffect0_2 = CLU.UI_CreateCompent(frmGlowEditor, EDIT_TYPE, "edtEffect0_2", 38, 16, 170, 80)
CLU.UI_SetTextColor(edtEffect0_2, COLOR_WHITE)
CLU.UI_SetEditMaxNum(edtEffect0_2, 6)

edtEffect0_3 = CLU.UI_CreateCompent(frmGlowEditor, EDIT_TYPE, "edtEffect0_3", 38, 16, 220, 80)
CLU.UI_SetTextColor(edtEffect0_3, COLOR_WHITE)
CLU.UI_SetEditMaxNum(edtEffect0_3, 6)

labDummy0 = CLU.UI_CreateCompent(frmGlowEditor, LABELEX_TYPE, "labDummy0", 50, 16, 248, 80)
CLU.UI_SetCaption(labDummy0, "Dummy:")
CLU.UI_SetTextColor(labDummy0, COLOR_WHITE)

edtDummy0 = CLU.UI_CreateCompent(frmGlowEditor, EDIT_TYPE, "edtDummy0", 30, 16, 296, 80)
CLU.UI_SetTextColor(edtDummy0, COLOR_WHITE)
CLU.UI_SetEditMaxNum(edtDummy0, 2)

labScale0 = CLU.UI_CreateCompent(frmGlowEditor, LABELEX_TYPE, "labScale0", 50, 16, 330, 80)
CLU.UI_SetCaption(labScale0, "Scale:")
CLU.UI_SetTextColor(labScale0, COLOR_WHITE)

edtScale0 = CLU.UI_CreateCompent(frmGlowEditor, EDIT_TYPE, "edtScale0", 46, 16, 380, 80)
CLU.UI_SetTextColor(edtScale0, COLOR_WHITE)
CLU.UI_SetEditMaxNum(edtScale0, 5)

labEffect1 = CLU.UI_CreateCompent(frmGlowEditor, LABELEX_TYPE, "labEffect1", 100, 16, 10, 105)
CLU.UI_SetCaption(labEffect1, "Carsise:")
CLU.UI_SetTextColor(labEffect1, COLOR_WHITE)

edtEffect1_0 = CLU.UI_CreateCompent(frmGlowEditor, EDIT_TYPE, "edtEffect1_0", 38, 16, 80, 105)
CLU.UI_SetTextColor(edtEffect1_0, COLOR_WHITE)
CLU.UI_SetEditMaxNum(edtEffect1_0, 6)

edtEffect1_1 = CLU.UI_CreateCompent(frmGlowEditor, EDIT_TYPE, "edtEffect1_1", 38, 16, 125, 105)
CLU.UI_SetTextColor(edtEffect1_1, COLOR_WHITE)
CLU.UI_SetEditMaxNum(edtEffect1_1, 6)

edtEffect1_2 = CLU.UI_CreateCompent(frmGlowEditor, EDIT_TYPE, "edtEffect1_2", 38, 16, 170, 105)
CLU.UI_SetTextColor(edtEffect1_2, COLOR_WHITE)
CLU.UI_SetEditMaxNum(edtEffect1_2, 6)

edtEffect1_3 = CLU.UI_CreateCompent(frmGlowEditor, EDIT_TYPE, "edtEffect1_3", 38, 16, 220, 105)
CLU.UI_SetTextColor(edtEffect1_3, COLOR_WHITE)
CLU.UI_SetEditMaxNum(edtEffect1_3, 6)

labDummy1 = CLU.UI_CreateCompent(frmGlowEditor, LABELEX_TYPE, "labDummy1", 50, 16, 248, 105)
CLU.UI_SetCaption(labDummy1, "Dummy:")
CLU.UI_SetTextColor(labDummy1, COLOR_WHITE)

edtDummy1 = CLU.UI_CreateCompent(frmGlowEditor, EDIT_TYPE, "edtDummy1", 30, 16, 296, 105)
CLU.UI_SetTextColor(edtDummy1, COLOR_WHITE)
CLU.UI_SetEditMaxNum(edtDummy1, 2)

labScale1 = CLU.UI_CreateCompent(frmGlowEditor, LABELEX_TYPE, "labScale1", 50, 16, 330, 105)
CLU.UI_SetCaption(labScale1, "Scale:")
CLU.UI_SetTextColor(labScale1, COLOR_WHITE)

edtScale1 = CLU.UI_CreateCompent(frmGlowEditor, EDIT_TYPE, "edtScale1", 46, 16, 380, 105)
CLU.UI_SetTextColor(edtScale1, COLOR_WHITE)
CLU.UI_SetEditMaxNum(edtScale1, 5)

labEffect2 = CLU.UI_CreateCompent(frmGlowEditor, LABELEX_TYPE, "labEffect2", 100, 16, 10, 132)
CLU.UI_SetCaption(labEffect2, "Phyllis:")
CLU.UI_SetTextColor(labEffect2, COLOR_WHITE)

edtEffect2_0 = CLU.UI_CreateCompent(frmGlowEditor, EDIT_TYPE, "edtEffect2_0", 38, 16, 80, 132)
CLU.UI_SetTextColor(edtEffect2_0, COLOR_WHITE)
CLU.UI_SetEditMaxNum(edtEffect2_0, 6)

edtEffect2_1 = CLU.UI_CreateCompent(frmGlowEditor, EDIT_TYPE, "edtEffect2_1", 38, 16, 125, 132)
CLU.UI_SetTextColor(edtEffect2_1, COLOR_WHITE)
CLU.UI_SetEditMaxNum(edtEffect2_1, 6)

edtEffect2_2 = CLU.UI_CreateCompent(frmGlowEditor, EDIT_TYPE, "edtEffect2_2", 38, 16, 170, 132)
CLU.UI_SetTextColor(edtEffect2_2, COLOR_WHITE)
CLU.UI_SetEditMaxNum(edtEffect2_2, 6)

edtEffect2_3 = CLU.UI_CreateCompent(frmGlowEditor, EDIT_TYPE, "edtEffect2_3", 38, 16, 220, 132)
CLU.UI_SetTextColor(edtEffect2_3, COLOR_WHITE)
CLU.UI_SetEditMaxNum(edtEffect2_3, 6)

labDummy2 = CLU.UI_CreateCompent(frmGlowEditor, LABELEX_TYPE, "labDummy2", 50, 16, 248, 132)
CLU.UI_SetCaption(labDummy2, "Dummy:")
CLU.UI_SetTextColor(labDummy2, COLOR_WHITE)

edtDummy2 = CLU.UI_CreateCompent(frmGlowEditor, EDIT_TYPE, "edtDummy2", 30, 16, 296, 132)
CLU.UI_SetTextColor(edtDummy2, COLOR_WHITE)
CLU.UI_SetEditMaxNum(edtDummy2, 2)

labScale2 = CLU.UI_CreateCompent(frmGlowEditor, LABELEX_TYPE, "labScale2", 50, 16, 330, 132)
CLU.UI_SetCaption(labScale2, "Scale:")
CLU.UI_SetTextColor(labScale2, COLOR_WHITE)

edtScale2 = CLU.UI_CreateCompent(frmGlowEditor, EDIT_TYPE, "edtScale2", 46, 16, 380, 132)
CLU.UI_SetTextColor(edtScale2, COLOR_WHITE)
CLU.UI_SetEditMaxNum(edtScale2, 5)

labEffect3 = CLU.UI_CreateCompent(frmGlowEditor, LABELEX_TYPE, "labEffect3", 100, 16, 10, 157)
CLU.UI_SetCaption(labEffect3, "Ami:")
CLU.UI_SetTextColor(labEffect3, COLOR_WHITE)

edtEffect3_0 = CLU.UI_CreateCompent(frmGlowEditor, EDIT_TYPE, "edtEffect3_0", 38, 16, 80, 157)
CLU.UI_SetTextColor(edtEffect3_0, COLOR_WHITE)
CLU.UI_SetEditMaxNum(edtEffect3_0, 6)

edtEffect3_1 = CLU.UI_CreateCompent(frmGlowEditor, EDIT_TYPE, "edtEffect3_1", 38, 16, 125, 157)
CLU.UI_SetTextColor(edtEffect3_1, COLOR_WHITE)
CLU.UI_SetEditMaxNum(edtEffect3_1, 6)

edtEffect3_2 = CLU.UI_CreateCompent(frmGlowEditor, EDIT_TYPE, "edtEffect3_2", 38, 16, 170, 157)
CLU.UI_SetTextColor(edtEffect3_2, COLOR_WHITE)
CLU.UI_SetEditMaxNum(edtEffect3_2, 6)

edtEffect3_3 = CLU.UI_CreateCompent(frmGlowEditor, EDIT_TYPE, "edtEffect3_3", 38, 16, 220, 157)
CLU.UI_SetTextColor(edtEffect3_3, COLOR_WHITE)
CLU.UI_SetEditMaxNum(edtEffect3_3, 6)

labDummy3 = CLU.UI_CreateCompent(frmGlowEditor, LABELEX_TYPE, "labDummy3", 50, 16, 248, 157)
CLU.UI_SetCaption(labDummy3, "Dummy:")
CLU.UI_SetTextColor(labDummy3, COLOR_WHITE)

edtDummy3 = CLU.UI_CreateCompent(frmGlowEditor, EDIT_TYPE, "edtDummy3", 30, 16, 296, 157)
CLU.UI_SetTextColor(edtDummy3, COLOR_WHITE)
CLU.UI_SetEditMaxNum(edtDummy3, 2)

labScale3 = CLU.UI_CreateCompent(frmGlowEditor, LABELEX_TYPE, "labScale3", 50, 16, 330, 157)
CLU.UI_SetCaption(labScale3, "Scale:")
CLU.UI_SetTextColor(labScale3, COLOR_WHITE)

edtScale3 = CLU.UI_CreateCompent(frmGlowEditor, EDIT_TYPE, "edtScale3", 46, 16, 380, 157)
CLU.UI_SetTextColor(edtScale3, COLOR_WHITE)
CLU.UI_SetEditMaxNum(edtScale3, 5)

-- ========== BUTTONS ==========
btnLoadWeapon = CLU.UI_CreateCompent(frmGlowEditor, BUTTON_TYPE, "btnLoadWeapon", 40, 16, 10, 210)
CLU.UI_LoadButtonImage(btnLoadWeapon, "texture/ui/forms/shared/tstoreb.png",40, 16, 0, 113, TRUE)
CLU.UI_SetHint(btnLoadWeapon, "Load Weapon")

btnApply = CLU.UI_CreateCompent(frmGlowEditor, BUTTON_TYPE, "btnApply", 40, 16, 100, 210)
CLU.UI_LoadButtonImage(btnApply, "texture/ui/forms/shared/tstoreb.png",40, 16, 0, 96, TRUE)
CLU.UI_SetHint(btnApply, "Apply Preview")

btnSave = CLU.UI_CreateCompent(frmGlowEditor, BUTTON_TYPE, "btnSave", 14, 15, 190, 210)
CLU.UI_LoadButtonImage(btnSave, "texture/ui/forms/shared/SatisfyALL2.png", 14, 15, 358, 96, TRUE)
CLU.UI_SetHint(btnSave, "Save to File")

btnReset = CLU.UI_CreateCompent(frmGlowEditor, BUTTON_TYPE, "btnReset", 41, 16, 220, 210)
CLU.UI_LoadButtonImage(btnReset, "texture/ui/forms/shared/SatisfyALL.png", 41, 16, 0, 1, TRUE)
CLU.UI_SetHint(btnReset, "Reset")

-- GM only (hidden for players): checked = also write GlowEditorExport.txt; unchecked = server sync only
chkGlowExportTxt = CLU.UI_CreateCompent(frmGlowEditor, CHECK_TYPE, "chkGlowExportTxt", 16, 16, 360, 210)
CLU.UI_LoadImage(chkGlowExportTxt, "texture/ui/forms/Shared/CheckSkins.png", UNCHECKED, 32, 32, 0, 0)
CLU.UI_LoadImage(chkGlowExportTxt, "texture/ui/forms/Shared/CheckSkins.png", CHECKED, 32, 32, 64, 0)

btnGlowClose = CLU.UI_CreateCompent(frmGlowEditor, BUTTON_TYPE, "btnGlowClose", 11, 11, 625, 5)
CLU.UI_LoadButtonImage(btnGlowClose, "texture/ui/forms/SatisfyNoir/PublicC.png", 11, 11, 0, 60, LUA_TRUE)
CLU.UI_SetButtonModalResult(btnGlowClose, BUTTON_CLOSE)

labOverrideItemID = CLU.UI_CreateCompent(frmGlowEditor, LABELEX_TYPE, "labOverrideItemID", 70, 16, 260, 10)
CLU.UI_SetCaption(labOverrideItemID, "Override Item ID:")
CLU.UI_SetTextColor(labOverrideItemID, COLOR_WHITE)

edtOverrideItemID = CLU.UI_CreateCompent(frmGlowEditor, EDIT_TYPE, "edtOverrideItemID", 65, 16, 350, 10)
CLU.UI_SetTextColor(edtOverrideItemID, COLOR_WHITE)
CLU.UI_SetEditMaxNum(edtOverrideItemID, 10)
CLU.UI_SetCaption(edtOverrideItemID, "0")

--------------------
cmbPreviewChar = CLU.UI_CreateCompent(frmGlowEditor, COMBO_TYPE, "cmbPreviewChar", 115, 20, 285, 50)
CLU.UI_ComboSetStyle(cmbPreviewChar, TRUE)
CLU.UI_ComboSetTextColor(cmbPreviewChar, COLOR_WHITE)
lstPreviewChar = CLU.UI_GetList(cmbPreviewChar)
CLU.UI_SetListFontColor(lstPreviewChar, COLOR_WHITE, COLOR_WHITE)
CLU.UI_SetSize(lstPreviewChar, 114, 96)
CLU.UI_SetMargin(lstPreviewChar, 16, 6, 16, 0)
CLU.UI_SetListRowHeight(lstPreviewChar, 18)
CLU.UI_LoadImage(lstPreviewChar, "texture/ui/forms/Satisfy/search.png", COMPENT_BACK, 98, 60, 0, 133)
CLU.UI_SetListIsMouseFollow(lstPreviewChar, TRUE)
CLU.UI_ListLoadSelectImage(lstPreviewChar, "texture/ui/forms/Satisfy/SystemBotton3.png", 98, 18, 0, 227)
CLU.UI_ComboSetTextColor(lstPreviewChar, COLOR_WHITE)


-- Hand: first list row is label "Save hand"; then Left / Right
cmbGlowHand = CLU.UI_CreateCompent(frmGlowEditor, COMBO_TYPE, "cmbGlowHand", 120, 20, 310, 28)
CLU.UI_ComboSetStyle(cmbGlowHand, TRUE)
CLU.UI_ComboSetTextColor(cmbGlowHand, COLOR_WHITE)
lstGlowHand = CLU.UI_GetList(cmbGlowHand)
CLU.UI_SetListFontColor(lstGlowHand, COLOR_WHITE, COLOR_WHITE)
-- 3 rows ¡Á 18px + margins: 54 was too short and only two lines showed
CLU.UI_SetSize(lstGlowHand, 118, 72)
CLU.UI_SetMargin(lstGlowHand, 16, 6, 16, 0)
CLU.UI_SetListRowHeight(lstGlowHand, 18)
CLU.UI_LoadImage(lstGlowHand, "texture/ui/forms/Satisfy/search.png", COMPENT_BACK, 98, 60, 0, 133)
CLU.UI_SetListIsMouseFollow(lstGlowHand, TRUE)
CLU.UI_ListLoadSelectImage(lstGlowHand, "texture/ui/forms/Satisfy/SystemBotton3.png", 98, 18, 0, 227)
CLU.UI_ComboSetTextColor(lstGlowHand, COLOR_WHITE)


-- Forge Try preview (before preset combo so preset dropdown stays topmost)
cmbForgeTierPreview = CLU.UI_CreateCompent(frmGlowEditor, COMBO_TYPE, "cmbForgeTierPreview", 102, 18, 150, 50)
CLU.UI_ComboSetStyle(cmbForgeTierPreview, TRUE)
CLU.UI_ComboSetTextColor(cmbForgeTierPreview, COLOR_WHITE)
lstForgeTierPreview = CLU.UI_GetList(cmbForgeTierPreview)
CLU.UI_SetListFontColor(lstForgeTierPreview, COLOR_WHITE, COLOR_WHITE)
CLU.UI_SetSize(lstForgeTierPreview, 100, 96)
CLU.UI_SetMargin(lstForgeTierPreview, 16, 6, 16, 0)
CLU.UI_SetListRowHeight(lstForgeTierPreview, 18)
CLU.UI_LoadImage(lstForgeTierPreview, "texture/ui/forms/Satisfy/search.png", COMPENT_BACK, 98, 60, 0, 133)
CLU.UI_SetListIsMouseFollow(lstForgeTierPreview, TRUE)
CLU.UI_ListLoadSelectImage(lstForgeTierPreview, "texture/ui/forms/Satisfy/SystemBotton3.png", 98, 18, 0, 227)
CLU.UI_ComboSetTextColor(lstForgeTierPreview, COLOR_WHITE)

-- ItemRefineEffectInfo preset (must be created AFTER buttons / other combos: form draws compents in order; later = on top when lists open)
cmbPresetEffectInfo = CLU.UI_CreateCompent(frmGlowEditor, COMBO_TYPE, "cmbPresetEffectInfo", 260, 20, 10, 184)
CLU.UI_ComboSetStyle(cmbPresetEffectInfo, TRUE)
CLU.UI_ComboSetTextColor(cmbPresetEffectInfo, COLOR_WHITE)
lstPresetEffectInfo = CLU.UI_GetList(cmbPresetEffectInfo)
CLU.UI_SetListFontColor(lstPresetEffectInfo, COLOR_WHITE, COLOR_WHITE)
CLU.UI_SetSize(lstPresetEffectInfo, 260, 200)
CLU.UI_SetMargin(lstPresetEffectInfo, 16, 6, 16, 0)
CLU.UI_SetListRowHeight(lstPresetEffectInfo, 18)
CLU.UI_LoadImage(lstPresetEffectInfo, "texture/ui/forms/Satisfy/search.png", COMPENT_BACK, 98, 60, 0, 133)
CLU.UI_SetListIsMouseFollow(lstPresetEffectInfo, TRUE)
CLU.UI_ListLoadSelectImage(lstPresetEffectInfo, "texture/ui/forms/Satisfy/SystemBotton3.png", 98, 18, 0, 227)
CLU.UI_ComboSetTextColor(lstPresetEffectInfo, COLOR_WHITE)


cmbLoadMode = CLU.UI_CreateCompent(frmGlowEditor, COMBO_TYPE, "cmbLoadMode", 85, 20,180, 30)
CLU.UI_ComboSetStyle(cmbLoadMode, TRUE)
CLU.UI_ComboSetTextColor(cmbLoadMode, COLOR_WHITE)
lstLoadMode = CLU.UI_GetList(cmbLoadMode)
CLU.UI_SetListFontColor(lstLoadMode, COLOR_WHITE, COLOR_WHITE)
CLU.UI_SetSize(lstLoadMode, 84, 54)
CLU.UI_SetMargin(lstLoadMode, 16, 6, 16, 0)
CLU.UI_SetListRowHeight(lstLoadMode, 18)
CLU.UI_LoadImage(lstLoadMode, "texture/ui/forms/Satisfy/search.png", COMPENT_BACK, 98, 60, 0, 133)
CLU.UI_SetListIsMouseFollow(lstLoadMode, TRUE)
CLU.UI_ListLoadSelectImage(lstLoadMode, "texture/ui/forms/Satisfy/SystemBotton3.png", 98, 18, 0, 227)
CLU.UI_ComboSetTextColor(lstLoadMode, COLOR_WHITE)
-----------------------------------------------------------------------
-- End of Weapon Glow Editor Form
-----------------------------------------------------------------------
