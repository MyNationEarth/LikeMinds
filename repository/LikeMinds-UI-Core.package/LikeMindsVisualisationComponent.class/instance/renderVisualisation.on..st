rendering
renderVisualisation: graph on: html
	html div
		id: graph variableNameNeeded + '-container';
		class: 'graph';
		with: [
		html div 
			class: self visualizationCssClass;
			id: graph variableNameNeeded;
			script: graph.
		" load data "
		html document addLoadScript: 
			( html jQuery getJson infoVisJson: [ self jsonData ];
				onComplete: 
					graph loadJson, 
					( graph compute: 'end' ), 
					( graph animateFor: 1000 modes: #( 'polar' ))).
		]