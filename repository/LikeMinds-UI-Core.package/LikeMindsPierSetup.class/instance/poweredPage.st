as yet unclassified
poweredPage
	^ poweredByPage ifNil: [poweredByPage := (PRPage named: 'poweredby')
		title: 'Powered By';
		contents: 
'From Jupiter Jones at the Principality of Terra Australis [Incognita]. Copyright 2010 Jupiter Jones. All Rights and Remedies Reserved';
		yourself
	]