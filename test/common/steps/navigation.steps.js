/* eslint-disable no-unused-vars */
import { Given, When, Then } from "cucumber";
import Utility from "../../../src/utility/utility";
import Constants from "../../../src/utility/constants";
import Driver from "../../../src/utility/driver";

// Pulling path of page specific locators for elements
let pagePath = Constants.getLocatorPath();

When(/^I click the "(.*?)" button on the "(.*?)" if it exists$/,
  (element, location) => {
    const button = require(pagePath + `${location}.json`).buttons[element];
    Driver.isClickable(button);
    if (Driver.isClickable(button)) {
      if (Driver.isAndroid()) {
        Driver.triggerJQueryEvent(button, "click");
      } else {
        Driver.clickElementLoop(button);
      }
    }
  //Driver.waitForAngularToLoad();
  });

When(/^I click the "(.*?)" button on the "(.*?)" if it exists and accept the alert$/,
  (element, location) => {
    const button = require(pagePath + `${location}.json`).buttons[element];
    Driver.isClickable(button);
    if (Driver.isClickable(button)) {
      if (Driver.isAndroid()) {
        Driver.triggerJQueryEvent(button, "click");
      } else {
        Driver.clickElementLoop(button);
        Driver.acceptAlert();
      }
    }
  //Driver.waitForAngularToLoad();
  });
