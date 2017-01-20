actions
checkPermission: permission for: mind
	"Check Owner"
	mind == owner
		ifTrue: [^self checkOwnerPermission: permission].
	"Check Groups"
	(group notNil and: [group members includes: mind]) 
		ifTrue: [^self checkGroupPermission: permission].
	"Check Other"
	^self checkOtherPermission: permission