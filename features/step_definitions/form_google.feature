@google_forms
Feature: Google form
  As a google form user,
  I want to fill a google form,
  So, I can check if google form is working as expected.

  @test1
  Scenario: Google form filling all fields
    Given User open a new browser
    When User visit the google form page
    Then User must see the google forms page
    And User must set option to TRUE
    And User must fill in text input with "AULA"
    And User must check value "BRASIL"
    And User must check value "PORTUGAL"
    And User set date as "25/12/2000"
    And User click to submit form

  @test2
  Scenario Outline: Google form filling fields
    Given User open a new browser
    When User visit the google form page
    Then User must see the google forms page
    And User must set option to TRUE
    And User must fill in text input with "<text_field>"
    And User must check value "<checkbox_value1>"
    And User must check value "<checkbox_value2>"
    And User set date as "<date>"
    And User click to submit form

    Examples: Examples of values
    | text_field                    | checkbox_value1       | checkbox_value2        | date         |
    | OI ESSA É UMA AULA            | BRASIL                | PORTUGAL               | 10/10/2021   |
    | ESSA EH UMA AULA DIFERENTE    | ALEMANHA              | PORTUGAL               | 16/04/1982   |
    | NEW TEST                      | PORTUGAL              | BRASIL                 | 27/02/2024   |

