Feature: Adopting Puppies

  Scenario: A user adopts a puppie
    Given I am on the adopt a puppie page
    When I follow "View Details"
    And I follow "Adopt Me!"
    And I follow "Complete the Adoption"
    And I fill out the form
    Then I should be a happy puppie owner
