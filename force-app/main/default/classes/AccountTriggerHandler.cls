public with sharing class AccountTriggerHandler {
    // Ultra-simple logic: Just setting a default value.
    // No SOQL, No DML, No Cross-Object updates. 100% Safe.
    public static void handleBeforeInsert(List<Account> newRecords) {
        for(Account acc : newRecords) {
            if(String.isBlank(acc.Industry)) {
                acc.Industry = 'Technology';
            }
        }
    }
}