as yet unclassified
fieldEditorOptions
	^self components at: #fieldEditorOptions ifAbsentPut: [self buildFieldEditorOptions]