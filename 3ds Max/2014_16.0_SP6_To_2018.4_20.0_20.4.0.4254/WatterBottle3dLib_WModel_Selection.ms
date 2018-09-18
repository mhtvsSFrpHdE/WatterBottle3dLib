--Functions interaction with 3d object
struct WModel_Material(
	public
	fn setMaterial myModel: myMaterial: = (
		myModel.material = myMaterial
	)
)
struct WModel_Selection(
	public
	fn getSelectedModel = (
		$
	)
)