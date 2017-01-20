as yet unclassified
pathToRoot
	"I answer an array with the perspective path to the root perspective"
	^self isSystemPerspective
		ifTrue: [Array with: self]
		ifFalse: [(Array withAll: parent pathToRoot) add: self; yourself]