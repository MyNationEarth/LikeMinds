as yet unclassified
component
	^self context 
		at: #component 
		ifAbsent: [
			self context at: #component put: 
				((self perspective asComponent)
					addValidatedForm;
					addMessage: ['Edit ', self perspective displayName asString, ' Perspective']; 
					yourself)
		]