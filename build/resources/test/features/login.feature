Feature: Login

  @positive
  Scenario: Login with correct data
    Given User launches Chrome browser
    When User opens Home Page
    And User clicks on Login link
    And User enters correct data
    And User clicks on Yalla button
    Then  User verifies Success message is displayed
    And User quites browser

  @wrongPassword
  Scenario Outline: Login with correct email and wrong password
    Given User launches Chrome browser
    When User opens Home Page
    And User clicks on Login link
    And User enters correct email and wrong password
      | email   | password   |
      | <email> | <password> |
    And User clicks on Yalla button
    Then  User verifies Error message is displayed
    And User quites browser
    Examples:
      | email               | password |
      | vchrommer@gmail.com | vc1234_& |
      | vchrommer@gmail.com | VC1234_& |
      | vchrommer@gmail.com | Vc1234-& |
      | vchrommer@gmail.com | Vc1234_7 |
      | vchrommer@gmail.com | Мс1234_& |