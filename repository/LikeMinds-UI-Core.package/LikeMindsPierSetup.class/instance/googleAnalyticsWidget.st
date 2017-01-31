as yet unclassified
googleAnalyticsWidget
	^ googleAnalyticsWidget ifNil: [ 
		googleAnalyticsWidget := (PRComponent named: 'googleanalytics')
		title: 'Google Analytics';
		componentClass: PRGoogleAnalyticsWidget
	]