/*
Problem class
*/
component displayname="problemCategory" output="false" table="problemCategory" accessors="true" persistent="true" {
	// property name="iPCRecId" fieldtype="id" generator="identity";
	// property name="iProblemId"  ormtype="int";
	// property name="iCategoryId" ormtype="int";
	
	property name="problem"  fieldtype="id,many-to-one" cfc="problem" fkcolumn="iProblemId";
	property name="category"  fieldtype="id,many-to-one" cfc="category" fkcolumn="iCategoryId";
	
	
	//property name="problem"  fieldtype="id,many-to-one" cfc="problem" cascade="all" fkcolumn="iProblemId";
	//property name="category"  fieldtype="id,many-to-one" cfc="category" cascade="all" fkcolumn="iCategoryId";
}
