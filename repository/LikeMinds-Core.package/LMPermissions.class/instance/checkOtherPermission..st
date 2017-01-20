permissions
checkOtherPermission: permission
	(self allOtherPermissions includes: permission) ifFalse: [self error: 'Unknown Other Permission ', permission asString].
	^self checkPermission: permission on: otherPermissions