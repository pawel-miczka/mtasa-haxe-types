package mtasa.server.classes;

@:native('Account')
extern class Account {
  /**
    This function adds an account to the list of registered accounts of the current server.

    @param name The name of the account you wish to make, this normally is the player's name.
    @param password The password to set for this account for future logins.
    @param allowCaseVariations Whether the username is case sensitive (if this is set to true, usernames "Bob" and "bob" will refer to different accounts)

    @return Account or false if the account already exists or an error occured.

    @see https://wiki.multitheftauto.com/wiki/AddAccount
  **/
  static function add(name:String, password:String, ?allowCaseVariations:Bool = false):Account;

  /**
    This function copies all of the data from one account to another.

    @param account The account you wish to copy the data to.

    @return True if the accounts were valid, false otherwise.

    @see https://wiki.multitheftauto.com/wiki/CopyAccountData
  **/
  public function copyDataTo(account:Account):Bool;

  /**
    This function retrieves a string that has been stored using setAccountData. Data stored as account data is persistent across user's sessions and maps, unless they are logged into a guest account.

    @param key The key under which the data is stored

    @return String containing the stored data or false if no data was stored under that key.

    @see https://wiki.multitheftauto.com/wiki/GetAccountData
  **/
  public function getData(account:Account):String;
}