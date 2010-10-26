<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/template.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Solvent</title>
<!-- InstanceEndEditable -->
<!-- CSS -->
<link rel="stylesheet" type="text/css" href="http://localhost:8501/solvent/includes/css/format.css">
<link rel="stylesheet" type="text/css" href="http://localhost:8501/solvent/includes/css/formatSpecific.css">

<!-- JQUERY: CSS -->
<link rel="stylesheet" type="text/css" href="http://localhost:8501/solvent/includes/css/basic.css">


	<script type="text/javascript" src="http://localhost:8501/solvent/includes/js/showdown.js"></script>
<!-- JQUERY -->
<!---<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>--->
<script language="JavaScript" src="http://localhost:8501/solvent/includes/js/jquery-1.3.2.js"></script>

<!-- JQUERY : PLUGINS -->

<script language="javascript" src="http://localhost:8501/solvent/includes/js/ui/effects.core.js"></script>
<script type="text/javascript" src="http://localhost:8501/solvent/includes/js/jquery.form.js"></script>
<script type="text/javascript" src="http://localhost:8501/solvent/includes/js/jquery.validate.js"></script>
<script type="text/javascript" src="http://dev.jquery.com/view/trunk/plugins/autocomplete/jquery.autocomplete.js"></script>


<!-- JQUERY : PLUGINS CSS -->
<link type="text/css" href="http://localhost:8501/solvent/includes/css/autocomplete.css" rel="stylesheet" media="screen" />



 
<!---<script language="JavaScript" src="http://localhost:8501/solvent/includes/js/basic.js"></script>--->
	
	<link rel="stylesheet" type="text/css" href="http://localhost:8501/solvent/includes/css/wmd-test.css" />
	<script type="text/javascript" src="http://localhost:8501/solvent/includes/js/base.js"></script>

	<!--- PROJECTR: JS --->
	<script type="text/javascript" src="http://localhost:8501/projectR/includes/js/projectR.js"></script>
	<!--- PROJECTR: CSS --->
	<link rel="stylesheet" type="text/css" href="http://localhost:8501/projectR/includes/css/projectR.css" />

 
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->


<body>


<cfoutput>
<div id="outerWrapper">

<div id="header">
	#renderView(view='tags/header')#
</div><!-- end Header-->

<div id="innerWrapper">

	
    <div id="content">
          <cfoutput>#renderView()#</cfoutput>
     </div><!-- end content -->
	 
	 <div id="sideBar">
    	<cfoutput>#renderView('sideBar')#</cfoutput>
    	
    </div><!-- end sideBar -->
	 
	 
</div><!-- end innerWrapper -->


<div id="clearFooter"></div>
</div><!-- end outerWrapper -->
<div id="footer">
	<!--- Render Footer --->
	#renderView(view='tags/footer')#
</div><!-- end footer -->
</cfoutput>

  <script type="text/javascript">
		// to set WMD's options programatically, define a "wmd_options" object with whatever settings
		// you want to override.  Here are the defaults:
        wmd_options = {
			// format sent to the server.  Use "Markdown" to return the markdown source.
			output: "MARKDOWN",

			// line wrapping length for lists, blockquotes, etc.
			lineLength: 40,

			// toolbar buttons.  Undo and redo get appended automatically.
			buttons: "bold italic | link blockquote code image | ol ul heading hr",

			// option to automatically add WMD to the first textarea found.  See apiExample.html for usage.
			autostart: true
		};
	</script>


<script type="text/javascript" src="http://localhost:8501/solvent/includes/js/wmd.js"></script>
</body>
<!-- InstanceEnd --></html>
