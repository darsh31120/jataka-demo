/**
 * AccountTrigger - Handles Account update operations
 * Delegating to Handler to perform complex Crypto Hashing operations 
 * which cannot be performed by Salesforce Flows.
 */
trigger AccountTrigger on Account (after update) {
    // Delegate all complex logic to the handler class
    AccountTriggerHandler.handleAfterUpdate(Trigger.new, Trigger.oldMap);
}