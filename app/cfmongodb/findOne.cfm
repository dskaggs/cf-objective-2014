<cfsilent>

	<cfscript>
		collection = application.mongo.getDBCollection( "zipcodes" );
		zip = collection.findOne();
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
collection = application.mongo.getDBCollection( "zipcodes" );
zip = collection.findOne();
</pre>

		<cfdump var="#zip#" />

	</body>

</html>