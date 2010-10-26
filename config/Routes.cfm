<cfscript>
	// General Properties
	setEnabled(true);
	setUniqueURLS(false);
	//setAutoReload(false);
	
	// Base URL
	if( len(getSetting('AppMapping') ) lte 1){
		setBaseURL("http://#cgi.HTTP_HOST#/index.cfm");
	}
	else{
		setBaseURL("http://#cgi.HTTP_HOST#/#getSetting('AppMapping')#/index.cfm");
	}
	
	// Custom Routes
	addRoute(pattern="category/:sCategory",
			handler="category",
			action="index");
	
	addRoute(pattern="solution/:sTitle",
			handler="problem",
			action="index");
	
	// Your Application Routes
	addRoute(pattern=":handler/:action?");
</cfscript>
