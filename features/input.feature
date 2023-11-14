Feature: The Internet Guinea Pig Website inputs elements

  @regresion
  Scenario Outline: As a user, I can write on input elments

    Given I am on the inputs page
    When I write on input the value <number>
    Then I should see input value <number>

    Examples:
      | number | 
      | 4      |
      | 5      |
