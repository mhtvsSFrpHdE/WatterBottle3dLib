--Functions interaction with 3d object
struct WStatistics (
	public
	fn doNothing = (
		loal myA = 0
	)
)
--Workaround
struct WStatistics_Workaround (
	public
	--There's a problem in 3ds max API
	--Version 2018.4
	--Known problem:
	--When selecting multiple 3d objects with shared Edit Poly modifier,
		--in a for loop the following code returns an array with wrong count propties.
			--var = (myObject.modifiers[1].GetSelection #Edge node:myObject)
		--One way to fix it by creating a new array use "as array" before use it.
		--It may because that returns a binary array.
	fn GetArraryCount myArray = (
		(myArray as array).count
	)
)