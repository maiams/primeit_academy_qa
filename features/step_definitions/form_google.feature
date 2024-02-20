@google_forms
Feature: Google form
  As a google form user,
  I want to fill a google form,
  So, I can check if google form is working as expected.

  Scenario: Google form filling all fields
    Given User open a new browser
    When User go to "https://forms.gle/n3tMSHrF2EGEg3Gd8"
    Then User must see the google forms page
    Then User must set option to TRUE
    Then User must fill in text input with "AULA"
