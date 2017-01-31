as yet unclassified
removeChild: perspective
	perspective isSystemPerspective ifFalse: [
		self system 
			removePerspective: perspective 
			parent: perspective parent
			owner: self system administrator.
		self setPerspective: self perspective parent
	]