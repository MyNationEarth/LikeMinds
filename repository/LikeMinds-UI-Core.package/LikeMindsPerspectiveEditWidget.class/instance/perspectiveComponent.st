as yet unclassified
perspectiveComponent
	"Answer the perspective component or create a new one if it doesn't exist"
	^self components at: #perspective ifAbsent: [self buildPerspectiveComponent]