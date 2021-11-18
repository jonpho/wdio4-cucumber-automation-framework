@IPS
Feature: navigation

Background: 
  Given I login to the IPS environment
  Then I am on the "homePage" page

@ipsHeader @navigation
Scenario Outline: IPS Header Flow
  When I enter <PolicyNumber> into the "POLICY_NUMBER_INPUT"
  And I click the "SUBMIT_BUTTON" button on the page
  Then I am on the "primaryResultsPage" page
  When I unlock the policy
  And I click the "INSTALLMENT_BUTTON" button on the "ipsHeader"
  Then I am on the "installmentPage" page
  When I click the "ACTIVITY_BUTTON" button on the "ipsHeader"
  Then I am on the "activityTitlePage" page
  When I click the "TRANSACTIONS_BUTTON" button on the "ipsHeader"
  Then I am on the "transactionsPage" page
  When I click the "VEHICLE_DRIVERS_BUTTON" button on the "ipsHeader"
  Then I am on the "vehicleDriverTitlePage" page
  When I click the "DOCUMENTS_BUTTON" button on the "ipsHeader"
  Then I am on the "documentsPage" page
  When I click the "ID_CARD_BUTTON" button on the "ipsHeader"
  Then I am on the "IDCardPage" page
  When I click the "LETTER_BUTTON" button on the "ipsHeader"
  Then I am on the "letterTitlePage" page
  When I click the "CERTIFICATE_BUTTON" button on the "ipsHeader" if it exists
  Then I am on the "certificateTitlePage" page
  When I click the "REQUEST_BUTTON" button on the "ipsHeader" if it exists
  Then I am on the "requestTitlePage" page
  When I click the "DIARY_BUTTON" button on the "ipsHeader"
  Then I am on the "diaryTitlePage" page
  When I click the "CHANGE_REQUEST_BUTTON" button on the "ipsHeader" if it exists
  Then I am on the "changeRequestPage" page
  When I click the "NOTES_BUTTON" button on the "ipsHeader" 
  Then I am on the "NotesTitlePage" page
  When I click the "MVR_BUTTON" button on the "ipsHeader"
  Then I am on the "mvrPage" page
  When I click the "CLUE_BUTTON" button on the "ipsHeader"
  Then I am on the "clueTitlePage" page
  When I click the "POP_BUTTON" button on the "ipsHeader"
  Then I am on the "popTitlePage" page
  When I click the "ADD_BUTTON" button on the "ipsHeader"
  Then I am on the "addTitlePage" page
  When I click the "CLAIMS_BUTTON" button on the "ipsHeader" if it exists
  Then I am on the "claimsTitlePage" page
  When I click the "RENEWAL_BUTTON" button on the "ipsHeader" if it exists
  Then I am on the "renewalTitlePage" page
  When I click the "LIEN_ADDL_INS_BUTTON" button on the "ipsHeader" if it exists
  Then I am on the "lienAddlInsTitlePage" page
  When I click the "SUSPENSE_BUTTON" button on the "ipsHeader" if it exists
  Then I am on the "suspenseTitlePage" page
  When I click the "COMPANY_BUTTON" button on the "ipsHeader" if it exists
  Then I am on the "companyTitlePage" page
  When I click the "ACCOUNTING_BUTTON" button on the "ipsHeader"
  Then I am on the "AccountingTitlePage" page
  When I click the "PRIMARY_BUTTON" button on the "ipsHeader"
  Then I am on the "primaryResultsPage" page
  #And I wait for "3" seconds

    Examples: 
  | PolicyNumber      |
  | "504657488071001" |
  | "109910450473001" |

@ipsSidebar @navigation
Scenario Outline: IPS Sidebar Flow
  When I enter <PolicyNumber> into the "POLICY_NUMBER_INPUT"
  And I click the "SUBMIT_BUTTON" button on the page
  Then I am on the "primaryResultsPage" page
  When I click the "IPS_HOME_BUTTON" button on the "ipsSidebar"
  Then I am on the "homePage" page
  When I enter <PolicyNumber> into the "POLICY_NUMBER_INPUT"
  And I click the "SUBMIT_BUTTON" button on the page
  Then I am on the "primaryResultsPage" page
  And I unlock the policy
  #When I click the "REFRESH_BUTTON" button on the "ipsSidebar" // Refresh is too slow on firefox.
  #Then I am on the "primaryResultsPage" page
  When I click the "POLICY_ADMIN_BUTTON" button on the "ipsSidebar"
  Then I am on the "policyAdminPage" page
  When I click the "CANCEL_BUTTON" button on the page
  And I accept the alert
  Then I am on the "primaryResultsPage" page
  When I click the "VIN_SEARCH_BUTTON" button on the "ipsSidebar"
  And I wait for the new window to appear
  And I switch to the "new" window
  Then I am on the "vinSearchWindow" page
  When I close the new window
  Then I am on the "primaryResultsPage" page
  When I click the "FEE_CHART_BUTTON" button on the "ipsSidebar"
  And I wait for the new window to appear
  And I switch to the "new" window
  Then I am on the "feeChartWindow" page
  When I close the new window
  Then I am on the "primaryResultsPage" page
  When I click the "SUSP_UPDATE_BUTTON" button on the "ipsSidebar" if it exists
  Then I am on the "suspenseTitlePage" page
  When I click the "SUSP_LETTER_BUTTON" button on the "ipsSidebar"
  Then I am on the "suspenseLetterPage" page
  When I click the "ENDORSEMENT_BUTTON" button on the "ipsSidebar"
  Then I am on the "endorsementPage" page
  And I click the "CANCEL_BUTTON" button on the page
  And I accept the alert
  Then I am on the "primaryResultsPage" page
  When I click the "CANCELLATION_BUTTON" button on the "ipsSidebar" if it exists
  And I click the "CANCELLATION_CLOSE_BUTTON" button on the "ipsSidebar" if it exists
  When I click the "CHGCHECKOUT_BUTTON" button on the "ipsSidebar" if it exists
  #Then I am on the "WIP:chgCheckoutTitlePage" page //Can't Access //Needs .json
  When I click the "NSF_BUTTON" button on the "ipsSidebar"
  And I wait for the new window to appear
  When I switch to the "new" window
  Then I am on the "nsfTitleWindow" page
  When I click the "CANCEL_BUTTON" button on the page
  And I switch to the "Original" window
  Then I am on the "primaryResultsPage" page
  #When I click the "UPAY_BUTTON" button on the "ipsSidebar"
  #And I wait for the new window to appear
  #When I switch to the "new" window
  #Then I am on the "uPayMakePaymentPage" page
  #When I click the "CANCEL_BUTTON" button on the page
  #And I switch to the "Original" window
  #Then I am on the "primaryResultsPage" page
  #When I click the "UPAY_SPANISH_BUTTON" button on the "ipsSidebar"
  #And I wait for the new window to appear
  #When I switch to the "new" window
  #Then I am on the "uPayMakePaymentPage" page
  #When I click the "CANCEL_BUTTON" button on the page
  #And I switch to the "Original" window
  #Then I am on the "primaryResultsPage" page
  When I click the "UNDERWRITING_BUTTON" button on the "ipsSidebar" if it exists
  And I click the "UNDERWRITING_CLOSE_BUTTON" button on the "ipsSidebar" if it exists
  When I click the "DOC_UPLOAD_BUTTON" button on the "ipsSidebar"
  And I wait for the "DOC_UPLOAD_POPUP" popup to appear
  Then I am on the "docUploadPopup" page
  When I click the "CLOSE_BUTTON" button on the page
  Then I am on the "primaryResultsPage" page
  #//Forms New Window is an Error.
  When I click the "FORMS_BUTTON" button on the "ipsSidebar"
  And I wait for the new window to appear
  When I switch to the "new" window
  Then I am on the "formsTitleWindow" page
  When I close the new window
  Then I am on the "primaryResultsPage" page
  When I click the "OLE_BUTTON" button on the "ipsSidebar"
  And I wait for the new window to appear
  And I switch to the "new" window
  Then I am on the "oleTitleWindow" page
  When I close the new window
  Then I am on the "primaryResultsPage" page
  #//PFO Window Error! Username doesn't have access.
  #When I click the "PFO_BUTTON" button on the "ipsSidebar" if it exists
  #And I wait for the new window to appear
  #And I switch to the "new" window
  #Then I am on the "WIP: pfoTitleWindow" page //Needs .json
  #When I close the new window
  #Then I am on the "primaryResultsPage" page
  #When I click the "AGENCY_BUTTON" button on the "ipsSidebar"
  #And I wait for the new window to appear
  #And I switch to the "new" window
  #Then I am on the "agencyTitleWindow" page
  #When I close the new window
  Then I am on the "primaryResultsPage" page
  When I click the "SUPPRESS_DOC_BUTTON" button on the "ipsSidebar"
  Then I am on the "suppressDocTitlePage" page
  When I click the "WPS_BUTTON" button on the "ipsSidebar"
  And I wait for the new window to appear
  And I switch to the "new" window
  Then I am on the "wpsTitleWindow" page
  When I close the new window
  Then I am on the "suppressDocTitlePage" page

  Examples: 
  | PolicyNumber      |
  | "504657488071001" |
  | "109910450473001" |
