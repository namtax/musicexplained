
<cfcomponent output="false" hint="CFBuilder-Generated:tblUser">

	
	<!----
	TBLUSER SERVICES

	---->
	<!---- Add tblUser ---->

	<cffunction name="createtblUser" returntype="tblUser" access="remote">
		<cfargument name="item" type="tblUser" required="true" />
		<!---- Auto-generated method
		  Insert a new record in tblUser ---->
		<cfset entitysave(item) />

		<!---- return created item ---->
		<cfreturn item/>
	</cffunction>

	<!---- Remove tblUser ---->
	<cffunction name="deletetblUser" returntype="void" access="remote">
		<cfargument name="iUserId" type="any" required="true" />
		
		<!---- Auto-generated method
		         Delete a record in the database ---->
		<cfset var primaryKeysMap = {
			iUserId =iUserId
		}>
		<cfset var item=entityload("tblUser",primaryKeysMap,true)>
		<cfif isnull(item) eq false>
			<cfset entitydelete(item) />
		</cfif>
		<cfreturn />
	</cffunction>

	<!---- Get All tblUser ---->
	<cffunction name="getAlltblUser" returntype="tblUser[]" access="remote">
		<!---- Auto-generated method
		        Retrieve set of records and return them as a query or array ---->
		<!---- return items ---->
		<cfreturn entityload("tblUser") />
	</cffunction>

	<!---- Get All Paged tblUser ---->
	<cffunction name="gettblUser_paged" returntype="tblUser[]" access="remote">
		<cfargument name="start" type="numeric" required="true" />
		<cfargument name="count" type="numeric" required="true" />
		<!---- Auto-generated method
		         Return a page of numRows number of records as an array or query from the database for this startRow ---->
		<!---- return paged items ---->
		<cfreturn entityload("tblUser",{},"",{offset=start,maxresults=count})/>
	</cffunction>

	<!---- Get tblUser ---->
	<cffunction name="gettblUser" returntype="tblUser" access="remote">
		 <cfargument name="iUserId" type="any" required="true" />
				
		<!---- Auto-generated method
		         Retrieve a single record and return it ---->
		<!---- return item ---->
		<cfset var primaryKeysMap = {
				iUserId = iUserId
		
		}>
		<cfreturn entityload("tblUser",primaryKeysMap,true)>
	</cffunction>

	<!---- Save tblUser ---->
		<cffunction name="updatetblUser" returntype="tblUser" access="remote">
		<cfargument name="item" type="tblUser" required="true" />
		<!---- Auto-generated method
		         Update an existing record in the database ---->
		<!---- update tblUser ---->
		<cfset entitysave(item) />
		<cfreturn item/>
	</cffunction>

	<!---- Count tblUser ---->
	<cffunction name="count" returntype="numeric" access="remote">
	
		<cfreturn ormexecutequery("select count(*) from tblUser",true)>
	</cffunction>

</cfcomponent> 
