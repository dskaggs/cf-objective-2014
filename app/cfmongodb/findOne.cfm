<cfsilent>

	<cfscript>
		customers = application.mongo.getDBCollection( "customers" );
		customer = customers.findOne();
	</cfscript>

</cfsilent>


<html>

	<head>
		<title>CFMongoDB / MongoDB :: findOne()</title>
		<style><cfinclude template="../style.css" /></style>
	</head>

	<body>
		<h1>findOne() - CFMongoDB</h1>
<pre>
customers = application.mongo.getDBCollection( "customers" );
customer = customers.findOne();
</pre>

		<cfdump var="#customer#" expand="false"/>

	</body>

</html>