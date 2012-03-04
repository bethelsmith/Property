#Created by Bethel Smith on 04/03/2012

Feature: Login
    In order to use the web application
    As a registered user
    I want to login up with an email and password
    So that I can add/remove properties
    
Scenario: Successful login
    Given I am on the login page
    When I fill in "Email" with "test@email.com"
    And I fill in "Password" with "Password"
    And I press "Log In"
    Then I should see "Welcome Back"
    And I should be logged in
    
Scenario: Unsuccessful login - wrong email
    Given I am on the login page
    When I fill in "Email" with "wrongtest@email.com"
    And I fill in "Password" with "Password"
    And I press "Log In"
    Then the login form should be shown again
    And I should see "Login Unsuccessful"
    And I should not be logged in
    
Scenario: Unsuccessful login - wrong password
    Given I am on the login page
    When I fill in "Email" with "test@email.com"
    And I fill in "Password" with "wrongPassword"
    And I press "Log In"
    Then the login form should be shown again
    And I should see "Login Unsuccessful"
    And I should not be logged in