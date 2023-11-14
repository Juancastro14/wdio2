import { Given, When, Then } from '@wdio/cucumber-framework';
import { expect, $ } from '@wdio/globals'

import InputPage from '../pageobjects/input.page';

const pages = {
    input: InputPage
}

Given(/^I am on the (\w+) page$/, async (page) => {
    await browser.url('/inputs')
});

When(/^I write on input the value(.*)$/, async (number) => {
    await InputPage.writeNumber(number)
});

Then(/^I should see input value (.*)$/, async (value) => {
    await expect(InputPage.inputNumber).toBeExisting();
    await expect(InputPage.inputNumber).toHaveValue(value);
});

