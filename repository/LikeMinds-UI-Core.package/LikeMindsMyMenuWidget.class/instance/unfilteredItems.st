as yet unclassified
unfilteredItems
	| structure children |
	self context isLoggedIn ifFalse: [^#()].
	structure :=  self context kernel mindSpaceForMind: self context user mind.
	self level isNil ifFalse: [
		^ self childrenOf: (structure parents
			at: self level
			ifAbsent: [ ^ #() ]) ].
	children := self childrenOf: structure.
	^ (children isEmpty and: [ structure isRoot not ])
		ifTrue: [ self childrenOf: structure parent ]
		ifFalse: [ children ]