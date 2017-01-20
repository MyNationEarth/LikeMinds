Systems
createSystemNamed: key
	| system |
	(key isKindOf: Symbol) ifFalse: [self error: 'Like Minds System keys must be Symbols.'].
	(self systems includesKey: key)
		ifTrue: [self error: 'Like Minds System with key "', key asString, '" already exists.'].
	system := (LikeMindsSystems at: key put: LikeMindsSystem new).
	system postInitialize.
	^system