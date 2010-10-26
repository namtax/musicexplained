	<!--- Display Form Viewlet Here --->
	<cfoutput>#renderView('viewlets/forms/addSolution')#</cfoutput>
	
	<div id="headerLeft">
    	<!---<h1 id="logo"><a href="http://localhost:8501/solvent/index.cfm">Solvent+</a></h1>--->
		<h1 id="logo"><a href="http://localhost:8501/solvent/index.cfm">S</a>
			<span style="font-size:0.5em; color:#000000;"><image src="http://localhost:8501/solvent/includes/images/user_placeholder.png"></span>
		</h1>
    </div>
    <div id="headerRight">
    	<ul>
    		<!---<li><a href="">username</a></li>--->
			<li id="addSolution"><a href="">add solution</a></li>
			<li class="search">
				<cfoutput>
					<form action="#event.buildLink('category')#" method="post">
			        	<div>
			            	<input name="search" id="search" type="text" class="txt"/>
			            	<!---<input name="submit" type="submit" value="submit" />--->
			            </div>
		            </form>
				</cfoutput>
			</li>
		</ul>
		
		
    <!---	<form>
        	<div>
            	<input name="search" type="text" class="txtS"/>
            </div>
            <!--<div>
            	<input name="submit" type="submit" value="submit" />
            </div>-->
            <ul>
            	<li><a href=""></a></li>
               	<li><a href=""></a></li>
               	<li><a href=""></a></li>
                <li><a href=""></a></li>
            </ul>
        </form>--->
    
    </div>