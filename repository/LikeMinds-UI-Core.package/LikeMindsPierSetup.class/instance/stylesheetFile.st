as yet unclassified
stylesheetFile
	^ stylesheetFile ifNil: [
		stylesheetFile := (PRFile named: 'defaultCss')
		filename: 'style.css';
		mimetype: 'text/css';
		contents: 
'
/* HEADER */
.icon a {outline: none; background: white;}

/*BLOG*/
div.post {margin-bottom: 4.5em;}
div.comment {margin-bottom: 3em;}
.meta {font-size: 80%; color: #aaa;}
.leavecomment {margin-top: 4.5em; margin-bottom: 4.5em;}
.comments {margin-top: 4.5em;}


/* NAVIGATION */
.sidebar ul {
	margin-top: 0;
	margin-left: 0;
	list-style-type: none;}
.sidebar ul ul {
	margin-bottom: 0;
	margin-left: 1.5em;}
.sidebar ul li {
	margin-top: 1.5em;}
.sidebar ul li a {
	padding-left: 0.3em;
	padding-right: 0.3em;
	padding-top: 0.3em;
	padding-bottom: 0.3em;}
.sidebar p,
.sidebar h1, .sidebar h2, .sidebar h3,
.sidebar .postticker .timestamp,
.sidebar .postticker .summary {padding-left: 0.3em;}
.sidebar .active,

/*MAIN BODY*/
.mainbody {
	padding-top: 4em;
	padding-bottom: 15em;}
.postticker ul {
	font-size: 80%;
	color: #aaa;
	list-style: none;
	margin-left: 0;}
.postticker ul li {
	margin-bottom: 1.5em;}
.postticker .timestamp {color: #aaa; font-size: 80%;}
.postticker .subscribe,
.postticker .timestamp .time,
.postticker .timestamp .author {display: none;}
.postticker a.post {color: #aaa;}


/* FOOTER */
.footer {
	background-color: white;
	color: #aaa;
	font-size: 80%;
	text-align: left;}
.footer a { color: #aaa;}
.footer ul {list-style: none; margin-left: 0em;}
.footer ul ul {margin-left: 1.5em;}
.footer .commands ul, .footer .views ul {display: inline;}
.footer .commands ul li, .footer .views ul li {display: inline; padding-right: 1em;}


/* META */
.metaenvironment h1.heading {display: none;}
.metaheader {background: #C3D9FF; font-size: 200%}
.metaheader ul {display: inline; margin: 0;}
.metaheader li {list-style: none; display: inline; margin: 0;}
.metaheader li:after {content: "/"}
.metaenvironment.container {border: 1px solid #C3D9FF; margin-top: 0;}
.metafooter {background: #C3D9FF;}
.metafooter li {list-style: none;}


/*DEFAULT*/
body {margin-top: 0;}
h1, h2, h3, h4, h5, h6 { margin: 0; font-weight: inherit; font-size: 100%; line-height: inherit; color: #ff6633; }
h1.heading { font-size: 2em; margin-bottom: 1.5em; }
h1 { font-size: 1.5em; line-height: 1; margin-bottom: 1em; }
.maincontents {font-size: 1.5em;}
h2 { font-size: 1.2em; height: 1.25em; line-height: 1.25; margin-bottom: 1.25em; }
h3 { font-size: 1em; font-weight: bold; margin-bottom: 1.5em; }
h4 { font-size: 1em; font-weight: bold; }
h5 { font-size: 1em; }

input[type="button"], input[type="submit"], input[type="reset"], input[type="file"], button { margin-left: 0.5em;} 


/* PIER */
.broken { color: red; font-weight: lighter;}
.protected { color: #aaa; }
a {color: #ff6633;}
a:hover {
	color: black;
	/* background: #ff6633; */
}
a:hover.nobackground {background: white;}
a.view, a.command {color: gray;}
a {text-decoration: none;}
a.environment:after {content: "*";}
.right {text-align: right;}
.left {text-align: left;}
.center {text-align: center;}
.float {float: right;}
.nobullets ul {list-style: none; margin-left: 0;}
.nobullets ul li {list-style: none; margin-left: 0;}
tr th {background: #eee; font-weight: normal;}
label {font-weight: normal;}
tr.group th {background: white; font-size: 1em; font-weight: bold; margin-top: 1.5em; }
td.required:after {color: #ff6633; content: "*"; margin-left: 0.5em;}
';
		yourself]