as yet unclassified
fieldsEditor
	^self context 
		at: #fieldsEditor 
		ifAbsent: [
			self context at: #fieldsEditor put:
				((LMLikeMindsFieldsEditor new)
					fields: self perspective fields;
					yourself)
		]