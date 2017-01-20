Field Models
modelForFieldOrNew: field
	"I answer the local LikeMindsFieldModel for field or create a new one"
	^fieldModels 
		detect: [:fieldModel | fieldModel field == field]
		ifNone: [
			fieldModels add: (LikeMindsFieldModel field: field context: self)
		]