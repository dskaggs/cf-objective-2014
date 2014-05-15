<cfsilent>
	<cfscript>
		collection = application.mongo.getDBCollection( "customers" );
		customersArray = collection.query()
							       .$eq("Country", "Germany")
							       .find(keys="ContactName,Phone,Fax")
							       .asArray();
	</cfscript>

</cfsilent>


<html>

	<head>
		<title>CFMongoDB / MongoDB :: Projections</title>
		<style><cfinclude template="../style.css" /></style>
	</head>

	<body>

		<h1>Projections - CFMongoDB</h1>

<pre>
collection = application.mongo.getDBCollection( "customers" );
customersArray = collection.query()
                           .$eq("Country", "Germany")
                           .find(keys="ContactName,Phone,Fax")
                           .asArray();
</pre>

		<cfdump var="#customersArray#" expand="false" abort="false"/>

	</body>
</html>