as yet unclassified
withParent: parent
	| permissions |
	permissions := (parent respondsTo: #permissions)
		ifTrue: [parent permissions copy "clearPermissions"]
		ifFalse: [LikeMindsPermissions new].
	^(super new)
		parent: parent;
		permissions: permissions;
		yourself