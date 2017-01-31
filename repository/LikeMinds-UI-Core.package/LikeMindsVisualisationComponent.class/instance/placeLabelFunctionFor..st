visualisation
placeLabelFunctionFor: graph

	^ JSStream on: '
            var style = label.style;
            style.display = "";
            style.cursor = "pointer";

            if (node._depth <= 1) {
                /* style.fontSize = "1em";
                style.color = "#fff"; */
            
            } else {
                style.display = "none";
            }

            var left = parseInt(style.left);
			 var top = parseInt(style.top);
            var w = label.offsetWidth;
            style.left = (left - w / 2) + "px";
			 style.top = (top - 8) + "px";
'