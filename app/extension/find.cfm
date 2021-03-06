<cfsilent>

	<cfscript>
		results = application.mongo.customers.find({'Country': 'Germany'});
		resultsArray = application.mongo.customers.find({'Country': 'Germany'}).toArray();
	</cfscript>

</cfsilent>


<html>

	<head>
		<title>Railo / MongoDB :: findOne()</title>
		<style><cfinclude template="../style.css" /></style>
	</head>

	<body>

		<h1>find() - Railo Extension</h1>

		<h2>Default find() - Returns a MongoDB Cursor</h2>

<pre>
results = application.mongo.zipcodes.find({'Country': 'Germany'});

while( results.hasNext() ){
    zip = results.next();
    //do stuff
}
</pre>

		<cfdump var="#results#" />

<hr width="95%" size="2">

<h2>find.toArray() - Returns an array of documents</h2>

<pre>
resultsArray = application.mongo.zipcodes.find({'Country': 'Germany'}).toArray();
</pre>

		<cfdump var="#resultsArray#" expand="false" />

	</body>
</html>

