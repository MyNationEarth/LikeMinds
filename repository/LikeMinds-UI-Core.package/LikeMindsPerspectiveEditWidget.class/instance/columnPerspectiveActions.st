as yet unclassified
columnPerspectiveActions
	^[ :value |
		[ :html | 
			html div
				class: 'actionButtons';
				with: [
					(value checkPermission: #createPerspective for: self context user mind) ifTrue: [
						html anchor
							class: 'ui-state-default';
							class: 'ui-icon ui-icon-wrench';
							callback: [
								self perspective: value.
							];
							with: 'Edit'.
						html anchor
							class: 'ui-state-default';
							class: 'ui-icon ui-icon-plus';
							callback: [
								self addChildToPerspective: value.
								self treeComponent expand: value.
							];
							with: 'Add'.
					].
					(value isRoot or: [value hasChildren]) ifFalse: [
						(value checkPermission: #removeGroup for: self context user mind) ifTrue: [
							html anchor
								class: 'ui-state-default';
								class: 'ui-icon ui-icon-minus';
								onClick: (html prototype evaluator
									callback: [ : script | 
										script add: (JSStream on: 'Element.fullscreen("overlay")'). 
										(self removePerspectiveConfirmation: value) openOn: script.
										script add: (JSStream on: 'Element.center("likeMindsDialog")')
									]);
								with: 'Remove'.
						]
					]
				]
		]
	]