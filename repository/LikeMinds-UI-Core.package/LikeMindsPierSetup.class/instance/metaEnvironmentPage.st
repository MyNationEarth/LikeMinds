as yet unclassified
metaEnvironmentPage
	^ metaEnvironmentPage ifNil: [
		metaEnvironmentPage := (PRPage named: 'metaenvironment')
		title: '_Meta Environment';
		hideFromMenus: true;
		contents: '{{{<div class="container metaenvironment">
	<div class="span-24 last metaheader">
		Meta page: }}}+/system/components/breadcrumb+{{{
	</div>
	<div class="span-24 last">
		}}}+/system/components/contents+{{{
	</div>
	<div class="span-24 last metafooter">
		<div class="span-10">}}}+/system/components/commands+{{{</div>
		<div class="span-10 last">}}}+/system/components/sitemap+{{{</div>
	</div>
</div>}}}';
		yourself
	]