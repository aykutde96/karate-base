Feature: Create Token Caller

  Background:
    Given url 'https://restful-booker.herokuapp.com'
    And path 'auth'
    And header Content-Type = 'application/json'

    Scenario: Create Token
      * def requestBody = {"username" : "admin", "password" : "password123"}
      And request requestBody
      When method post
      Then status 200
      * print response
