Feature: uPay Demo
# Demo Feature can only be run once in a day. Upay will not accept a payment of the same ammount within 24 hours. Demo Feature will fail with second attempt.
@demo
Scenario: uPay using bank account info
  Given I login to the IPS environment
  Then I am on the "homePage" page
  When I enter "109910450473001" into the "POLICY_NUMBER_INPUT"
  And I click the "SUBMIT_BUTTON" button on the page
  Then I am on the "primaryResultsPage" page
  When I click the "UPAY_BUTTON" button on the "ipsSidebar"
  And I wait for the new window to appear
  And I switch to the "new" window
  Then I am on the "uPayMakePaymentPage" page
  When I click the "NEW_POLICY_DOWN_PAYMENT_BUTTON" radio button on the page
  And I click the "BANK_ACCOUNT_BUTTON" radio button on the page
  And I enter "041202582" into the "ROUTING_NUMBER_INPUT"
  And I enter "123456789012345" into the "BANK_ACCOUNT_NUMBER_INPUT"
  And I enter "123456789012345" into the "BANK_ACCOUNT_NUMBER_CONFIRMATION_INPUT"
  And I enter "100" into the "CHECK_NUMBER_INPUT"
  And I enter "Automation Payer" into the "NAME_ON_ACCOUNT_INPUT"
  And I click the "NEXT_BUTTON" button on the page
  And I wait for the "TERMS_AND_CONDITIOINS_POPUP" popup to appear
  And I click the "AGREE_AND_SUBMIT_BUTTON" button on the page
  Then I am on the "uPayConfirmationPage" page
  When I enter "automationtest@ipacc.com" into the "EMAIL_INPUT"
  And I enter "automationtest@ipacc.com" into the "REENTER_EMAIL_INPUT"
  And I click the "EMAIL_A_COPY_BUTTON" button on the page
  And I wait for the "EMAIL_SUCCESSFULLY_SENT_POPUP" popup to appear
  And I click the "CLOSE_EMAIL_POPUP_BUTTON" button on the page
  And I click the "CLOSE_BUTTON" button on the page 
  And I switch to the "old" window
  Then I am on the "primaryResultsPage" page
  When I click the "TRANSACTIONS_BUTTON" button on the "ipsHeader"
  Then I am on the "transactionsPage" page
  Then I should see "CASH_RECEIVED_ONE" with text "382.86"
  And I wait for "5" seconds