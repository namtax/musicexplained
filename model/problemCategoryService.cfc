/**
* A service layer that handles all problem operations
*/
component output="false" singleton{
	
	problemCategoryService function init() output=false{
		return this;
	}
		
	// Get Category
	any function getproblemCategory(iProblemId="") output=false{
		var problemCategory = entityLoad("problemCategory",{iProblemId = arguments.iProblemId});
			if(NOT isNull(problemCategory) ){
				return problemCategory;
			}
		//}		
		return entityNew("problemCategory");
	}
	
	// Get problemCategory by title 
	problemCategory function getproblemCategoryByTitle(sproblemCategory="") output=false{
		//if( len('arguments.sproblemCategory') ){
			var problemCategory = entityLoad("problemCategory",{sproblemCategory = arguments.sproblemCategory},true);
			if(NOT isNull(problemCategory) ){
				return problemCategory;
			}
		//}		
		return entityNew("problemCategory");
	}
	
	
		
	// Add problemCategory:Solution
	any function save(problemCategory problemCategory) output=false{
		transaction {
			entitySave(arguments.problemCategory);
		}
		// return arguments.problemCategory.getiproblemCategoryId();
	}
	
	// Remove 
	void function remove(taskID) output=false{
		transaction{
			// get task
			var task = getTask(taskID);
			if( NOT isNull(task.getTaskID()) ){
				entityDelete(task);
			}
		}
	}
	
	// Get All	
	any function getAll() output=false{
		var results = entityLoad("problemCategory");
		return entityToQuery(results); 
		
	}


	
}
	

