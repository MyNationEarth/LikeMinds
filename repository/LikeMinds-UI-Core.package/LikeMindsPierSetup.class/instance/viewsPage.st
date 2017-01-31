as yet unclassified
viewsPage
	^ viewsPage ifNil: [
		viewsPage := (PRPage named: 'views')
		addChild: ((PRComponent named: 'widget')
				componentClass: PRViewsWidget;
				yourself);
		contents: 'Views: +widget+'
	]