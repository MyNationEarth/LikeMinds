visualisation
labelFunctionFor: graph

	^ JSStream on: '
            label.innerHTML = node.name;
            label.onclick = function(){if (!node.data.leaf) {
			', graph variableNameNeeded, '.onClick(node.id);
            }};'