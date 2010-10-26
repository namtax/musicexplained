
<cfcomponent>
<cfset this.name = "myORMApplication">
<cfset this.ormenabled = "true">
<cfset this.datasource = "solvent">
<!---- ORM Setting not suggeted for production use---->
<cfset this.ormsettings = {autorebuild="true"}>
</cfcomponent>
