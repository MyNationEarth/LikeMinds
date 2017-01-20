as yet unclassified
contextForPerspective: p
	^self contexts detect: [:context | context perspective == p] ifNone: [nil]