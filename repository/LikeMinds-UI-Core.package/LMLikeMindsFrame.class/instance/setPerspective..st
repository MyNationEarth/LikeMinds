as yet unclassified
setPerspective: value
	self clearComponent.
	^self context 
		at: #perspective 
		put: value