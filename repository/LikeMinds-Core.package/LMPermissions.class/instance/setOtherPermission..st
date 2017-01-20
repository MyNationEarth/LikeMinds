permissions
setOtherPermission: permission
	(self allOtherPermissions includes: permission) ifFalse: [self error: 'Unknown Other Permission ', permission asString].
	self setPermission: permission on: otherPermissions