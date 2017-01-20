Field Models
lookupDefaultForField: field
	"I answer the default model for field lookup up the perspective hierarchy or nil is this is the root" 
	^perspective isRootPerspective 
		ifTrue: [nil]
		ifFalse: [self lookupModelForField: field startingAt: perspective parent]