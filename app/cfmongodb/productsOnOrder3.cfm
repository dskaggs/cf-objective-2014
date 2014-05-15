<cfsilent>
	<cfscript>
		collection = application.mongo.getDBCollection( "products" );

		productsOnOrder = collection.aggregate(
				  { "$match": { 'Discontinued': 0, 'UnitsOnOrder': {'$gt': 0} } }
				, { "$project": { '_id': 0, 'SupplierID': 1, 'ProductID': 1
                        , 'TotalOrder': { '$multiply':['$UnitPrice', '$UnitsOnOrder'] } } }
				, { '$group' : {'_id' : '$SupplierID', 'SupplierTotal' : { '$sum' : '$TotalOrder'} } }
    			, { '$sort' : {'_id': 1} }
			).asArray();
	</cfscript>

</cfsilent>


<html>

	<head>
		<title>CFMongoDB / MongoDB :: Products on Order 3</title>
		<style><cfinclude template="../style.css" /></style>
	</head>

	<body>

		<h1>Products on Order 3 - CFMongoDB</h1>

<pre>
collection = application.mongo.getDBCollection( "products" );

productsOnOrder = collection.aggregate(
                      { "$match": { 'Discontinued': 0, 'UnitsOnOrder': {'$gt': 0} } }
                    , { "$project": { '_id': 0, 'SupplierID': 1, 'ProductID': 1
                                     , TotalOrder: { '$multiply':['$UnitPrice', '$UnitsOnOrder'] }
                                    }
                      }
                    , { '$group' : { '_id' : '$SupplierID'
                                     , 'SupplierTotal' : { '$sum' : '$TotalOrder'} } }
                    , { '$sort' : {'_id': 1} }
                 ).asArray();
</pre>

		<cfdump var="#productsOnOrder#" expand="false" abort="false"/>

	</body>
</html>

