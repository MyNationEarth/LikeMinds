as yet unclassified
rootPerspective
	self context user mind == self system administrator ifTrue: [
		"Use the system root as the perspective"
		self perspective: self system perspective.
	] ifFalse: [
		"User the mind perspective as the perspective"
		self perspective: self context user mind perspective.
	].
	^perspective