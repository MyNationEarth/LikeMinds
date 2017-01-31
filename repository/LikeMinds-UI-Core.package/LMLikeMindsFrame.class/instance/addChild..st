as yet unclassified
addChild: perspective
	| fields |
	fields := Dictionary new.
	self setPerspective: 
		(self system 
			newPerspectiveParent: perspective
			fields: fields
			owner: self system administrator)