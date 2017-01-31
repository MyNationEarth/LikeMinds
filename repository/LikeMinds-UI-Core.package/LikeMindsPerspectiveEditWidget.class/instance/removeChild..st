as yet unclassified
removeChild: child
	child isSystemPerspective ifFalse: [
		self system 
			removePerspective: child 
			parent: child parent
			owner: self context user mind.
		
		child == perspective ifTrue: [
			self perspective: child parent
		]
	]