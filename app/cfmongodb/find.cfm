<cfsilent>

	<cfscript>
		zipcodes = application.mongo.getDBCollection( "zipcodes" );
		results = zipcodes.query()
						  .$eq("state", "MN")
						  .$eq("city", "MINNEAPOLIS")
						  .find();
		resultsArray = zipcodes.query()
							   .$eq("state", "MN")
							   .$eq("city", "MINNEAPOLIS")
							   .find()
							   .asArray();
		resultsCursor = zipcodes.query()
							    .$eq("state", "MN")
							    .$eq("city", "MINNEAPOLIS")
							    .find()
							    .asCursor();
	</cfscript>

</cfsilent>


<html>

	<head>
		<title>CFMongoDB / MongoDB :: find()</title>
		<style><cfinclude template="../style.css" /></style>
	</head>

	<body>
	<h1>find() - CFMongoDB</h1>

<h2>Default find() - Returns a SearchResult object</h2>
<pre>
zipcodes = application.mongo.getDBCollection( "zipcodes" );
results = zipcodes.query()
                  .$eq("state", "MN")
                  .$eq("city", "MINNEAPOLIS")
                  .find();
</pre>

		<cfdump var="#results#" expand="false" />


        <hr width="95%" size="2">

<h2>find.asArray() - Returns an array of documents</h2>

<pre>
zipcodes = application.mongo.getDBCollection( "zipcodes" );
resultsArray = zipcodes.query()
                       .$eq("state", "MN")
                       .$eq("city", "MINNEAPOLIS")
                       .find()
                       .asArray();
</pre>

		<cfdump var="#resultsArray#" expand="false" />

		<hr width="95%" size="2">

		<h2>find.toCursor() - Returns a MongoDB cursor</h2>

<pre>
zipcodes = application.mongo.getDBCollection( "zipcodes" );
resultsCursor = zipcodes.query()
                        .$eq("state", "MN")
                        .$eq("city", "MINNEAPOLIS")
                        .find()
                        .asCursor();
while( resultsCursor.hasNext() ){
    zip = resultsCursor.next();
    //do stuff
}
</pre>

		<cfdump var="#resultsCursor#" expand="false"/>

	</body>

</html>

