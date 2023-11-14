Feature: The Internet Guinea Pig Website

  Scenario Outline: As a user, I can log into the secure area

    Given I am on the login page
    When I login with <username> and <password>
    Then I should see a flash message saying <message>

    Examples:
      | username | password             | message                        |
      | tomsmith | SuperSecretPassword! | You logged into a secure area! |
      | foobar   | barfoo               | Your username is invalid!      |
      
  @regresion
  Scenario Outline: As a user, I can write on input elments

    Given I am on the inputs page
    When I write on input the value <number>
    Then I should see input value <number>

    Examples:
      | number |
      | 4      |
      | 5      |
