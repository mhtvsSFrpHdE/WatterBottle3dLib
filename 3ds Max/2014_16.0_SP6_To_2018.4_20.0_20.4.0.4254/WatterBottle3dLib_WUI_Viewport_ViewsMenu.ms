--Functions interaction with Viewport GUI
struct WUI_Viewport_ViewsMenu(
	fn showMaterialsInViewportAs action = (
		if action == "-RealisticWithMaps" then (
			actionMan.executeAction 0 "63547"
			for myMaterial in meditMaterials do (
				enableHardwareMaterial myMaterial true
				showHWTextureMap myMaterial true
			)
		)
	)
)