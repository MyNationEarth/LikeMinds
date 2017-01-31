as yet unclassified
renderContentOn: html
	| fid |
	html div
		class: 'contextFieldsEditor';
		with: [
			perspective fields isEmpty ifTrue: [
				html paragraph: 'There is no information specific to the ' + perspective displayName + ' perspective'.
			] ifFalse: [
				html form
					id: (fid := html nextId);
					onSubmit: (html scriptaculous evaluator 
						triggerForm: fid;
						return: false);
					with: [
						perspective fields do: [:field |
							self renderFieldInput: field on: html.
					]
				]
			]
		].
	"For testing - to be removed"
	"html form with: [
	html button
		callback: [self cancelChanges];
		with: 'Cancel'.
	html button
		callback: [self saveChanges];
		with: 'Save'.
	]"