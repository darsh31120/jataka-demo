public with sharing class BrokenBackendScript {
    public static void doSomething() {
        // KAMIKAZE TRAP: Missing semicolon below to trigger compilation error
        Account a = new Account(Name='Test Account')
        insert a;
    }
}
