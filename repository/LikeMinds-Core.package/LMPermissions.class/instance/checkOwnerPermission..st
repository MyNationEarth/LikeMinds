permissions
checkOwnerPermission: permission
	(self allOwnerPermissions includes: permission) ifFalse: [self error: 'Unknown Owner Permission ', permission asString].
	^self checkPermission: permission on: ownerPermissions