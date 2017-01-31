as yet unclassified
buildFieldEditorOptions
	^SUTabPanel new
		add: (self fieldEditorAccordion) label: 'Shared Information';
		yourself