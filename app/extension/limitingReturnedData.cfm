<cfsilent>
	<cfscript>
		customersArray = application.mongo.customers.find(
															{'Country': 'Germany'},
															{'ContactName': 1, 'Phone': 1, 'Fax': 1}
													   	 ).toArray();
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
customersArray = application.mongo.customers.find(
                                                  {'Country': 'Germany'},
                                                  {'ContactName': 1, 'Phone': 1, 'Fax': 1}
                                                 ).toArray();
</pre>

		<cfdump var="#customersArray#" expand="false" abort="false"/>

	</body>
</html>