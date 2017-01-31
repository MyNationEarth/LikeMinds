as yet unclassified
postTickerWidget
	^ postTickerWidget ifNil: [
		postTickerWidget := (PRComponent named: 'postticker')
		title: 'Post Ticker';
		componentClass: PBPostTicker;
		write: blog using: PBPostTicker descriptionBlog;
		yourself
	]