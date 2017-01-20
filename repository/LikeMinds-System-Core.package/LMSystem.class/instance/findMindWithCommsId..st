public api
findMindWithCommsId: aUUID
	^perspective members detect: {:mind | mind.commsId = aUUID} ifNone: [nil]