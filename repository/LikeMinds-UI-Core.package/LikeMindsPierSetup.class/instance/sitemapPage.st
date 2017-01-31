as yet unclassified
sitemapPage
	^ sitemapPage ifNil: [
		sitemapPage := (PRPage named: 'sitemap')
		addChild: ((PRComponent named: 'widget')
				componentClass: PRTreeWidget;
				yourself);
		contents:
'Sitemap
+widget+'
	]