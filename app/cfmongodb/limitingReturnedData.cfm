<cfsilent>
	<cfscript>
		zipcodes = application.mongo.getDBCollection( "zipcodes" );
		results = zipcodes.query()
						  .$eq("state", "MN")
						  .$eq("city", "MINNEAPOLIS")
						  .find(keys="pop");
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
zipcodes = application.mongo.getDBCollection( "zipcodes" );
results = zipcodes.query()
                  .$eq("state", "MN")
                  .$eq("city", "MINNEAPOLIS")
                  .find(keys="pop");
</pre>

		<cfdump var="#results.asArray()#" expand="false" abort="false"/>

	</body>
</html>