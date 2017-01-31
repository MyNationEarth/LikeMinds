visualisation
setDefaultOptions: aVisualisation 

	"aVisualisation marginOptions
		top: 6;
		left: 6;
		right: 6;
		bottom: 6."

	self setDefaultLabelOptions: aVisualisation.
	self toolTipFunction ifNotNil: 
		[
			aVisualisation tipOptions renderLikeLabels;
				enable: true;
				onShow: self toolTipFunction
		].