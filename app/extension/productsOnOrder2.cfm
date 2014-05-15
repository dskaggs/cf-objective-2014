<cfsilent>

	<cfscript>
		results = application.mongo.products.aggregate(
				  { "$match": { Discontinued: 0, UnitsOnOrder: {'$gt': 0} } }
				, { "$project": { _id: 0, SupplierID: 1, ProductID: 1
                        , TotalOrder: { $multiply:["$UnitPrice", "$UnitsOnOrder"] } } }
			);
	</cfscript>

</cfsilent>


<html>

	<head>
		<title>Railo / MongoDB :: Products on Order 2</title>
		<style><cfinclude template="../style.css" /></style>
	</head>

	<body>

		<h1>Products on Order 2 - Railo Extension</h1>

<pre>
results = application.mongo.products.aggregate(
            { "$match": { Discontinued: 0, UnitsOnOrder: {'$gt': 0} } }
          , { "$project": { _id: 0, SupplierID: 1, ProductID: 1
                           , TotalOrder: { $multiply:["$UnitPrice", "$UnitsOnOrder"] } } }
);
</pre>

		<cfdump var="#results.results()#" abort="false" expand="true"/>

	</body>
</html>



