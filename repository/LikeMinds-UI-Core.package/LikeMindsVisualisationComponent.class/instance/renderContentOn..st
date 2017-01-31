rendering
renderContentOn: html
	| visualisation |
	visualisation := self createVisualisationFor: html.
	self renderVisualisation: visualisation on: html.