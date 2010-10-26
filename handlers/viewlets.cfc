/*
I am a new handler
*/
component extends="coldbox.system.EventHandler" output="false"{
	
	property name="categoryService" inject;
		
	void function sideBar(event) output=false{
		var rc = event.getCollection();
		
		rc.categories = categoryService.getAll(event.getValue("sCategory",''));
				
		event.setView("viewlets/sideBar");
	}	
	
}
