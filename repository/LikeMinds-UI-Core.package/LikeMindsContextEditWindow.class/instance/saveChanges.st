as yet unclassified
saveChanges
	self fieldEditorAccordion children do: [:contextFieldsEditor |
		contextFieldsEditor saveChanges
	]