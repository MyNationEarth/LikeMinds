as yet unclassified
blogEnvironmentPage
	^ blogEnvironmentPage ifNil: [
		blogEnvironmentPage := (PRPage named: 'blogenvironment')
		title: '_Blog Environment';
		contents: 
'{{{<div class="container">
	<div class="grass span-69 prepend-top append-bottom rounded8">

		}}}+/system/components/header+{{{
	
		<div class="span-68 prepend-1">
	    	<div class="content span-67 transparent85 rounded6 shadow4">
				<div class="span-43 prepend-top append-bottom prepend-1">
					}}}+/system/components/contents+{{{
				</div>
	        </div>
	    </div>
	
	    <div class="patchOfGrass span-20 prepend-1">
			Your own patch of grass in a free world
		</div>
	    <div class="poweredBy span-48 pull-1 last">
			}}}+/system/components/poweredby+{{{
		</div>
	</div>
	
	}}}+/system/components/footer+{{{

</div>}}}';
		yourself
	]