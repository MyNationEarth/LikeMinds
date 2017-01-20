permissions
setOwnerPermission: permission
	(self allOwnerPermissions includes: permission) ifFalse: [self error: 'Unknown Owner Permission ', permission asString].
	self setPermission: permission on: ownerPermissions