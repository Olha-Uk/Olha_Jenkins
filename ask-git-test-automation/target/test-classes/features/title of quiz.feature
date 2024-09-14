@quiz_Title_of_Quiz

  Feature: Display error when Quiz Title is left empty

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
      When I click on element with xpath "//input[@formcontrolname='name']"
    @Test1
    Scenario: Title is left empty
    And I click on element with xpath "//ac-quiz-builder-page//form//mat-card/../.."
    And I wait for 1 sec
    And element with xpath "//mat-error[contains(text(),'')]" should contain text "This field is required"
    @Test2
    Scenario: Min length  for Quiz Title
      When I type "Q" into element with xpath "//input[@formcontrolname='name']"
      And I wait for 3 sec
      And I click on element with xpath "//ac-quiz-builder-page//form//mat-card/../.."
      And I wait for 2 sec
      Then element with xpath "//mat-icon[contains(text(),'add_circle')]/.." should be displayed
      And I wait for 1 sec
     @Test3
      Scenario: Max length for Quiz Title
        When I type "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijkl1" into element with xpath "//input[@formcontrolname='name']"
        And I wait for 2 sec
        And I click on element with xpath "//ac-quiz-builder-page//form//mat-card/../.."
       Then I wait for 1 sec
        Then element with xpath "//mat-icon[contains(text(),'add_circle')]/.." should be displayed 
        And I wait for 1 sec                                                                     
      @Test4
        Scenario: Max+1 length for Quiz Title
          When I type "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijkl11" into element with xpath "//input[@formcontrolname='name']"
          And I wait for 2 sec
          And I click on element with xpath "//ac-quiz-builder-page//form//mat-card/../.."
            #expected_result
          And element with xpath "//mat-error[contains(text(),'')]" should contain text "Title cannot exceed more than 1000 characters"
        And I wait for 1 sec
#          # actual result
        Then element with xpath "//mat-icon[contains(text(),'add_circle')]/.." should be displayed
          And I wait for 2 sec
       @Test5
          Scenario: Eliminate leading and trailing spaces
            When I type "   Valid Title   " into element with xpath "//input[@formcontrolname='name']"
            And I wait for 2 sec
            And I click on element with xpath "//ac-quiz-builder-page//form//mat-card/../.."
#            And element with xpath "//mat-error[contains(text(),'')]" should contain text "Title cannot exceed more than 1000 characters"
                @Test6
          Scenario: Alphanumeric and special characters
            When I type "Valid123!@#" into element with xpath "//input[@formcontrolname='name']"
            And I wait for 3 sec
            And I click on element with xpath "//ac-quiz-builder-page//form//mat-card/../.."
            And I wait for 2 sec
                  #expected result
            Then element with xpath "//mat-icon[contains(text(),'add_circle')]/.." should be displayed


               @Test7
            Scenario:  System should prevents saving Title with Only Spaces
                 When I type " " into element with xpath "//input[@formcontrolname='name']"
                    And I wait for 3 sec
                      And I click on element with xpath "//ac-quiz-builder-page//form//mat-card/../.."
                 And I wait for 2 sec
                  #expected result
                And element with xpath "//mat-error[contains(text(),'')]" should contain text "This field is required"
                 And I wait for 1 sec
                 #actual resul
               Then element with xpath "//mat-icon[contains(text(),'add_circle')]/.." should be displayed

                 @Test8
                 Scenario: System removes leading and trailing spaces and saves valid tittle
                   When I type "   Test   Title   " into element with xpath "//input[@formcontrolname='name']"
                   And I wait for 2 sec
                   Then I click on element with xpath "//mat-icon[contains(text(),'add_circle')]/.."
                   And I click on element with xpath "//mat-panel-title[contains(text(),'Q1')]/../../..//*[contains(text(),'Textual')]"
                   And I wait for 2 sec
                 Then I type "Q1" into element with xpath "//mat-panel-title[contains(text(),'Q1')]/../../..//*[@formcontrolname='question']"
                   And I click on element with xpath "//span[contains(text(),'Save')]"
                   And I wait for 4 sec
                   #expected result
                   Then element with xpath "//mat-panel-title[contains(text(),'Test Title')]" should be displayed
                   And I wait for 3 sec




      








