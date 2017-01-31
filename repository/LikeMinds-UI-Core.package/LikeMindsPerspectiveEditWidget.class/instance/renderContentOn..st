as yet unclassified
renderContentOn: html
	"I render the perspective viewer / editor"
	html div
		id: 'perspectiveTree';
		with: [html render: self treeComponent].
	perspective displayImage ifNotNil: [
		html image document: perspective displayImage contents mimeType: perspective displayImage mimeType
	].
	html div 
		class: 'span-44';
		with: [
			html render: self perspectiveComponent.
		].