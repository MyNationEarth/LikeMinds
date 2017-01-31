as yet unclassified
renderContentOn: html
	html div
		class: 'box';
		with: [
			self renderBodyOn: html.
			self renderButtonsOn: html]