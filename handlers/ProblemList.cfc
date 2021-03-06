/*
* A problem handler
*/
component extends="coldbox.system.EventHandler" output="false"{

	property name="problemService" inject;
	property name="categoryService" inject;
	property name="problemCategoryService" inject;
	/*property name="searchService" inject;*/
	
	
	// Show all
	void function index(event) output=false{
		var rc = event.getCollection();

		rc.problems = problemService.getAll();
		
		event.setView("index");
	}
	
	// Search
	void function remove(event) output=false{
		var rc = event.getCollection();
		
		problemService.remove(event.getValue("iProblemId",""));
		
	}	
			
	// Save
	any function save(event) output=false{
		var rc = event.getCollection();
		
		/*if(rc.iProblemId){
		// Delete Previous Categories
			deletePC = new Query();
			
			  deletePC.setSql("
			  DELETE FROM problemCategory
			  WHERE iProblemID = :iProblemId
				");
				
			 // Set the query params for our insert.
				 deletePC.addParam(
				 name = "iProblemId",
				 value = rc.iProblemId,
				 cfsqltype = "cf_sql_int"
				 );
					
			deletePC.execute();
			}*/
		
		
		
		//event.paramValue("dtCreated",application.thisDate);
		event.paramValue("dtCreated",now());
		
		// Save Problem
		rc.problems = problemService.getProblem(event.getValue("iProblemID",""));
		populateModel(rc.problems);
		rc.IproblemId = problemService.save(rc.problems);
		
		
		// Save Categories
		// rc.category = categoryService.getCategoryByTitle(event.getValue("sTitle",""));
		// populateModel(rc.category);
		// categoryService.save(rc.category);
	
		var bully = sCategory;
		bully = replace(bully," ",",","ALL");
				
		for (i=1;i LTE ListLen(bully);i=i+1){
			// Save Categories
			var sCategory = (listGetAt(bully,i));
			rc.category = categoryService.getCategoryByTitle(sCategory);
			rc.sCategory = (listGetAt(bully,i));
			populateModel(rc.category);
			iCategoryId = categoryService.save(rc.category);
			}
			
		for (i=1;i LTE ListLen(bully);i=i+1){
			var sCategory = (listGetAt(bully,i));
			rc.category = categoryService.getCategoryByTitle(sCategory);
			rc.iCategoryId = rc.category.getiCategoryId();
			
			// Save Problem Category
			insertPC = new Query();
			
			  insertPC.setSql("
			  INSERT INTO problemCategory
			  (
			  	iProblemId ,
			  	iCategoryId
			   ) VALUES (
				:iProblemId ,
				:iCategoryId 
				)
				");
				
			 // Set the query params for our insert.
				 insertPC.addParam(
				 name = "iProblemId",
				 value = rc.iProblemId,
				 cfsqltype = "cf_sql_int"
				 );
				  
				 // Set the query params for our insert.
				 insertPC.addParam(
				 name = "iCategoryId",
				 value = rc.iCategoryId,
				 cfsqltype = "cf_sql_int"
				 );
							
				
			insertPC.execute();
				
			
		/*	rc.problemCategory = entityNew("problemCategory");
			rc.problemCategory.setProblem(11);
			rc.problemCategory.setCategory(11);
			entitySave(rc.problemCategory);*/
			
		/*	rc.iCategoryId = 1;
			rc.iProblemId = 1;
					 
			rc.problemCategory = problemCategoryService.getProblemCategory();
			populateModel(rc.problemCategory);
			problemCategoryService.save(rc.problemCategory);*/
						
			}
		
			event.renderData(type="JSON",data='error');
				
	}


	// Remove	any function search(event) output=false{
		var rc = event.getCollection();
		
		// var sProblems = problemService.search(event.getValue("sSolution",""));
		rc.data = searchService.search(url.q);
	
		rc.bully = ValueList(rc.data.sTitle,',');
			
		event.renderData(type="JSON",data=rc.bully);
		
		/*flash.put("message","problem removed sucessfully!");
		
		setNextEvent('problems');*/
	}	

}			

