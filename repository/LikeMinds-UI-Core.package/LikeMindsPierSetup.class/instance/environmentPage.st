as yet unclassified
environmentPage
	^ environmentPage ifNil: [
		environmentPage := (PRPage named: 'environment')
		title: '_Environment';
		contents: 
'{{{<div class="container" id="container">
	<div id="overlay"></div>
	<div class="grass span-69 prepend-top append-bottom rounded8">

		}}}+/system/components/header+{{{
	
		<div class="span-68 prepend-1">
	    	<div class="content span-67 transparent85 rounded6 shadow4">
				<div class="breadcrumb span-44 last append-bottom">
					}}}+/system/components/breadcrumb+{{{
				</div>
				<div class="span-65 append-bottom prepend-1">
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
	</div>}}}
	
	+/system/components/footer+
	+/system/components/windowWidget+
	+/system/components/dialogWidget+
	
{{{</div>}}}';
		yourself
	]