--Functions interaction with Main UI
struct WUI_Viewport_MainUi(
	--Refresh information haven't updated in realtime
	fn RefreshUi = (
		suspendEditing which:#modify
		resumeEditing which:#modify
	)
)