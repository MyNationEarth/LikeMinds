as yet unclassified
createGroup
	| group |
	(group := self groupClass withParent: target)
		owner: self owner.
	self modifyGroup: group.
	target groups add: group.
	group events add: self.
	^group