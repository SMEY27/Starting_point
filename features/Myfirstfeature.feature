Feature: my first feature
  Scenario: puppies website
   When I open the website

  Scenario: Print tittle of the website
    When I open the website
    Then I print the tittle

  Scenario: expect title of the website failure
    When I open the website
    Then the title should be "Sallys puppies"

  Scenario: expect title of the website successful
    When I open the website
    Then the title should be "Sally's Puppy Adoption Agency"

  Scenario: expect details of the website brook
    When I open the website
    And I click view details against puppy indexed "0"

  Scenario: expect details of the website hanna
    When I open the website
    And I click view details against puppy indexed "1"

  Scenario: expect details of the website maggie
    When I open the website
    And I click view details against puppy indexed "2"

  Scenario: expect details of the website ruby sue
    When I open the website
    And I click view details against puppy indexed "3"

  Scenario: adopt ruby
    When I open the website
    And I click view details against puppy indexed "3"
    Then I click adopt me

   Scenario: expect to go the second page
     When I open the website
     And I click on page 2
      Then the url should show "page=2"

#   click view details for Brook, adopt me, add collar and leash, complete the adoption, enter your details on the screen and place order
    Scenario: expect to complete an adoption
     When I open the website
      And I click view details against puppy indexed "0"
      And I click adopt me
      And I add collar and leash
      And I complete the adoption
      And I place the order
       Then I should see "Thank you for adopting a puppy!"

#  Click view details for Brook, adopt me, add collar and leash, chew toy, first vet visit and add another Puppy Hanna
  Scenario: Expect to complete adoption of brook and add another puppy hanna
    When I open the website
    And I click view details against puppy indexed "0"
    And I click adopt me
    And I add collar and leash
    And I add Chew toy
    And I add first Vet Visit
    And I add another Puppy
    Then I am on the home page
    And I click view details against puppy indexed "1"

#Finding Index for Sally
 Scenario:Expect to find index of sally
   When I open the website
   Then I show index of Sally

Scenario: Expect to find all the female dogs
  When I open the website
  Then I search all the female dogs
  And I print the list of female dogs


