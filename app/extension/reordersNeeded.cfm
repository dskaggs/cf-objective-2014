<cfsilent>
	<cfscript>
		reorder = application.mongo.products.aggregate(
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
			).results();
	</cfscript>

</cfsilent>


<html>

	<head>
		<title>Railo / MongoDB :: Products Needing Reorder</title>
		<style><cfinclude template="../style.css" /></style>
	</head>

	<body>

		<h1>Products Needing Reorder - Railo Extension</h1>

<pre>
reorder = application.mongo.products.aggregate(
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
	).results();
</pre>

		<cfdump var="#reorder#" expand="false" abort="false"/>

	</body>
</html>

