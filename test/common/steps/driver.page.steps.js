/* eslint-disable no-unused-vars */
import { Given, When, Then } from "cucumber";
import Utility from "../../../src/utility/utility";
import Constants from "../../../src/utility/constants";
import Driver from "../../../src/utility/driver";

// Pulling path of page specific locators for elements
let pagePath = Constants.getLocatorPath();

/**
 * Specific Step to navigate the Edit, Delete, and Replace buttons for any driver on the driverListPage.json
 */
When(/^I click the "(.*?)" button on driver number "(.*?)" on the driver list$/, (button, index) => {
  const location = require(pagePath + `${global.pageContext}.json`).buttons["BASE_DRIVER_BUTTON"];
  if (button === "edit") {
    button = "11";
  }
  else if (button === "delete") {
    button = "12";
    // Will create TWO alerts
    // Does this driver live in the household or have regular access to the vehicles? If yes, press OK, if no, press Cancel.
    // Are you sure that you want to delete this driver (TREAZ ESKANDER)?
  } 
  if (Driver.isAndroid()) {
    Driver.triggerJQueryEvent(`${location}${index}]/td[${button}]/input`, "click");
  } else {
    Driver.clickElementLoop(`${location}${index}]/td[${button}]/input`);
  }
});