/*
category
*/
component extends="coldbox.system.EventHandler" output="false"{
	
	property name="categoryService" inject;
	
	// Show all
	void function index(event) output=false{
		var rc = event.getCollection();

		rc.problems = categoryService.getCategoryByTitle(event.getValue("sCategory",""));
		
		rc.problems = rc.problems.getProblem();
		
		// Exit Handlers
		rc.xh = {problem = 'problem'};
	
				
		event.setView("index");
	}	
	
		

	
}
