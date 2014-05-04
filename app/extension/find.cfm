<cfsilent>

	<cfscript>
		db=MongoDBConnect("census","localhost", 27017);

		zip = db.zipcodes.find({
									'state': 'MN',
									'city': 'MINNEAPOLIS'
								  }).cull(2).limit(1).toArray();

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

zip = db.zipcodes.find({
                        'state': 'MN',
                        'city': 'MINNEAPOLIS'
                       }).skip(2).limit(1).toArray();

</pre>

<cfdump var="#zip#" />