/**
 * @description       :
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             :
 * @last modified on  : 06-29-2023
 * @last modified by  : Shangavi Srikaran
 * Modifications Log
 * Ver   Date         Author                               Modification
 * 1.0   03-10-2021   ChangeMeIn@UserSettingsUnder.SFDoc   Initial Version
 **/
public with sharing class TestStaticVariables {

  public static Integer uniqueCounter = 0;
  public static Integer getuniqueCounter() {
    return uniqueCounter++;
  }

  // Create default Account
  public static Account accTest = null;
  public static Account getAccount() {
    if (accTest == null) {
      accTest = (Account) TestFactory.createSObject(new Account());
      insert accTest;
    }
    return accTest;
  }
}
