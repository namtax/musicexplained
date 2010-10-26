<cfsetting enablecfoutputonly="true">
<cfparam name="q" default="" />
	<cfquery name="local.qry">
					SELECT sTitle
					FROM tblProblem
					WHERE sTitle LIKE <cfqueryparam value="%#url.q#%" cfsqltype="cf_sql_varchar">
					OR sSolution LIKE <cfqueryparam value="%#url.q#%" cfsqltype="cf_sql_varchar">
				</cfquery>
			
<cfoutput query="local.qry">
#local.qry.sTitle##chr(10)#
</cfoutput>