permissions
setGroupPermission: permission
	(self allGroupPermissions includes: permission) ifFalse: [self error: 'Unknown Group Permission ', permission asString].
	self setPermission: permission on: groupPermissions