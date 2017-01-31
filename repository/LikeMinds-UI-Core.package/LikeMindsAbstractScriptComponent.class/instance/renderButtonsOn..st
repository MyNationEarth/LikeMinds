as yet unclassified
renderButtonsOn: html
	html div
		class: 'clear';
		style: 'float: right;';
		with: [
			html button
				onClick: (html prototype evaluator callback: [:s | answerBlock value: s value: false]);
				with: 'Cancel'.
			html button
				onClick: (html prototype evaluator callback: [:s | answerBlock value: s value: true]);
				with: 'OK'
		]