package mtasa.server.sql;

import haxe.extern.EitherType;
import mtasa.server.classes.QueryHandle;
import mtasa.server.classes.DatabaseConnection;
import haxe.extern.Rest;

@:multiReturn extern class PollData {
  var result:EitherType<lua.Table<Int, Dynamic>, Bool>;
  var affectedRows:EitherType<Int, String>;
  var lastInsertedId:EitherType<Int, String>;
}

@:native('_G')
extern class Functions {
	/**
		This function executes an arbitrary SQL query and returns the result rows if there are any. It allows parameter binding for security (SQL injection is rendered impossible).

		@param query query: An SQL query. Positions where parameter values will be inserted are marked with a **?**.
		@param params A variable number of parameters. These must be strings or numbers - it is important to make sure they are of the correct type. Also, the number of parameters passed must be equal to the number of "?" characters in the query string. String parameters are automatically escaped by adding a backslash (\) before ' and \ characters.

		@see https://wiki.mtasa.com/wiki/ExecuteSQLQuery
	**/
	static function executeSQLQuery(query:String, params:Rest<Any>):Array<Any>;

	/**
		This function opens a connection to a database and returns an element that can be used with dbQuery. To disconnect use destroyElement.

		@param databaseType The type of database. This can be either sqlite or mysql
		@param host The target to connect to. The format of this depends on the database type (more one wiki).
		@param username Usually required for MySQL, ignored by SQLite
		@param password Usually required for MySQL, ignored by SQLite
		@param options List of key=value pairs separated by semicolons (more on wiki).

		@see https://wiki.mtasa.com/wiki/DbConnect
	**/
	static function dbConnect(databaseType:String, host:String, ?username:String, ?password:String, ?options:String):DatabaseConnection;

	/**
		This function executes a database query using the supplied connection. No result is returned.

		@param databaseConnection A database connection element previously returned from dbConnect
		@param query An SQL query. Positions where parameter values will be inserted are marked with a **?**
		@param params A variable number of parameters. These must be strings or numbers - it is important to make sure they are of the correct type. Also, the number of parameters passed must be equal to the number of ? characters in the query string. String parameters are automatically quoted and escaped as required. (If you do not want a string quoted, use ??) Make sure that numbers are in number format as a string number is treated differently.

		@see https://wiki.mtasa.com/wiki/DbExec
	**/
	static function dbExec(databaseConnection:DatabaseConnection, query:String, params:Rest<Any>):Bool;

	/**
		This function frees a database query handle. dbFree only needs to be used if a result has not been obtained with dbPoll

		@param queryHandle A query handle previously returned from dbQuery

		@see https://wiki.mtasa.com/wiki/DbFree
	**/
	static function dbFree(queryHandle:QueryHandle):Bool;

	/**
		This function checks the progress of a database query.

		@param queryHandle A query handle previously returned from dbQuery
		@param timeout How many milliseconds to wait for a result. Use 0 for an instant response (which may return nil). Use -1 to wait until a result is ready. Note: A wait here will freeze the entire server just like the executeSQL* functions
		@param multipleResults Set to true to enable the return values from multiple queries

		@see https://wiki.mtasa.com/wiki/DbPoll
	**/
	static function dbPoll(queryHandle:QueryHandle, timeout:Int, ?multipleResults:Bool):PollData;

	/**
		This function escapes arguments in the same way as dbQuery, except dbPrepareString returns the query string instead of processing the query. This allows you to safely build complex query strings from component parts and help prevent (one class of) SQL injection.

		@param databaseConnection A database connection element previously returned from dbConnect
		@param query An SQL query. Positions where parameter values will be inserted are marked with a **?**
		@param params A variable number of parameters. These must be strings or numbers - it is important to make sure they are of the correct type. Also, the number of parameters passed must be equal to the number of ? characters in the query string. String parameters are automatically quoted and escaped as required. (If you do not want a string quoted, use ??)

		@see https://wiki.mtasa.com/wiki/DbPrepareString
	**/
	static function dbPrepareString(databaseConnection:DatabaseConnection, query:String, params:Rest<Any>):String;

	/**
		This function starts a database query using the supplied connection. Use the returned query handle with dbPoll to get the result, or dbFree if you don't want the result.

		@param databaseConnection A database connection element previously returned from dbConnect
		@param query An SQL query. Positions where parameter values will be inserted are marked with a **?**
		@param params A variable number of parameters. These must be strings or numbers - it is important to make sure they are of the correct type. Also, the number of parameters passed must be equal to the number of ? characters in the query string. String parameters are automatically quoted and escaped as required. (If you do not want a string quoted, use ??)

		@see https://wiki.mtasa.com/wiki/DbQuery
	**/
	static function dbQuery(databaseConnection:DatabaseConnection, query:String, params:Rest<Any>):QueryHandle;
}
