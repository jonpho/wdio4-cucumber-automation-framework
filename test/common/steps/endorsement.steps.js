/* eslint-disable no-unused-vars */
import { Given, When, Then } from "cucumber";
import Utility from "../../../src/utility/utility";
import Constants from "../../../src/utility/constants";
import Driver from "../../../src/utility/driver";

// Pulling path of page specific locators for elements
let pagePath = Constants.getLocatorPath();
let quotedDownPayment;
/**
 * Specific Step to navigate the Edit, Delete, and Replace buttons for any driver on the driverListPage.json
 */

When(/^I get the down payment from "(.*?)" element$/, (element) => {
  const locator = require(pagePath + `${global.pageContext}.json`).special[element];
  global.quotedDownPayment = parseFloat(Driver.getElementTextContent(locator));
  //console.log(global.quotedDownPayment);
});

When(/^I check that the quoted down payment is the same at "(.*?)"$/, (element) => {
  const locator = require(pagePath + `${global.pageContext}.json`).inputs[element];
  let downPaymentInput = Driver.getElementValueContent(locator);
  if (downPaymentInput.includes(global.quotedDownPayment)) {
    //console.log(downPaymentInput);
  } else if (downPaymentInput === "") {
    Driver.deleteElementText(locator);
    Driver.fillElementWithText(locator, global.quotedDownPayment);
    //console.log(`Value was empty, changed value to ${Driver.getElementValueContent(locator)}`);
  } else {
    Driver.deleteElementText(locator);
    Driver.fillElementWithText(locator, global.quotedDownPayment);
    //console.log(`Value was ${downPaymentInput}, changed value to ${Driver.getElementValueContent(locator)}`);
  }
});
  