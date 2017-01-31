as yet unclassified
componentsPage
	^ componentsPage ifNil: [
		componentsPage := (PRPage named: 'components')
		contents: '+value:children|link+';
		yourself
	]