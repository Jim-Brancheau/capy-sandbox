Feature: Login to www.saucedemo.com

Background:
  Given I have visited www.saucedemo.com

Scenario Outline: Login with various users
  When I enter credentials for standard_user
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
