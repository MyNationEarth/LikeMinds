as yet unclassified
headerPage
	^ headerPage ifNil: [
		headerPage := (PRPage named: 'header')
		contents:
'{{{<div class="logoBlock span-45 prepend-1">
	<div class="likeMindsLogo span-14"><img src="/files/LikeMindsFileLibrary/LikeMindsStarSmall.png" alt=""/></div>
    <div class="logoTextBlock span-20 last">
  		<img src="/files/LikeMindsFileLibrary/LikeMindsText.png" alt="Like Minds"/>
  		<img src="/files/LikeMindsFileLibrary/TowardsAFreeWorld.png" alt="Towards a Free World"/>
       </div>
</div>

<div class="likeMindsUtilityPanel span-22 last prepend-top transparent85 rounded6 shadow4">
	<div class="span-20 prepend-1">
		<div class="commands">
			}}}+/system/components/loginLogoutCommand+{{{
		</div>
		<div class="search">
			}}}+/system/components/search+{{{
		</div>
	</div>
</div>

<div class="menu span-30 prepend-15">}}}+/system/components/menu|menu+{{{</div>
<div class="menu myMenu span-23 last">}}}+/system/components/myMenu+{{{</div>
}}}
';
		yourself
	]