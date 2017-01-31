as yet unclassified
renderBodyOn: html
	html div
		class: 'perspectiveInformation span-30';
		with: [
			html heading level1; with: perspective displayName.
			html paragraph with: perspective comment.
		].
	html div
		class: 'perspectiveImage span-13 append-bottom rounded6';
		style: 'float:right';
		with: [
			perspective displayImage isNil
				ifTrue: [html text: perspective displayName]
				ifFalse: [
					html image
						class: 'rounded6';
						document: perspective displayImage contents 
						mimeType: perspective displayImage mimeType
				]
		].

	html div
		class: 'fieldEditorOptions';
		with: [html render: self fieldEditorOptions].
	html div
		class: 'fieldEditorAccordion clear';
		with: [
			html paragraph: 'To Edit the information displayed in your "' + perspective displayName + '" perspective, select from the groups below.'.
			html render: self fieldEditorAccordion.
		].