as yet unclassified
fieldEditorAccordion
	^self components at: #fieldEditorAccordion ifAbsentPut: [self buildFieldEditorAccordion]