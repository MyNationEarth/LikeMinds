as yet unclassified
ensureEditWindowStateIsClosed
	"If the edit window state thinks it's visible, set it to invisible. This is needed is
	 the user navigates to another page while editing and returns"
	(self components includesKey: #editWindow) ifTrue: [
		(self components at: #editWindow) close
	]