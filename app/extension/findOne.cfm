<cfsilent>

	<cfscript>
		db=MongoDBConnect("census","localhost", 27017);

		zip = db.zipcodes.findOne();

	</cfscript>

</cfsilent>


<html>

	<head>
		<title>Railo / MongoDB :: findOne()</title>
		<link rel="stylesheet" href="../style.css"  >
	</head>


</html>

<pre>
db=MongoDBConnect("census","localhost", 27017);

zip = db.zipcodes.findOne();

</pre>

<cfdump var="#zip#" />

