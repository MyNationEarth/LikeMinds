as yet unclassified
leavePerspectiveConfirmation: per
	| dialog |
	dialog := self components at: #leaveDialog ifAbsentPut: ((LikeMindsWindow on: [:w | | perspectiveDialog | 
		(perspectiveDialog := (LikeMindsLeavePerspectiveDialog parent:self))
			answer: [:script :confirm | 
				script add: (JSStream on: '$("overlay").hide()').
				confirm ifTrue: [
					self leavePerspective: perspectiveDialog perspective.
					script prototype element
						id: 'perspectiveTree';
						down;
						replace: self treeComponent
				].
				w closeOn: script];
			yourself]) 
		id: ('likeMindsDialog');
		title: 'Please confirm this action';
		yourself).
	dialog component perspective: per.
	^dialog