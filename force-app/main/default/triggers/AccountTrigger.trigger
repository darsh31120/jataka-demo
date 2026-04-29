trigger AccountTrigger on Account (before insert) {
    // Delegating to handler safely without SOQL or DML
    AccountTriggerHandler.handleBeforeInsert(Trigger.new);
}