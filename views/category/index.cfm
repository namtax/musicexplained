<!-- Add new problem and solution -->
	<!-- #renderView('viewlets/forms/addSolution')# -->
	
	<!-- List problems and solutions -->
	<div id="problemWrapper"/>
		<cfoutput><h2>#UCASE(rc.sCategory)# Problems</h2></cfoutput>
		 <div id="problems">
			<cfloop array="#rc.problems#" index="i">
				<cfoutput>
					<dl id='#i.getIproblemId()#'>
						<dt><a href="" title="Click to toggle">#i.getsTitle()#</a></dt>
						<dd class="options" style="float:right;">
							<ul>
								<li><a href="">Edit</a></li>
								<li class="delete"><a href="">Delete</a></li>
							</ul>
						
						</dd>
						<dd class="resolution"><cfx_markdown textin="#i.getsSolution()#"></dd>
						<dd class="dtResolved">#LSDateFormat(i.getdtCreated(),'medium')# at #lsTimeFormat(i.getdtCreated(),'short')#</dd>
						<dd class="categories">
							<dl>
								<dt>Tags:</dt>
									<cfloop array="#i.getCategory()#" index="ii">
										<dd class="category"><a href="">#ii.getsCategory()#</a></dd>
									</cfloop>
							</dl>
						</dd>
					</dl>
				</cfoutput>
			</cfloop>
		</div>
	</div>
