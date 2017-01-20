as yet unclassified
execute
	|  context |
	self checkPermission: #createContext.

	context := (target contextForPerspective: source) ifNil: [
		target contexts add:
			((LikeMindsContext new)
				mind: target;
				perspective: source;
				yourself)
	].
	context owner: self owner.
	context permissions
		setOwnerPermission: #addConversation;
		setOwnerPermission: #removeConversation.

	self modifyContext: context.	
	context events add: self.
	^context