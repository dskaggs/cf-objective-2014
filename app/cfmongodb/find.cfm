<cfsilent>

	<cfscript>
		collection = application.mongo.getDBCollection( "customers" );
		customers = collection.query()
						  .$eq("Country", "Germany")
						  .find();
		customersArray = collection.query()
							   .$eq("Country", "Germany")
							   .find()
							   .asArray();
		customersCursor = collection.query()
							    .$eq("Country", "Germany")
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
collection = application.mongo.getDBCollection( "customers" );
customers = collection.query()
                      .$eq("Country", "Germany")
                      .find();
</pre>

		<cfdump var="#customers#" expand="false" />


        <hr width="95%" size="2">

<h2>find.asArray() - Returns an array of documents</h2>

<pre>
collection = application.mongo.getDBCollection( "customers" );
customersArray = collection.query()
                           .$eq("Country", "Germany")
                           .find()
                           .asArray();
</pre>

		<cfdump var="#customersArray#" expand="false" />

		<hr width="95%" size="2">

		<h2>find.toCursor() - Returns a MongoDB cursor</h2>

<pre>
collection = application.mongo.getDBCollection( "customers" );
customersCursor = collection.query()
                            .$eq("Country", "Germany")
                            .find()
                            .asCursor();

while( customersCursor.hasNext() ){
    customer = customersCursor.next();
    //do stuff
}
</pre>

		<cfdump var="#customersCursor#" expand="false"/>

	</body>

</html>

