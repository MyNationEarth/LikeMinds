Testing
isEnabled
	^self preferenceAt: #mailEnabled ifAbsent: [true]