as yet unclassified
modifyPerspective: perspective modifyFields: fields
	fields do: [:newField |
		newField description
			inject: (perspective fields detect: [:f | f id = newField id] ifNone: [perspective fields add: newField class new])
			into: [:fieldToModify :description | 
				description isReadonly ifFalse: [
					fieldToModify write: (newField readUsing: description) using: description
				].
				fieldToModify
			]
	]