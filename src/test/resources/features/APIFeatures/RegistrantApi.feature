Feature: Registrant api test



  Scenario Outline: registrant test
    Given user sets the necessary path params
    And user sets the expected data "<firstname>", "<lastname>" "<SSN>" "<email>" "<username>" "<password>" and "<lan>"
    And user sends the POST request and gets the response
    When user saves the api records to correspondent files
    Then user validates api records

    Examples: api test data
      |firstname|lastname|SSN|email|username|password|lan|
      |Recep    |Aykurt  |293-392-2388|recep@gmail.com|recepaykurt|Recep123.|en|

  @ApiRegistrant
  Scenario:  api get request for users

    Given user sends the get request for users data
    And user deserializes data to Java
    And user saves the users data to correspondent files




