#Created by Bethel Smith on 04/03/2012

Feature: Signup
    In order to use the web application
    As a new user
    I want to sign up with an email and password
    So that I can log in
    
Scenario: User signup
    Given I am on the signup page
    When I fill in "Email" with "test@email.com"
    And I fill in "Password" with "Password"
    And I fill in "Password confirmation" with "Password"
    And I press "Sign Up"
    Then I should see "Congratulations - you have successfully signed up!"
    And I should be logged in
    
Scenario: Password doesn't match confirmation
    Given I am on the signup page
    When I fill in "Email" with "test@email.com"
    And I fill in "Password" with "Password"
    And I fill in "Password confirmation" with "NotPassword"
    And I press "Sign Up"
    Then the Sign up form should be shown again
    And I should see "Password doesn't match confirmation"
    And I should not be registered

    