as yet unclassified
addChildToPerspective: parent
	| fields |
	fields := Dictionary new.
	self perspective: 
		(self system 
			newPerspectiveParent: parent
			fields: fields
			owner: self context user mind)