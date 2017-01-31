uploaded
LikeMindsStylesCss
	^ '@charset "UTF-8";
/* CSS Document */

.grass {
	background-image: url(grassTile.jpg);
	z-index: -1;
}

.logoBlock {
	height: 13.5em;
}

.logoTextBlock {
	margin-top: 3em;
}

.likeMindsUtilityPanel {
	background-color: #FFFFFF;
	position: relative;
	z-index: 15;
}

.commands ul li {
	display: inline;

}

.commands ul {
	display: inline;
	list-style-type: none;
}

.content {
	background-color: #FFFFFF;
	position: relative;
	min-height:450px;
	z-index: 10;
}

.transparent65 {
	filter:alpha(opacity=65);
	-moz-opacity:0.65;
	-khtml-opacity: 0.65;
	opacity: 0.65;
}

.transparent85 {
	filter:alpha(opacity=85);
	-moz-opacity:0.85;
	-khtml-opacity: 0.85;
	opacity: 0.85;
}

.rounded4 {
    -moz-border-radius: 4px;
    -webkit-border-radius: 4px;
    -khtml-border-radius: 4px;
    border-radius: 4px;
}

.rounded6 {
    -moz-border-radius: 6px;
    -webkit-border-radius: 6px;
    -khtml-border-radius: 6px;
    border-radius: 6px;
}

.rounded8 {
    -moz-border-radius: 8px;
    -webkit-border-radius: 8px;
    -khtml-border-radius: 8px;
    border-radius: 8px;
}

.shadow4 {
	-moz-box-shadow: 2px 2px 6px #000;
	-webkit-box-shadow: 2px 2px 6px #000;
	box-shadow: 2px 2px 6px #000;
}

.shadow10 {
	-moz-box-shadow: 6px 6px 12px #000;
	-webkit-box-shadow: 6px 6px 12px #000;
	box-shadow: 6px 6px 12px #000;
}

.search input {
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	-khtml-border-radius: 4px;
	border-radius: 4px;
}

.search input.text {
	width: 262px;
}

.search ul {
	margin: 0;
	margin-top: 5px;
	padding: 0;
	background: white;
	list-style-type: none;
	border: 1px solid #ff6633;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	-khtml-border-radius: 6px;
    border-radius: 6px;
}
.search li a {	color: black;}
.search li.selected a {color: #fff;}
.search li.selected {
	background-color: #ff6633;
	color: white;}
.search li {
	margin: 0;
	display: block;
	padding: 0.2em;
	cursor: pointer;
	list-style-type: none;}

.poweredBy {
	color: white;
	font-weight: bold;
	text-align: right;
	position: relative;
	top: 0px;
	left: -3px;
	font-size: 10px;
	z-index: 1;
}

.patchOfGrass {
	color: white;
	font-weight: bold;
	position: relative;
	top: 0px;
	left: 3px;
	font-size: 10px;
	z-index: 1;
}

.menu ul {
	margin: 0;
	margin-top: 0.2em;
	padding-bottom: 0.1em;
	padding-left: 0.2em;
	list-style-type: none;
}

.menu ul li { display: inline; }
.menu ul li a {
	color: black;
	font-weight: bold;
	background-color: white;
	text-decoration: none;
	filter:alpha(opacity=85);
	-moz-opacity:0.85;
	-khtml-opacity: 0.85;
	opacity: 0.85;

	padding-left: 1em;
	padding-right: 1em;
	padding-top: 0.3em;
	padding-bottom: 0.3em;
    -moz-border-radius-topright: 6px;
    -moz-border-radius-topleft: 6px;
    -webkit-border-top-right-radius: 6px;
    -webkit-border-top-left-radius: 6px;
    border-top-right-radius: 6px;
    border-top-left-radius: 6px;

	margin: 0;
	margin-right: 0.5em;
	list-style-type: none;
	position:relative;
	z-index: 5;

}

.menu ul li a.active {
	z-index: 11;
}

.menu li a.active {
	color: black;
	background-color: white;
}

.menu li a:hover {
	color: #ff6633;
}

.myMenu ul {
	float: right;
	margin-right: 0.5em;
}

.breadcrumb
{
    color:#9b9b9b;
    overflow:hidden;
    margin:0px;
    padding:0px;
}

.breadcrumb li:first-child {

}

.breadcrumb li 
{
	list-style-type:none;
	float:left;
	padding-left:1em;
	-moz-border-radius-bottomright: 6px;
	-webkit-border-bottom-right-radius: 6px;
	border-bottom-right-radius: 6px;
	border-right:solid 1px #cacaca;
	border-bottom:solid 1px #cacaca;
}

.breadcrumb a
{
    display:block; 
    padding-right: 1em;
    text-decoration: none;
}
.actionButtons {
	white-space: nowrap;
}

.actionButtons a {
	white-space: nowrap;
	float: left;
	margin-right: 4px;
}

div#overlay {
	background-color: black;
	filter: alpha(opacity=30);
	-moz-opacity: 0.3;
	opacity: 0.3;
	z-index: 20;
}
'