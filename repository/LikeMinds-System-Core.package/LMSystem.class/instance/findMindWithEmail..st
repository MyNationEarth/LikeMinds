public api
findMindWithEmail: anEmailAddress
	^perspective members detect: {:mind | mind.email = anEmailAddress} ifNone: [nil]