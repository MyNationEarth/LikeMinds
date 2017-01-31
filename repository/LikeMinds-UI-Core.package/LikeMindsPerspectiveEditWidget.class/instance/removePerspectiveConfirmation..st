as yet unclassified
removePerspectiveConfirmation: per
	| dialog |
	dialog := self components at: #removeDialog ifAbsentPut: ((LikeMindsWindow on: [:w | | perspectiveDialog | 
		(perspectiveDialog := (LikeMindsRemovePerspectiveDialog parent: self))
					answer: [:script :confirm | 
						script add: (JSStream on: '$("overlay").hide()').
						confirm ifTrue: [
							self removeChild: perspectiveDialog perspective.
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