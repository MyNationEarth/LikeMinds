public api
findMindWithId: aUUID
	^perspective members detect: {:mind | mind.id = aUUID} ifNone: [nil]