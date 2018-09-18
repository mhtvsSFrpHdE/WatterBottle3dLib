--Functions interaction with CompactMaterialEditor GUI
struct WUI_CompactMaterialEditor(
	public
	--Get instance of selected material in editor
	fn getSelectedMaterial = (
		getMeditMaterial activeMeditSlot
	),
	--Assign edited new material back to slot
	fn replaceSelectedMaterial newMaterial = (
		meditMaterials[activeMeditSlot] = newMaterial
	),
	--Assign selected material to 3d object
	fn setSelectedMaterialToSelectedObject = (
		$.material = getSelectedMaterial()
	),
	--Control shaded (Phong) or realistic (full detail) in viewports
	--myMaterial = Material to modify
	--action =
		--"-Shaded" = Show Shaded Material in Viewport
		--"-Realistic" = Show Realistic Material in Viewport
	fn setMaterialDisplayMethod myMaterial: action: = (
		local actionResult
		if action == "-Shaded" then (
			actionResult = false
		)
		else if action == "-Realistic" then (
			actionResult = true
		)
		
		enableHardwareMaterial myMaterial actionResult
		--Always true
		showHWTextureMap myMaterial true
		
		WUI_CompactMaterialEditor.replaceSelectedMaterial(myMaterial)
	)
)