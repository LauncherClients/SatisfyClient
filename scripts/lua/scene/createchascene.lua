-- 场景
nCreateScene = CLU.SN_CreateScene(enumCreateChaScene, "CreateChaScene", "", FORM_CREATE_CHA, 300, 200, 100, 100)

CLU.SN_SetIsShowMinimap(0)
CLU.SN_SetIsShow3DCursor(0)

-- ��UI

CLU.GP_GotoScene(nCreateScene) -- GotoScene�时的表单初始�?
