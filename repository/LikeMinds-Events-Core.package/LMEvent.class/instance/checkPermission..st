Processing
checkPermission: permission
	"Check Owner"
	owner == target ifTrue: [^true].
	^target permissions checkPermission: permission for: owner