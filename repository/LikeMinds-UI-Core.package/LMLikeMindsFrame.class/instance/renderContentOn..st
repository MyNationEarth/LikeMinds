as yet unclassified
renderContentOn: html
	html heading level1; with: 'Like Minds'.
	html render: self tree.
	html render: (self component).
	html render: (self fieldsEditor).
	html form with: [
		html button 
			callback: [self addChild: self perspective];
			with: 'Add Child'.
		self perspective parent notNil ifTrue: [
			html button 
				callback: [self removeChild: self perspective];
				with: 'Remove ', self perspective displayName asString.
		].
		html button 
			callback: [self reset];
			with: 'Reset'.
	].