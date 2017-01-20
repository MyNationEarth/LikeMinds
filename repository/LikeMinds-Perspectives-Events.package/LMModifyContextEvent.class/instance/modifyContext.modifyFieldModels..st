as yet unclassified
modifyContext: context modifyFieldModels: fieldModels
	fieldModels do: [:newFieldModel |
		newFieldModel description
			inject: (context fieldModels 
				detect: [:fm | fm field = newFieldModel field]
				ifNone: [context fieldModels add: (LikeMindsFieldModel field: nil model: nil)])
			into: [:fieldModelToModify :description | 
				description isReadonly ifFalse: [
					fieldModelToModify write: (newFieldModel readUsing: description) using: description
				].
				fieldModelToModify
			]
	]