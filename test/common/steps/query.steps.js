/* eslint-disable no-unused-vars */
import {Given,When,Then} from "cucumber";
import Utility from "../../../src/utility/utility";
import Constants from "../../../src/utility/constants";
import Driver from "../../../src/utility/driver";
import Connect from "../../../src/database/connect";
import Queries from "../../../src/database/queries";

// Values: Expired, Released, Pre-Release.
Then(/^I verify that the status of policy "(.*?)" is "(.*?)" in the db$/, (policyNumber, text) => {
  Driver.wait(1);
  let code = Driver.getStateCodes(policyNumber);
  let database = Driver.getDatabase(code);
  return new Promise((resolve, reject) => {
    Connect.runQuery(database, Queries.policyStatusVerification(policyNumber, code))
      .then((result) => {
        resolve(Driver.shouldBeEqual(result[0].trim(), text));
      }).catch(err => reject(err));
  });
});

When(/^I get the state code of the "(.*?)" policy$/, (policy) => {
  Driver.getStateCodes(policy);
});
