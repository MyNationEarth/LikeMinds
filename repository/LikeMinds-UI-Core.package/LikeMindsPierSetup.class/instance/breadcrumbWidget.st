as yet unclassified
breadcrumbWidget
	^ breadcrumbWidget ifNil: [breadcrumbWidget := (PRComponent named: 'breadcrumb')
		componentClass: PRBreadcrumbWidget;
		yourself
	]