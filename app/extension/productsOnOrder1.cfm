<cfsilent>

	<cfscript>
		results = application.mongo.products.aggregate(
				{ "$match": { Discontinued: 0, UnitsOnOrder: {'$gt': 0} } }
			);
	</cfscript>

</cfsilent>


<html>

	<head>
		<title>Railo / MongoDB :: Products on Order 1</title>
		<style><cfinclude template="../style.css" /></style>
	</head>

	<body>

		<h1>Products on Order 1 - Railo Extension</h1>

<pre>
results = application.mongo.products.aggregate(
          { "$match": { Discontinued: 0, UnitsOnOrder: {'$gt': 0} } }
);
</pre>

		<cfdump var="#results.results()#" abort="false" expand="true"/>

	</body>
</html>



