component output="false" {

	function onApplicationStart(){
	}

	function onRequestStart(){
		if( structKeyExists(url, "reload") ){
			onApplicationStart();
		}

		if( !structKeyExists( application, "mongo" ) ){
			application.mongo=MongoDBConnect("census","localhost", 27017);

		}
	}

	function onApplicationStop(){

	}

}
