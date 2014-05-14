<cfsilent>

	<cfscript>
		zip = application.mongo.zipcodes.findOne();
	</cfscript>

</cfsilent>


<html>

	<head>
		<title>Railo / MongoDB :: findOne()</title>
		<style><cfinclude template="../style.css" /></style>
	</head>

	<body>
		<h1>findOne() - Railo Extension</h1>

<pre>
zip = application.mongo.zipcodes.findOne();
</pre>

	<cfdump var="#zip#" />

	</body>




</html>
