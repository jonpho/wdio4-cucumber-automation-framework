@IPS
Feature: Pre-Release Testing

#// PPA policies:
#// CA - Pre-Release - 104639958476001, 104631466607001
#// FL - Pre-Release - 109910779502001, 109910453321001, 109910780465001

Background:
  Given I login to the IPS environment
  Then I am on the "homePage" page

@release
Scenario Outline: Release Pre-Release policy
  When I enter <PolicyNumber> into the "POLICY_NUMBER_INPUT"
  And I click the "PRE_RELEASE_VERSION_CHECKBOX" checkbox on the page
  And I click the "SUBMIT_BUTTON" button on the page
  Then I am on the "primaryResultsPage" page
  When I should see "POLICY_STATUS" with text "Pre-Release"
  And I get the down payment from "DOWN_PAYMENT" element
  And I unlock the policy
  And I click the "ENDORSEMENT_BUTTON" button on the "ipsSidebar"
  Then I am on the "endorsementPage" page
  When I click the "SUBMIT_BUTTON" button on the page
  Then I am on the "endorsementPrimary" page
  And I check that the quoted down payment is the same at "QUOTED_DOWN_PAYMENT_INPUT"
  And I click the "RATE_BUTTON" button on the page
  Then I am on the "rateVerificationPage" page
  When I click the "RELEASE_BUTTON" button on the page
  And I dismiss the alert
  And I verify that the status of policy <PolicyNumber> is "Pre-Release" in the db
  #And I wait for "2" seconds

  Examples: 
  | PolicyNumber      |
  | "104639958476001" |
  | "104631466607001" |
  | "109910779502001" |
  | "109910453321001" |
  | "109910780465001" |

@editprimary
Scenario Outline: Edit Primary Page Information 
  When I enter <PolicyNumber> into the "POLICY_NUMBER_INPUT"
  And I click the "PRE_RELEASE_VERSION_CHECKBOX" checkbox on the page
  And I click the "SUBMIT_BUTTON" button on the page
  Then I am on the "primaryResultsPage" page
  When I should see "POLICY_STATUS" with text "Pre-Release"
  And I unlock the policy
  And I click the "ENDORSEMENT_BUTTON" button on the "ipsSidebar"
  Then I am on the "endorsementPage" page
  When I click the "SUBMIT_BUTTON" button on the page
  Then I am on the "endorsementPrimary" page
  When I click the "RATE_BUTTON" button on the page
  Then I am on the "rateVerificationPage" page
  When I click the "RELEASE_BUTTON" button on the page
  #And I wait for "2" seconds
  And I dismiss the alert
  And I verify that the status of policy <PolicyNumber> is "Pre-Release" in the db
  #And I wait for "2" seconds

  Examples: 
  | PolicyNumber      |
  | "104639958476001" |
  | "104631466607001" |
  | "109910779502001" |
  | "109910453321001" |
  | "109910780465001" |

@editvehicle
Scenario Outline: Edit/Delete/Replace/Add Vehicle
  When I enter <PolicyNumber> into the "POLICY_NUMBER_INPUT"
  And I click the "PRE_RELEASE_VERSION_CHECKBOX" checkbox on the page
  And I click the "SUBMIT_BUTTON" button on the page
  Then I am on the "primaryResultsPage" page
  When I should see "POLICY_STATUS" with text "Pre-Release"
  And I unlock the policy
  And I click the "ENDORSEMENT_BUTTON" button on the "ipsSidebar"
  Then I am on the "endorsementPage" page
  And I click the "VEHICLES_BUTTON" radio button on the page
  And I click the "SUBMIT_BUTTON" button on the page
  Then I am on the "vehicleListPage" page
  And I click the <button> button on vehicle number <vehicle> on the vehicle list
  Then I am on the "editVehiclePage" page
  When I click the "RATE_BUTTON" button on the page
  Then I am on the "rateVerificationPage" page
  When I click the "RELEASE_BUTTON" button on the page
  #And I wait for "2" seconds
  And I dismiss the alert
  And I verify that the status of policy <PolicyNumber> is "Pre-Release" in the db
  #And I wait for "2" seconds

  Examples: 
  | PolicyNumber      | button    | vehicle |
  | "104639958476001" | "edit"    | "1"     |
  #| "104631466607001" | "delete"  | "2"     |
  #| "104639958476001" | "replace" | "1"     |
  | "109910779502001" | "edit"    | "1"     |
  #| "109910453321001" | "delete"  | "2"     |
  #| "109910780465001" | "replace" | "1"     |

@editcoverage
Scenario Outline: Edit/Remove/Add Coverage
  When I enter <PolicyNumber> into the "POLICY_NUMBER_INPUT"
  And I click the "PRE_RELEASE_VERSION_CHECKBOX" checkbox on the page
  And I click the "SUBMIT_BUTTON" button on the page
  Then I am on the "primaryResultsPage" page
  When I should see "POLICY_STATUS" with text "Pre-Release"
  And I unlock the policy
  And I click the "ENDORSEMENT_BUTTON" button on the "ipsSidebar"
  Then I am on the "endorsementPage" page
  And I click the "VEHICLES_BUTTON" radio button on the page
  And I click the "SUBMIT_BUTTON" button on the page
  Then I am on the "vehicleListPage" page
  And I click the <button> button on vehicle number <vehicle> on the vehicle list
  Then I am on the "editVehiclePage" page
  When I click the "RATE_BUTTON" button on the page
  Then I am on the "rateVerificationPage" page
  When I click the "RELEASE_BUTTON" button on the page
  #And I wait for "2" seconds
  And I dismiss the alert
  And I verify that the status of policy <PolicyNumber> is "Pre-Release" in the db
  #And I wait for "2" seconds

  Examples: 
  | PolicyNumber      | button    | vehicle |
  | "104639958476001" | "edit"    | "1"     |
  #| "104631466607001" | "delete"  | "2"     |
  #| "104639958476001" | "replace" | "1"     |
  | "109910779502001" | "edit"    | "1"     |
  #| "109910453321001" | "delete"  | "2"     |
  #| "109910780465001" | "replace" | "1"     |


@editdriver
Scenario Outline: Edit/Delete/Add Driver
  When I enter <PolicyNumber> into the "POLICY_NUMBER_INPUT"
  And I click the "PRE_RELEASE_VERSION_CHECKBOX" checkbox on the page
  And I click the "SUBMIT_BUTTON" button on the page
  Then I am on the "primaryResultsPage" page
  When I should see "POLICY_STATUS" with text "Pre-Release"
  And I unlock the policy
  And I click the "ENDORSEMENT_BUTTON" button on the "ipsSidebar"
  Then I am on the "endorsementPage" page
  And I click the "DRIVERS_BUTTON" radio button on the page
  And I click the "SUBMIT_BUTTON" button on the page
  Then I am on the "driverListPage" page
  And I click the <button> button on driver number <driver> on the driver list
  Then I am on the "editDriverPage" page
  When I click the "RATE_BUTTON" button on the page
  Then I am on the "rateVerificationPage" page
  When I click the "RELEASE_BUTTON" button on the page
  And I wait for "2" seconds
  And I dismiss the alert
  And I verify that the status of policy <PolicyNumber> is "Pre-Release" in the db
  #And I wait for "2" seconds

  Examples: 
  | PolicyNumber      | button    | driver  |
  | "104639958476001" | "edit"    | "1"     |
  #| "104631466607001" | "delete"  | "2"     |
  #| "104639958476001" | "replace" | "1"     |
  | "109910779502001" | "edit"    | "1"     |
  #| "109910453321001" | "delete"  | "2"     |
  #| "109910780465001" | "replace" | "1"     |
