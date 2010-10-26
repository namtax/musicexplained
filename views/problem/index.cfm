	<!-- Display Current Problem-->
	<div id="problemWrapper"/>
		<cfoutput>	
		<!---<h2><cfoutput>#Ucase(event.getValue('sCategory',''))# </cfoutput> Problems</h2>--->
		 <div id="problems">
					<dl id='#rc.problem.getIproblemId()#'>
						<dt class="sTitle#rc.problem..getIproblemId()#"><a href="##" title="Click to toggle">#rc.problem.getsTitle()#</a></dt>
						<dd class="options" style="float:right;">
							<ul>
								<li class="edit"><a href="">Edit</a></li>
								<li class="delete"><a href="">Delete</a></li>
							</ul>
						
						</dd>
						<dd class="resolution"><cfx_markdown textin="#rc.problem.getsSolution()#"></dd>
						<span class="resolutionMarkDown">#rc.problem.getsSolution()#</span>
						<dd class="dtResolved">#LSDateFormat(rc.problem.getdtCreated(),'short')# at #lsTimeFormat(rc.problem.getdtCreated(),'short')#</dd>
						<dd class="categories">
							<dl>
								<dt>Tags:</dt>
									<cfloop array="#rc.problem.getCategory()#" index="ii">
										<dd class="category"><a href="">#ii.getsCategory()#</a></dd>
									</cfloop>
							</dl>
						</dd>
					</dl>
						
					
				</cfoutput>
			
			
		</div>
	</div>
