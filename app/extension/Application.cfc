component output="false" {

	function onApplicationStart(){
		application.mongo=MongoDBConnect("northwind","localhost", 27017);
	}

	function onRequestStart(){
		if( structKeyExists(url, "reload") ){
			onApplicationStart();
		}

		if( !structKeyExists( application, "mongo" ) ){
			application.mongo=MongoDBConnect("northwind","localhost", 27017);

		}
	}

	function onApplicationStop(){

	}

}
