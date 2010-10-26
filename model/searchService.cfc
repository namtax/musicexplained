<cfcomponent hint="I am a new Model Object"
			 output="false"
			 singleton="true">

<!------------------------------------------- CONSTRUCTOR ------------------------------------------->

<!---	<cffunction name="init" returntype="search" output="false" hint="constructor">
		<cfscript>
			return this;
		</cfscript>
	</cffunction>--->

<!------------------------------------------- PUBLIC ------------------------------------------->
	
	<cffunction name="search" returntype="any" output="false" hint="return all solutions based on search term" >
		<cfargument name="q" type="string" required="true" hint="search term">
		
			<cfset var local = structNew() />
			
				<cfquery name="local.qry">
					SELECT sTitle
					FROM tblProblem
					WHERE sTitle LIKE <cfqueryparam value="%#ARGUMENTS.q#%" cfsqltype="cf_sql_varchar">
					OR sSolution LIKE <cfqueryparam value="%#ARGUMENTS.q#%" cfsqltype="cf_sql_varchar">
				</cfquery>
			
			<cfreturn local.qry >
		
	</cffunction>
	
	

</cfcomponent>	
