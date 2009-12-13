Feature: Display Items
  In order to successfully submit an order
  As a customer
  I want to browse items and select them for my order 

  Scenario: Show item
    Given an item exists with name: "Pizza", description: "Tasty Treat"
    When I go to the show page for that item
    Then I should see "Pizza" within "h1"
    And I should see "Tasty Treat"
    
  Scenario: List items
    Given the following items exist
     | name  | description           |
     | Salad | A healthy alternative |
     | Wings | Smothered in sauce |
    When I go to the items page
    Then I should see the items table
     | Salad | A healthy alternative |
     | Wings | Smothered in sauce |