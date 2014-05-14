<cfsilent>
	<cfscript>
		results = application.mongo.zipcodes.find({'state': 'MN','city': 'MINNEAPOLIS'},{'pop': 1}).toArray();
	</cfscript>

</cfsilent>


<html>

	<head>
		<title>Railo / MongoDB :: Projections</title>
		<style><cfinclude template="../style.css" /></style>
	</head>

	<body>

		<h1>Projections - Railo Extension</h1>

<pre>
results = application.mongo.zipcodes.find({
                                           'state': 'MN',
                                           'city': 'MINNEAPOLIS'
                                          },
                                          {'pop': 1}
	                                 )
	                                 .toArray();
</pre>

		<cfdump var="#results#" expand="false" abort="false"/>

	</body>
</html>