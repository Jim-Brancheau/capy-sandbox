@wip
Feature: Products Page

Background:
  Given I have visited www.saucedemo.com
  And I enter credentials for standard_user
  And I click Login

Scenario: Sort by Name (Z to A) sorts alphabetically, descending
  When I choose to sort by 'Name (Z to A)'
  Then the items are listed in descending alphbetical order
