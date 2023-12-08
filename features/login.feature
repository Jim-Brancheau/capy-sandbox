Feature: Login to www.saucedemo.com

Background:
  Given I have visited www.saucedemo.com

Scenario Outline: Login with various users
  When I enter credentials for <user_name>
  And I click Login
  Then I successfully login to www.saucedemo.com

Examples:
  | user_name               |
  | standard_user           |
  | problem_user            |
  | performance_glitch_user |
  | error_user              |
  | visual_user             |

Scenario: Login with locked locked out user displays proper error message
  When I enter credentials for locked_out_user
  And I click Login
  Then I receive error stating 'Epic sadface: Sorry, this user has been locked out.'

Scenario: Login with user that doesnt exist displays correct error
  When I enter credentials for fake_user
  And I click Login
  Then I receive error stating 'Epic sadface: Username and password do not match any user in this service'

Scenario: Login without entering any credentials displays correct error
  When I click Login
  Then I receive error stating 'Epic sadface: Username is required'

Scenario: Login with a valid user name but empty password displays correct error message
  When I enter username standard_user
  And I click Login
  Then I receive error stating 'Epic sadface: Password is required'

Scenario: Login without a user displays correct error
  When I enter incorrect password fakepassword123!
  And I click Login
  Then I receive error stating 'Epic sadface: Username is required'
