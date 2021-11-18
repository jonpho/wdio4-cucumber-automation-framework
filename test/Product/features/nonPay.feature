Feature: nonPay

@nonPay
Scenario Outline: uPay on nonPay account using Credit Card Info
  Given I login to the IPS environment
  Then I am on the "homePage" page
  When I enter <PolicyNumber> into the "POLICY_NUMBER_INPUT"
  And I click the "SUBMIT_BUTTON" button on the page
  Then I am on the "primaryResultsPage" page
  And I wait for "1" seconds
  When I click the "UPAY_BUTTON" button on the "ipsSidebar"
  And I wait for the new window to appear
  And I switch to the "new" window
  Then I am on the "uPayPolicyHolderPage" page
  And I should see "POLICY_HOLDER_STATMENT" with text "Are you the policyholder? / Did you speak with policyholder?"
  When I click the "YES_BUTTON" button on the page
  Then I am on the "uPayLossQuestionPage" page
  And I should see "CONFIRMATION_STATEMENT" with text "Do you confirm the following statement as true?"
  When I click the "YES_BUTTON" button on the page
  Then I am on the "uPayMakePaymentPage" page
  When I click the "OTHER_AMOUNT_BUTTON" radio button on the page
  And I enter <Amount> into the "PAYMENT_AMOUNT_INPUT"
  And I click the "CREDIT_CARD_BUTTON" radio button on the page
  And I click the "NEW_CARD_BUTTON" radio button on the page
  And I enter <CardNumber> into the "CARD_NUMBER_INPUT"
  And I enter <ExpMonth> into the "EXPIRATION_MONTH_INPUT"
  And I enter <ExpYear> into the "EXPIRATION_YEAR_INPUT"
  And I click the "NEXT_BUTTON" button on the page
  And I wait for the "TERMS_AND_CONDITIOINS_POPUP" popup to appear
  And I click the "AGREE_AND_SUBMIT_BUTTON" button on the page
  Then I am on the "uPayConfirmationPage" page
  When I click the "CLOSE_BUTTON" button on the page 
  And I switch to the "old" window
  Then I am on the "primaryResultsPage" page
  When I click the "NOTES_BUTTON" button on the "ipsHeader"
  Then I am on the "NotesTitlePage" page
  And I should see "SOURCE_FOUR" with text "LossQuestionSvc"
  And I should see "NOTES_FOUR" with text "The user via IPS answered Yes to the question \"Are you the policyholder? / Did you speak with policyholder?\""
  And I should see "SOURCE_THREE" with text "LossQuestionSvc"
  And I should see "NOTES_THREE" with text "The user via IPS answered Yes: \"Do you confirm the following statement as true? \""
  And I should see "SOURCE_TWO" with text "Realtime Pymt"
  And I should see "NOTES_TWO" with text <Amount>
  And I should see "SOURCE_ONE" with text "Realtime Pymt"
  And I should see "NOTES_ONE" with text "Confirmation number is"
  When I click the "TRANSACTIONS_BUTTON" button on the "ipsHeader"
  Then I am on the "transactionsPage" page
  Then I should see "CASH_RECEIVED_ONE" with text <Amount>

  Examples: 
  | PolicyNumber      | Amount  | CardNumber         | ExpMonth | ExpYear|
  | "104657496726001" | "56.73" | "4003000123456781" | "01"     |"2021"  |