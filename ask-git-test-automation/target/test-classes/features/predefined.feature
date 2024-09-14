@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    And element with xpath "//*[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//*[@name='q']"
    And I click on element using JavaScript with xpath "(//input[@name='btnK'])[2]"
    And I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

    @predefined2
    Scenario: Steps for Bing Search Engine
      Given I open url "https://www.bing.com/"
      Then I should see page title as "Bing"
      And element with xpath "//*[@id='sb_form_q']" should be present
      When I type "Behavior Driven Development" into element with xpath "//*[@id='sb_form_q']"
      And I click on element using JavaScript with xpath "//*[@type='submit']"
      And I wait for element with xpath "//*[@id='b_content']" to be present
      Then  element with xpath "//*[@id='b_content']" should contain text "BDD"
      And I wait for 2 sec

  @predefined3
  Scenario: Steps for Excite/Positive scenario
    Given I open url "https://excite.com"
    Then I should see page title as "www.excite.com"
    And element with xpath "//input[@name='q']" should be present
    When I type "Excite" into element with xpath "//input[@name='q']"
    And I click on element with xpath "//button[contains(text(),'Search')]"
    And I switch to new window
    Then I wait for element with xpath "//div[contains(@class, 'mainline-results')]" to be present
    Then element with xpath "//div[contains(@class, 'mainline-results')]" should contain text "Excite"
    Then I switch to first window

  @predefined4
  Scenario: Search for a non-existent query on Excite/ Negative scenario
    Given I open url "https://excite.com"
    Then I should see page title as "www.excite.com"
    And element with xpath "//input[@name='q']" should be present
    When I type "ksndskfsdflskj" into element with xpath "//input[@name='q']"
    And I click on element with xpath "//button[contains(text(),'Search')]"
    And I switch to new window
    And I wait for element with xpath "//div[@class='notice-noresults-empty']//strong" to be present
    Then I switch to first window

  @predefined5
  Scenario: Steps for DuckDuckGo
    Given I open url "https://duckduckgo.com"
    Then I should see page title contains "DuckDuckGo — Privacy, simplified"
    And element with xpath "//input[@id='searchbox_input']" should be present
    When I type "DuckDuckGo" into element with xpath "//input[@id='searchbox_input']"
    And I click on element with xpath "//button[@class='iconButton_button__6x_9C searchbox_searchButton__F5Bwq']"
    Then I wait for element with xpath "//article[@id='r1-0']" to be present
    Then element with xpath "//article[@id='r1-0']" should contain text "DuckDuckGo"
    Then I click on element with xpath "//span[contains(text(),'Website')]"
    And I wait for element with xpath "//h2[contains(text(),'Switch to DuckDuckGo. It’s private and free!')]" to be present

  @predefined6
  Scenario: Steps for Swisscows
    Given I open url "https://swisscows.com"
    Then I should see page title contains "Your private and anonymous search engine Swisscows"
    And element with xpath "//div[@class='searchbar']" should be present
    When I accept alert
 And I wait for 5 sec
#    When I type "Anonymous search engine" into element with xpath "//div[@class='searchbar']"
#  Then I click on element with xpath "//div[@class='searchbar']//input[@name='query']"
#    Then I click on element with xpath "//input[@name='query']"

  @predefined7
  Scenario: Steps for OneSearch
    Given I open url "https://www.onesearch.com/"
    Then  I should see page title contains "OneSearch"
    And element with xpath " //input[@id='yschsp']" should be present
    Then I type "Hello" into element with xpath "//input[@id='yschsp']"
    And I click on element with xpath "//button[@class='sbb']"
    Then I wait for element with xpath "//ol[@class='mb-15 reg searchCenterMiddle']" to be present
    Then element with xpath "//ol[@class='mb-15 reg searchCenterMiddle']" should contain text "Hello"


  @predefined8
  Scenario: Steps for giveWater
    Given I open url "https://www.givewater.com/"
    Then I should see page title contains "Search the Web to Give Clean Water to Those in Need » giveWater Search Engine"
    And element with xpath "//input[@id='site-search']" should be present
    Then I type "Hello" into element with xpath "//input[@id='site-search']"
    And I click on element with xpath "//button[@class='btn-search']"
    Then I wait for element with xpath "//div[@class='mainline-results mainline-results__web']" to be present
    Then element with xpath "//div[@class='mainline-results mainline-results__web']" should not have text as "Hello"

  @predefined9
  Scenario: Get Quote Page - Name input field
    Given  I open url "https://quote-qa.portnov.com/"
    Then I should see page title as "Get a Quote"
    When I click on element with xpath "//input[@id='name']"
    And I type "Olha Ukhan" into element with xpath "//input[@id='name']"
    And I wait for 2 sec
    Then element with xpath "//input[@id='name']" should have attribute "value" as "Olha Ukhan"
    And I wait for 1 sec

    Then element with xpath "//input[@formcontrolname='password']" should have attribute "type" as "password"
