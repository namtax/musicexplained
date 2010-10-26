/*
Problem class
*/
component output="false" table="tblCategory" persistent="true"{
	property name="iCategoryId" fieldtype="id" generator="native";
	property name="sCategory" ormtype="string";
	property name="dtCreated" ormtype="timestamp";
	property name="iUserId" ormtype="integer";
	
	
	// property name="problem" fieldtype="many-to-many" linktable="problemCategory" fkcolumn="iCategoryId" inversejoincolumn="iProblemId" lazy="true" cascade="all" cfc="problem";
	property name="problem" fieldtype="many-to-many" linktable="problemCategory" fkcolumn="iCategoryId" inversejoincolumn="iProblemId" lazy="true" cfc="problem";
	
}
