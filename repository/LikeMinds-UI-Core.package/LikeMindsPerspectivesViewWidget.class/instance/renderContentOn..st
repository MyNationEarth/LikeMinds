as yet unclassified
renderContentOn: html
	"Make sure there is a perspective"
	self perspective.
	self ensureEditWindowStateIsClosed.

	self context isLoggedIn ifFalse: [
		html paragraph: 'Login to join or leave perspectives, and to update information.'
	].

	perspective enabled ifTrue: [
		html div
			id: 'perspectiveTree';
			class: 'perspectiveTree span-65 last';
			with: [html render: self treeComponent]
	] ifFalse: [
		html paragraph with: [html strong: 'The Global Directory is currently disabled. Please come back soon.']
	]