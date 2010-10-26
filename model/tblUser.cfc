
<cfcomponent persistent="true" table="tblUser" 
		
		 schema="dbo" output="false">
	<!---- properties ---->
	
		
	<cfproperty name="iUserId" column="iUserId" type="numeric" ormtype="int" 
		fieldtype="id"  /> 
		
	<cfproperty name="sName" column="sName" type="string" ormtype="string" 
		 /> 
		
	<cfproperty name="dtCreated" column="dtCreated" type="date" ormtype="timestamp" 
		 /> 
			
</cfcomponent> 
