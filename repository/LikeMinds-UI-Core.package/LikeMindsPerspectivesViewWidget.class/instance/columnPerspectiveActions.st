as yet unclassified
columnPerspectiveActions
	^[ :value |
		[ :html |
		self context isLoggedIn ifTrue: [
			html div
				class: 'actionButtons';
				with: [
					(self context user mind isMemberOfPerspective: value) not &
					(value checkPermission: #joinGroup for: self context user mind) ifTrue: [
						html anchor
							class: 'ui-state-default';
							class: 'ui-icon ui-icon-plus';
							callback: [
								self joinPerspective: value.
							];
							with: 'Join'.
					].
					(self context user mind isMemberOfPerspective: value) ifTrue: [
						html anchor
							class: 'ui-state-default';
							class: 'ui-icon ui-icon-wrench';
							onClick: (html prototype evaluator
									callback: [ : script | | window visible |
										visible := (window := self editContextForPerspective: value) isVisible.
										window openOn: script.
										visible ifFalse: [script add: (JSStream on: 'Element.center("likeMindsWindow")')]
									]);
							with: 'Edit'.
						(value checkPermission: #leaveGroup for: self context user mind) 
						 & value isSystemPerspective not ifTrue: [
							html anchor
								class: 'ui-state-default';
								class: 'ui-icon ui-icon-minus';
								onClick: (html prototype evaluator
									callback: [ : script | 
										script add: (JSStream on: 'Element.fullscreen("overlay")'). 
										(self leavePerspectiveConfirmation: value) openOn: script.
										script add: (JSStream on: 'Element.center("likeMindsDialog")')
									]);
								with: 'Leave'.
						]
					]					
				]
			]
		]
	]