<cfsilent>
	<cfscript>
		collection = application.mongo.getDBCollection( "products" );

		productsOnOrder = collection.aggregate(
				{ "$match": { 'Discontinued': 0, 'UnitsOnOrder': {'$gt': 0} } }
			).asArray();
	</cfscript>

</cfsilent>


<html>

	<head>
		<title>CFMongoDB / MongoDB :: Products on Order 1</title>
		<style><cfinclude template="../style.css" /></style>
	</head>

	<body>

		<h1>Products on Order 1 - CFMongoDB</h1>

<pre>
collection = application.mongo.getDBCollection( "products" );

productsOnOrder = collection.aggregate(
		{ "$match": { 'Discontinued': 0, 'UnitsOnOrder': {'$gt': 0} } }
	).asArray();
</pre>

		<cfdump var="#productsOnOrder#" expand="false" abort="false"/>

	</body>
</html>

