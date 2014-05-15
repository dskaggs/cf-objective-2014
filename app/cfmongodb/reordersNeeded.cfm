<cfsilent>
	<cfscript>
		collection = application.mongo.getDBCollection( "products" );

		reorder = collection.aggregate(
				{ "$project": {
                    '_id': 0,
                    'SupplierID': 1,
                    'ProductID': 1,
                    'Discontinued': 1,
                    'UnitsOnOrder': 1,
                    'StockRatio': { '$subtract':["$UnitsInStock", "$ReorderLevel"] }
                   }
				}
			  , { "$match": { 'Discontinued': 0
							   , 'UnitsOnOrder': 0
							   , 'StockRatio': {'$lte': 0}
							}
				}
			).asArray();
	</cfscript>

</cfsilent>


<html>

	<head>
		<title>CFMongoDB / MongoDB :: Products Needing Reorder</title>
		<style><cfinclude template="../style.css" /></style>
	</head>

	<body>

		<h1>Products Needing Reorder - CFMongoDB</h1>

<pre>
collection = application.mongo.getDBCollection( "products" );

reorder = collection.aggregate(
                     { "$project": {
                                    '_id': 0,
                                    'SupplierID': 1,
                                    'ProductID': 1,
                                    'Discontinued': 1,
                                    'UnitsOnOrder': 1,
                                    'StockRatio': { '$subtract':["$UnitsInStock", "$ReorderLevel"] }
                                    }
                     }
                   , { "$match": { 'Discontinued': 0
                                 , 'UnitsOnOrder': 0
                                 , 'StockRatio': {'$lte': 0}
                                 }
                     }
	).asArray();
</pre>

		<cfdump var="#reorder#" expand="false" abort="false"/>

	</body>
</html>

