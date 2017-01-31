as yet unclassified
updateBody: aHtmlRoot
	aHtmlRoot beXhtml10Strict.
	aHtmlRoot bodyAttributes addClass: self structure cssClass.
	aHtmlRoot meta name: 'generator'; content: 'Jupiter Jones - Like Minds'