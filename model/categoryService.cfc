/**
* A service layer that handles all problem operations
*/
component output="false" singleton{
	
	categoryService function init() output=false{
		return this;
	}
		
	// Get Category
	Category function getCategory(iCategoryId="") output=false{
		if( len(arguments.iCategoryId) ){
			var category = entityLoad("category",arguments.iCategoryId,true);
			if(NOT isNull(category) ){
				return category;
			}
		}		
		return entityNew("category");
	}
	
	// Get category by title 
	Category function getCategoryByTitle(sCategory="") output=false{
		//if( len('arguments.sCategory') ){
			var category = entityLoad("category",{sCategory = arguments.sCategory},true);
			if(NOT isNull(category) ){
				return category;
			}
		//}		
		return entityNew("category");
	}
	
	
		
	// Add category:Solution
	any function save(Category category) output=false{
		transaction {
			entitySave(arguments.category);
		}
		return arguments.category.getiCategoryId();
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
	any function getAll(sCategory='') output=false{
		//if(isDefined(arguments.sCategory)){
			var results = ormExecuteQuery("from category where sCategory <> :sCategory ORDER BY sCategory",{sCategory = arguments.sCategory});
			//return results;
		//}
	//	else{
		//	var results = entityLoad("category",{},"sCategory");
		//	return entityToQuery(results); 
	//	}
		
		return entityToQuery(results); 
	}


	
}
	

