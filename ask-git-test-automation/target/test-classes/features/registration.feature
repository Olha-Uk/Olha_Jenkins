
  @registration
    Feature: Registration First Name

      Background:
        Given I open url "http://ask-qa.portnov.com/#/registration"
        When I type "Uk" into element with xpath "//input[@formcontrolname='lastName']"
        When I type "uk@gmail.com" into element with xpath "//input[@formcontrolname='email']"
        When I type "ABC" into element with xpath "//input[@formcontrolname='group']"
        When I type "ABC123" into element with xpath "//input[@formcontrolname='password']"
        When I type "ABC123" into element with xpath "//input[@formcontrolname='confirmPassword']"

      @reg1
      Scenario: First Name - Happy Path
        When I type "Olha" into element with xpath "//input[@formcontrolname='firstName']"
        And I wait for 2 sec
        When I click on element with xpath "//button[@type='submit']"
        And I wait for 2 sec
        Then element with xpath "//ac-registration-confirmation-page" should be displayed
        Then element with xpath "//h4" should contain text "You have been Registered"

        Scenario: Error Message - Empty Space
          When I type "" into element with xpath "//input[@formcontrolname='firstName']"
          When I click on element with xpath "//button[@type='submit']"
          And I wait for 2 sec
          Then element with xpath "//mat-error" should be displayed
          Then element with xpath "//mat-error" should contain text "This field is required"
          And I wait for 3 sec

      Scenario Outline: Error Message - Outline
        When I type <text> into element with xpath "//input[@formcontrolname='firstName']"
        When I click on element with xpath "//button[@type='submit']"
        And I wait for 2 sec
        Then element with xpath "//mat-error" should be displayed
        Then element with xpath "//mat-error" should contain text <text1>
        And I wait for 3 sec
        Examples:
          | text |text1     |
          | ""   |  "This field is required" |
          | "A b"   |  "Whitespaces are not allowed" |





          
