visualisation
onClickFunctionFor: graph

	^((JSStream on: 'if (!node.leaf) {alert(node);')
				nextPutAll: (graph variableNameNeeded, '.onClick(node.id)}');
				asFunction: #(node))