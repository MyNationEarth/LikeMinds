as yet unclassified
reciprocalCopyToMind: mind
	| copy |
	"Return a new instance setup as the reciprocal list."
	(copy := self class withParent: mind)
		_key: key;
		displayName: displayName;
		comment: comment.
	copy permissions
		owner: mind;
		setOtherPermission: #leaveGroup.
	copy displayName: ((self propertyAt: #template) propertyAt: #reciprocalDisplayName).
	copy comment: ((self propertyAt: #template) propertyAt: #reciprocalComment).
	
	^copy