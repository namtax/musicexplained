<div id="addSolvent">
	<h2> Add a new solution</h2>
	<form id="addProblem" action="http://localhost:8501/solvent/index.cfm/problem/save" method="post"> 
		<div>
			<label for="problemTitle">Problem</label>
			<input name="sTitle" id="sTitle" type="text" class="txt required" autocomplete="off"/>
		</div>
		<div class="bully">
			<label for="solution">Solution</label>
			<textarea name="sSolution" id="sSolution" <!---class="required"--->></textarea>
		</div>
		<div>
			<label for="categories">Categories</label>
			<input name="sCategory" id="sCategory" type="text" class="txt required " />
		</div>
		<div>
			<input type="submit" value="submit" />
			
			<!---Hidden Form Fields--->
		</div>
	</form>
</div>