
Feature: Google search
  As a google user,
  I want to search for any kind of text,
  So, I can learn new things.

  Background: Google site is up and reachable
    Given User open a new browser
    When User go to "https://google.com"
    Then User must see the google home page
    

  Scenario: Google search for text
    Given User search for "batata"
    When Page loads
    Then User must see "batata" related results


  Scenario: Google search image
    Given User search for "estadio"
    When Page loads
    Then User must see "batata" related results

  Scenario: Failing test
    Given User search for "primeit"
    When Page loads
    Then User must see "batata" related results

    
