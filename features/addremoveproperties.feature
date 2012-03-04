#Created by Bethel Smith on 04/03/2012

Feature: Add/remove properties
    In order adverties my proprties
    As a user
    I want to add and remove properties fom the database
    
Scenario: Add a property
    Given that I am logged in
    And I am on the 'add a property' page
    When I fill in the form details
    And I press 'Add'
    Then I should see 'Property Added'
    And the property should be added to the database

Scenario: Remove a property
    Given that I am logged in
    And I am on the 'my properties' page
    When I press 'Remove'
    Then I should see 'Property Removed'
    And the property should be deleted from the database