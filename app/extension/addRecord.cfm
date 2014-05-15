<cfsilent>

	<cfscript>
		//Clean up so we can refresh this page as many times as we want
		application.mongo.customers.remove({'CustomerID': 'TEST123'});

		newCustomer = {
						"CustomerID" : "TEST123",
						"CompanyName" : "Kevin's Klown Kostumes",
						"ContactName" : "Kevin Kennedy",
						"ContactTitle" : "Owner",
						"Address" : "Jagdhaus 77",
						"City" : "Kaiserslautern",
						"Region" : "NULL",
						"PostalCode" : 67661,
						"Country" : "Germany",
						"Phone" : "0251-037483",
						"Fax" : "0251-035112"
					};
		application.mongo.customers.save( newCustomer );
		customer = application.mongo.customers.find({'CustomerID': 'TEST123'}).toArray();
	</cfscript>

</cfsilent>


<html>

	<head>
		<title>Railo / MongoDB :: save()</title>
		<style><cfinclude template="../style.css" /></style>
	</head>

	<body>

		<h1>save() - Railo Extension</h1>

<pre>
//Clean up so we can refresh this page as many times as we want
application.mongo.customers.remove({'CustomerID': 'TEST123'});

newCustomer = {
               "CustomerID" : "TEST123",
               "CompanyName" : "Kevin's Klown Kostumes",
               "ContactName" : "Kevin Kennedy",
               "ContactTitle" : "Owner",
               "Address" : "Jagdhaus 77",
               "City" : "Kaiserslautern",
               "Region" : "NULL",
               "PostalCode" : 67661,
               "Country" : "Germany",
               "Phone" : "0251-037483",
               "Fax" : "0251-035112"
              };
application.mongo.customers.save( newCustomer );
customer = application.mongo.customers.find({'CustomerID': 'TEST123'}).toArray();
</pre>

		<cfdump var="#customer#" abort="false" expand="true"/>

	</body>
</html>
