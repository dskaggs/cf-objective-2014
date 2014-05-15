<cfsilent>

	<cfscript>
		customer = application.mongo.customers.findOne();
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
customer = application.mongo.customers.findOne();
</pre>

	<cfdump var="#customer#" expand="false"/>

	</body>




</html>
