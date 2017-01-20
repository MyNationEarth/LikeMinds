permissions
checkGroupPermission: permission
	(self allGroupPermissions includes: permission) ifFalse: [self error: 'Unknown Group Permission ', permission asString].
	^self checkPermission: permission on: groupPermissions