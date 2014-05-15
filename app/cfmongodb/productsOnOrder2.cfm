<cfsilent>
	<cfscript>
		collection = application.mongo.getDBCollection( "products" );

		productsOnOrder = collection.aggregate(
				  { "$match": { 'Discontinued': 0, 'UnitsOnOrder': {'$gt': 0} } }
				, { "$project": { '_id': 0, 'SupplierID': 1, 'ProductID': 1
                        , TotalOrder: { '$multiply':['$UnitPrice', '$UnitsOnOrder'] } } }
			).asArray();
	</cfscript>

</cfsilent>


<html>

	<head>
		<title>CFMongoDB / MongoDB :: Products on Order 2</title>
		<style><cfinclude template="../style.css" /></style>
	</head>

	<body>

		<h1>Products on Order 2 - CFMongoDB</h1>

<pre>
collection = application.mongo.getDBCollection( "products" );

productsOnOrder = collection.aggregate(
                      { "$match": { 'Discontinued': 0, 'UnitsOnOrder': {'$gt': 0} } }
                    , { "$project": { '_id': 0, 'SupplierID': 1, 'ProductID': 1
                                     , TotalOrder: { '$multiply':['$UnitPrice', '$UnitsOnOrder'] }
                                    }
                      }
                 ).asArray();
</pre>

		<cfdump var="#productsOnOrder#" expand="false" abort="false"/>

	</body>
</html>

