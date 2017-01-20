as yet unclassified
reciprocalCopyToContext: context
	| copy |
	"Return a new instance with the same key, displayName, comment."
	(copy := self class withParent: context)
		_key: key;
		displayName: displayName;
		comment: comment.
	copy permissions
		owner: context mind;
		setOwnerPermission: #addMembers;
		setOwnerPermission: #removeMembers;
		setOwnerPermission: #copyGroup.
	copy propertyAt: #template put: self. 
	
	^copy