as yet unclassified
window
	^self components at: #window ifAbsentPut: [
		(LikeMindsWindow on: [:w | ])
			id: ('likeMindsWindow');
			extent: 680 @ 500;
			closeButtonEnabled: false;
			minimizeButtonEnabled: true;
			zIndex: 15;
			title: 'Like Minds';
			yourself
	]