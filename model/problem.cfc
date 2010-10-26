/*
Problem class
*/
component output="false" table="tblProblem" persistent="true"{
	property name="iProblemId" fieldtype="id"  generator="native";
	property name="sTitle" ormtype="string" notnull="true";
	property name="sSolution" ormtype="string" notnull="true";
	property name="dtCreated" ormtype="timestamp" notnull="true";
	property name="iUserId" ormtype="integer" /*notnull="true"*/;
	
	//property name="category" fieldtype="many-to-many" linktable="problemCategory" fkcolumn="iProblemId" inversejoincolumn="iCategoryId" lazy="true" cascade="all" cfc="category";
	property name="category" fieldtype="many-to-many" linktable="problemCategory" fkcolumn="iProblemId" inversejoincolumn="iCategoryId" lazy="true" cfc="category";
	
}
