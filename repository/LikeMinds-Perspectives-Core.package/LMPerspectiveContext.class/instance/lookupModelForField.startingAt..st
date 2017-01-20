Field Models
lookupModelForField: field startingAt: startPerspective
	"I answer a LikeMindsFieldModel for field starting"
	^(mind contextForPerspectiveOrNew: startPerspective) fieldModels
		detect: [:fieldModel | fieldModel field == field]
		ifNone: [
			startPerspective isRootPerspective 
				ifTrue: [nil]
				ifFalse: [
					(mind contextForPerspective: startPerspective parent) lookupModelForField: field
				]
		]