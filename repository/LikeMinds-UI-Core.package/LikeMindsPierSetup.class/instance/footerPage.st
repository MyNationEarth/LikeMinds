as yet unclassified
footerPage
	^ footerPage ifNil: [
		footerPage := (PRPage named: 'footer')
		contents:
'{{{<div class="footer transparent85 column span-69 last">
	<div class="column span-60">
		<div class="commands">}}}+/system/components/commands+{{{</div>
		<div class="views">}}}+/system/components/views+{{{</div>
		<div class="sitemap">}}}+/system/components/sitemap+{{{</div>
	</div>
</div>}}}';
		yourself
	]