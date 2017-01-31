as yet unclassified
templatesPage
	^ templatesPage ifNil: [
		templatesPage := (PRPage named: 'templates')
		contents: '+value:children|link+';
		yourself
	]