/*
user class
*/
component output="false" table="tblUser" persistent="true"{
	property name="iUserId" fieldtype="id" generator="native";
	property name="sName" ormtype="string";
	property name="dtCreated" ormtype="timestamp";
	
}
