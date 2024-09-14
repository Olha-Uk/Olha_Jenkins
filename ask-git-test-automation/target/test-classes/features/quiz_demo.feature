@quiz_demo
Feature: Quiz Demo

  Background:
    Given I open url "http://ask-qa.portnov.com/#/login"
    Then I should see page title contains "Assessment Control @ Portnov"
    When I type "ask_instr@aol.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "ABC123" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//span[contains(text(),'Sign In')]"
    And I wait for 1 sec
    Then element with xpath "//h3" should have text as "Galina Teacher"
    And element with xpath "//div[@class='info']" should contain text "TEACHER"
    And I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    And I wait for 2 sec
    When I click on element with xpath "//*[text()='Create New Quiz']"
    And I wait for 1 sec


@quiz1
  Scenario: Create Quiz With Textual Question Showstopper
  And I type "Demo Quiz - TQ Showstopper" into element with xpath "//input[@formcontrolname='name']"
  And I click on element with xpath "//mat-icon[text()='add_circle']"
  When I click on element with xpath "//mat-panel-title[contains(text(),'Q1')]/../../..//*[contains(text(),'Textual')]"
  And I type "Question 1" into element with xpath "//mat-panel-title[contains(text(),'Q1')]/../../..//*[@formcontrolname='question']"
  When I click on element with xpath "//mat-panel-title[contains(text(),'Q1')]/../../..//label[@class='mat-checkbox-layout']"
  Then element with xpath "//mat-panel-title[contains(text(),'Q1')]" should contain text "*"
  And I wait for 2 sec

  
@textual_showsopper_preview @quiz
  Scenario: Textual Question Showstopper - Preview
    And I type "Demo Quiz - TQ Showstopper" into element with xpath "//input[@formcontrolname='name']"
    And I click on element with xpath "//mat-icon[text()='add_circle']"
    When I click on element with xpath "//mat-panel-title[contains(text(),'Q1')]/../../..//*[contains(text(),'Textual')]"
    And I wait for 2 sec
    And I type "Question 1" into element with xpath "//mat-panel-title[contains(text(),'Q1')]/../../..//*[@formcontrolname='question']"
    When I click on element with xpath "//mat-panel-title[contains(text(),'Q1')]/../../..//label[@class='mat-checkbox-layout']"
    And I click on element with xpath "//span[contains(text(),'Preview')]"
    And I wait for 2 sec
    Then element with xpath "//p[@class='show-stopper ng-star-inserted']" should contain text "Show-Stopper Question"
    And I wait for 1 sec
    And I click on element with xpath "//span[contains(text(),'Close')]"

  @showstopper
    Scenario: Textual Question Showstopper - One per Quiz
      And I type "Demo Quiz - TQ Showstopper" into element with xpath "//input[@formcontrolname='name']"
      And I click on element with xpath "//mat-icon[text()='add_circle']"
      When I click on element with xpath "//mat-panel-title[contains(text(),'Q1')]/../../..//*[contains(text(),'Textual')]"
      And I type "Question 1" into element with xpath "//mat-panel-title[contains(text(),'Q1')]/../../..//*[@formcontrolname='question']"
      When I click on element with xpath "//mat-panel-title[contains(text(),'Q1')]/../../..//label[@class='mat-checkbox-layout']"
      Then element with xpath "//mat-panel-title[contains(text(),'Q1')]" should contain text "*"
      And I click on element with xpath "//mat-icon[text()='add_circle']"
      When I click on element with xpath "//mat-panel-title[contains(text(),'Q2')]/../../..//*[contains(text(),'Textual')]"
      And I wait for 2 sec
      And I type "Question 2" into element with xpath "//mat-panel-title[contains(text(),'Q2')]/../../..//*[@formcontrolname='question']"
      When I click on element with xpath "//mat-panel-title[contains(text(),'Q2')]/../../..//label[@class='mat-checkbox-layout']"
      Then element with xpath "//mat-panel-title[contains(text(),'Q2')]" should contain text "*"
 @quiz
    Scenario: Textual Question Showstopper - List of quizzes
   And I type "Demo Quiz - TQ Showstopper" into element with xpath "//input[@formcontrolname='name']"
   And I click on element with xpath "//mat-icon[text()='add_circle']"
   When I click on element with xpath "//mat-panel-title[contains(text(),'Q1')]/../../..//*[contains(text(),'Textual')]"
   And I type "Question 1" into element with xpath "//mat-panel-title[contains(text(),'Q1')]/../../..//*[@formcontrolname='question']"
   When I click on element with xpath "//mat-panel-title[contains(text(),'Q1')]/../../..//label[@class='mat-checkbox-layout']"
   Then element with xpath "//mat-panel-title[contains(text(),'Q1')]" should contain text "*"
   And I click on element with xpath "//span[contains(text(),'Save')]"
   And I wait for 2 sec
   Then element with xpath "//mat-panel-title[contains(text(),'Demo Quiz - TQ Showstopper')]" should be displayed
   When I click on element with xpath "//mat-panel-title[contains(text(),'Demo Quiz - TQ Showstopper')]"
   And I click on element with xpath "//mat-panel-title[contains(text(),'Demo Quiz - TQ Showstopper')]/../../..//*[text()='Delete']"
   And I click on element with xpath "//ac-modal-confirmation/..//*[text()='Delete']"





  