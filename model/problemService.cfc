/**
* A service layer that handles all problem operations
*/
component output="false" singleton{
	
	ProblemService function init() output=false{
		return this;
	}
		
	// Get Problem
	problem function getProblem(iProblemId="") output=false{
		if( len(arguments.iProblemId) ){
			var problem = entityLoad("problem",arguments.iProblemId,true);
			if(NOT isNull(problem) ){
				return problem;
			}
		}		
		return entityNew("problem");
	}
	
		
	// Get Problem
	problem function getProblemByTitle(sTitle="") output=false{
		if( len(arguments.sTitle) ){
			var problem = entityLoad("problem",{sTitle = arguments.sTitle},true);
			if(NOT isNull(problem) ){
				return problem;
			}
		}		
		return entityNew("problem");
	}
	
			
	// Add Problem:Solution
	any function save(Problem problem) output=false{
		transaction {
			entitySave(arguments.problem);
		
		}
			return arguments.problem.getiProblemId();
	}
	
	// Remove 
	void function remove(iProblemId) output=false{
		transaction{
			// get task
			var problem = getProblem(iProblemId);
			if( NOT isNull(problem.getiProblemId()) ){
				entityDelete(problem);
			}
		}
	}
	
	// Get All	
	any function getAll() output=false{
		var results = entityLoad("problem",{},"dtCreated desc",{maxResults=10});
		// return entityToQuery(results);
			return results;
	}
	
	// Search	
	any function search(q="Jquery Date Picker : Change Locale") output=false{
		var results = ormExecuteQuery("from problem where sTitle LIKE :q",
		{q = arguments.q},true);
		
		return results;
				
	}
	
	
	
}
	

