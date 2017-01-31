as yet unclassified
menuPage
	^ menuWidget ifNil: 
		[ menuWidget := (PRPage named: 'menu')
			contents:
'- *About>/about*
- *Membership>/membership*
- *Perspectives>/perspectives*
- *News>/news*';
			yourself ]