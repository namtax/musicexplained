<!--- Execute Events --->
<cfset runEvent(event='viewlets.sideBar')>
	
<h2>Tags</h2>
	
	<!-- List Tags-->
	<ul>
		<cfoutput query="rc.categories">
			<li><a href="#event.buildLink('category')#/#rc.categories.sCategory#">#rc.categories.sCategory#</a></li>
		</cfoutput>
	</ul>

	
