/* eslint-disable no-unused-vars */
import { Given, When, Then } from "cucumber";
import Utility from "../../../src/utility/utility";
import Constants from "../../../src/utility/constants";
import Driver from "../../../src/utility/driver";

// Pulling path of page specific locators for elements
let pagePath = Constants.getLocatorPath();

/**
 * Specific Step to navigate the Edit, Delete, and Replace buttons for any vehicle on the vehicleListPage.json
 */
When(/^I click the "(.*?)" button on vehicle number "(.*?)" on the vehicle list$/, (button, index) => {
  const location = require(pagePath + `${global.pageContext}.json`).buttons["BASE_VEHICLE_BUTTON"];
  if (button === "edit") {
    button = "editVeh";
  }
  else if (button === "delete") {
    button = "delVeh";
    // Will create an alert
  } 
  else if (button === "replace") {
    button = "replaceVeh";
    // Will create an alert
  } else if (button === "add") {
    index = "1";
    button = "addVeh";
  }
  if (Driver.isAndroid()) {
    Driver.triggerJQueryEvent(`${location}${button}'][${index}]`, "click");
  } else {
    Driver.clickElementLoop(`${location}${button}'][${index}]`);
  }
});