as yet unclassified
contextForPerspectiveOrNew: p
	^(self contextForPerspective: p) ifNil: [
		self system newContextInMind: self perspective: p
	]