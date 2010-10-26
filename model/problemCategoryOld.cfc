/*
Problem class
*/
component output="false" table="tblProblemCategory" persistent="false" {
	property name="iPCRecId" fieldtype="id" generator="native";
	// property name="iProblemId"  ormtype="int";
	// property name="iCategoryId" ormtype="int";
	
	property name="problem"  fkcolumn="iProblemId" cfc="problem";
	property name="category" fkcolumn="iCategoryId" cfc="category";		
}
