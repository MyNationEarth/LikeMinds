visualisation
createVisualisationFor: html
	| graph |
	graph := html infoVis radialGraph.
	self jsVariableName: graph variableNameNeeded.
	graph 
		levelDistance: 190;
		duration: 500;
		transition: InfoVisTransition quartetic easeInOut.
	graph background canvasStyles strokeStyle: '#efe'.
	graph navigationOptions
		panning: false;
		zooming: false.
	graph nodeOptions
		dimension: 60;
		overridable: true.
	graph nodeStyleOptions
		clickColor: '600020'.
		"renderNative"
	graph edgeOptions
		color: self edgeColor;
		overridable: true.
	graph eventOptions
		onClick: (
			((JSStream on: 'if (!node.data.leaf) {')
				nextPutAll: (graph variableNameNeeded, '.onClick(node.id)');
				nextPutAll: '} else { toggleNavigation(); }';
				asFunction: #(node)),
			(html jQuery ajax
				callback: [:value | self nodeSelected: (self passengerAt: value)]
				value: (graph firstArgument nextPutAll: '.id');
				script: [ :s | s << (s jQuery: #cqNowBody) html: [:renderer | self parent renderBodyOn: renderer]])
		).
	graph onCreateLabel: 
		((self labelFunctionFor: graph) asFunction: #(label node)).
	graph onPlaceLabel: 
		((self placeLabelFunctionFor: graph) asFunction: #(label node)).
	self setDefaultOptions: graph.
	^ graph