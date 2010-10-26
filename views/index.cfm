<!---<iframe src="http://musicexplained.rpxnow.com/openid/embed?token_url=http%3A%2F%2Flocalhost%3A8501%2Fsolvent%2Findex.cfm" scrolling="no" frameBorder="no" allowtransparency="true" style="width:400px;height:240px"></iframe>--->
<test></test>
<MTMarkdownOptions output='html4'>
	<!-- Add new problem and solution -->
	<!-- #renderView('viewlets/forms/addSolution')# -->
	
	<!---  <div id="wmd-editor" class="wmd-panel">
            <textarea id="source1"></textarea>
        </div>
        <div id="preview1" class="wmd-preview wmd-panel"></div>
 
        <hr/>
 
        <div id="wmd-editor" class="wmd-panel">
            <textarea id="source2"></textarea>
        </div>
        <div id="preview2" class="wmd-preview wmd-panel"></div>--->
		
		
	<!-- List problems and solutions -->
	<div id="problemWrapper"/>
		<h2><cfoutput>#Ucase(event.getValue('sCategory',''))# </cfoutput> Problems</h2>
		 <div id="problems">
			<cfloop array="#rc.problems#" index="i">
				<cfoutput>
					<dl id='#i.getIproblemId()#'>
						<dt class="sTitle#i.getIproblemId()#"><a href="#getSetting('sesBaseURL')#/solution/#Replace(i.getsTitle(),' ','+','ALL')#" title="Click to toggle">#i.getsTitle()#</a></dt>
						<dd class="options" style="float:right;">
							<ul>
								<li class="edit"><a href="">Edit</a></li>
								<li class="delete"><a href="">Delete</a></li>
							</ul>
						
						</dd>
						<dd class="resolution"><cfx_markdown textin="#i.getsSolution()#"></dd>
						<span class="resolutionMarkDown">#i.getsSolution()#</span>
						<dd class="dtResolved">#LSDateFormat(i.getdtCreated(),'short')# at #lsTimeFormat(i.getdtCreated(),'short')#</dd>
						<dd class="categories">
							<dl>
								<dt>Tags:</dt>
									<cfloop array="#i.getCategory()#" index="ii">
										<dd class="category"><a href="#event.buildLink('category')#/#ii.getsCategory()#">#ii.getsCategory()#</a></dd>
									</cfloop>
							</dl>
						</dd>
					</dl>
						
					
				</cfoutput>
			</cfloop>
			
			
		</div>
	</div>
</MTMarkdownOptions>

<cfset billy = entityLoad("problemCategory",{}) />
<!---
<cfloop array="#billy#" index="i">
<cfoutput>#i.getProblem().getIproblemId()#</cfoutput>

</cfloop>--->

<!---<cfset bully = billy.getProblem() />--->

<!---<cfdump var="#billy#">--->


