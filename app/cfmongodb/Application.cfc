component output="false" {

	function onApplicationStart(){
		var mongoConfig = createObject('component','cfmongodb.core.MongoConfig').init(dbName="grades");
		application.mongo = createObject('component','cfmongodb.core.MongoClient').init(mongoConfig);

	}

	function onRequestStart(){
		if( structKeyExists(url, "reload") ){
			onApplicationStart();
		}
		if( !structKeyExists( application, "mongo" ) ){
			var mongoConfig = createObject('component','cfmongodb.core.MongoConfig').init(dbName="grades");
			application.mongo = createObject('component','cfmongodb.core.MongoClient').init(mongoConfig);
		}
	}

	function onApplicationStop(){
		application.mongo.close();
	}

}
