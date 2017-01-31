as yet unclassified
columnPerspective
	^[:value | 
		[: html | 
			html div
				class: 'perspectiveImage span-13 rounded6';
				with: [
					value displayImage isNil
						ifTrue: [html text: value displayName]
						ifFalse: [
							html image
								class: 'rounded6';
								document: value displayImage contents 
								mimeType: value displayImage mimeType
						]
			].
			html div
				class: 'perspectiveInformation last span-' + (45 - value pathToRoot size) asString;
				with: [ | size |
					html heading level1; with: (value displayName + ' (' + (size := value members size) asString + 
						(size == 1 ifTrue: [' Member)'] ifFalse: [' Members)'])).
					html paragraph with: value comment.
			]
		]
	]