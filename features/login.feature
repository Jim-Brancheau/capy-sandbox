Feature: Login to www.saucedemo.com

Scenario: Login with standard user
  Given I have visited www.saucedemo.com
  When I enter credentials for standard_user
  And I click Login
  Then I successfully login to www.saucedemo.com

Scenario: Login with locked out user
  Given I have visited www.saucedemo.com
  When I enter credentials for locked_out_user
  And I click Login
  Then I receive error stating 'Epic sadface: Sorry, this user has been locked out.'

