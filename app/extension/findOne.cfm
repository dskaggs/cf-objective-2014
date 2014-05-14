<cfsilent>

	<cfscript>
		student = application.mongo.students.findOne();
	</cfscript>

</cfsilent>


<html>

	<head>
		<title>Railo / MongoDB :: findOne()</title>
		<style><cfinclude template="../style.css" /></style>
	</head>

	<body>
		<h1>findOne() - Railo Extension</h1>

<pre>
student = application.mongo.students.findOne();
</pre>

	<cfdump var="#student#" expand="false"/>

	</body>




</html>
