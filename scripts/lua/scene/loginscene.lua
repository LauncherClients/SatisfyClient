-- 场景
nLoginScene = CLU.SN_CreateScene(enumLoginScene, "LOGIN", "", FORM_LOGIN, 300, 200, 100, 100)
CLU.SN_SetIsShowMinimap(0)
CLU.SN_SetIsShow3DCursor(0)

-- ��UI
--UI_ShowForm(frmLOGO, 1)

CLU.GP_GotoScene(nLoginScene) -- GotoScene�时的表单初始�?
