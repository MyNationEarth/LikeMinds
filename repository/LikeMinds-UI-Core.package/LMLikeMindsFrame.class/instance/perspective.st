as yet unclassified
perspective
	^self context 
		at: #perspective 
		ifAbsent: [
			self setPerspective: (LikeMindsSystem current perspective)
		]