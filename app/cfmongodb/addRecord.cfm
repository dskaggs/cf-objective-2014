<cfsilent>
	<cfscript>
		collection = application.mongo.getDBCollection( "customers" );

		//Clean up so we can refresh this page as many times as we want
		collection.remove({'CustomerID': 'TEST123'});

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
		collection.save( newCustomer );

		customer = collection.find( {'CustomerID': 'TEST123'} ).asArray();
	</cfscript>

</cfsilent>


<html>

	<head>
		<title>CFMongoDB / MongoDB :: Add A Record</title>
		<style><cfinclude template="../style.css" /></style>
	</head>

	<body>

		<h1>Add A Record - CFMongoDB</h1>

<pre>
collection = application.mongo.getDBCollection( "customers" );

//Clean up so we can refresh this page as many times as we want
collection.remove({'CustomerID': 'TEST123'});

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

collection.save( newCustomer );

customer = collection.find( {'CustomerID': 'TEST123'} ).asArray();
</pre>

		<cfdump var="#customer#" expand="true" abort="false"/>
	</body>
</html>