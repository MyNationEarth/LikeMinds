as yet unclassified
blogArchiveWidget
	^ blogArchiveWidget ifNil: [
		blogArchiveWidget := (PRComponent named: 'newsarchive')
		title: 'News Archive';
		componentClass: PBPostArchive;
		yourself
	]