const { I } = inject();

Given('I am on onboarding page', () => {
  I.wait(3);
  I.see("VERSION - V4");

});

When('I click create account', () => {
  I.click("No account yet? Create one");
  I.wait(2);
});

When('I enter {string} as name', (name) => {
  I.tap("Name")
  I.fillField('Name', name);
});

When('I enter {string} as email', (email) => {
  I.hideDeviceKeyboard('tapOutside');
  I.fillField('Email', email);
});

When('I enter {string} as password', (pass) => {
  I.hideDeviceKeyboard('tapOutside');
  I.fillField('Password',pass);
});
When('I enter {string} as confirm password', (confirmPass) => {
  I.hideDeviceKeyboard('tapOutside');
  I.fillField('Confirm Password',confirmPass);
});

When('I click register', () => {
  I.hideDeviceKeyboard('tapOutside');
  I.click('REGISTER');
});

When('I click login', () => {
  I.hideDeviceKeyboard('tapOutside');
  I.click('LOGIN');
});

Then('I see {string} as expected message', (message) => {
  I.see(message);
});