as yet unclassified
createGroup
	| group |
	(group := self groupClass withParent: target)
		owner: self owner.
	group permissions
		setOwnerPermission: #addMembers;
		setOwnerPermission: #joinGroup;
		setOwnerPermission: #leaveGroup;
		setOwnerPermission: #copyGroup;
		setOtherPermission: #leaveGroup.
	self modifyGroup: group.
	target conversations add: group.
	group events add: self.
	^group