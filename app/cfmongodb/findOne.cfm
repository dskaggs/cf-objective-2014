<cfsilent>

	<cfscript>
		collection = application.mongo.getDBCollection( "students" );
		student = collection.findOne();
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
collection = application.mongo.getDBCollection( "student" );
student = collection.findOne();
</pre>

		<cfdump var="#student#" expand="false"/>

	</body>

</html>