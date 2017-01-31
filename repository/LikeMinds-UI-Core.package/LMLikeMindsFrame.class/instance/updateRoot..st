as yet unclassified
updateRoot: aHtmlRoot
	super updateRoot: aHtmlRoot.
	aHtmlRoot beXhtml10Strict.
	aHtmlRoot meta name: 'generator'; content: 'Jupiter Jones - Like Minds'.
	aHtmlRoot title: 'Like Minds'.
	"self
		updateStyleSheets: aHtmlRoot;
		updateNavigation: aHtmlRoot;
		updateCanonical: aHtmlRoot;
		updateIcon: aHtmlRoot"