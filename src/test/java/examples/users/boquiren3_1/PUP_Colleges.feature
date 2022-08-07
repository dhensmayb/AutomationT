@smoke
Feature: PUP_Website_Courses

  Scenario Outline: Courses in PUP Website <name>
    Given def step0 = 'Using Chrome as browser'
    * configure driver = {type:'chrome', executable: 'C:/Program Files/Google/Chrome/Application/chrome.exe'}
    And def step1 = 'Browser navigates to PUP Website'
    * driver 'https://www.pup.edu.ph/'
    And def step2 = 'Maximize Browser'
    * maximize()
    And def step3 = 'Click Academic'
    * click('<btn1>')
    And def step4 = 'Click Institute of Technology'
    * click('<btn2>')
    Then waitForUrl('<expected>')

    Examples:
      | name               | btn1              | btn2                       | expected                 |
      | Courses in PUP     | {a}Academic       | {a}Institute of Technology  | www.pup.edu.ph/itech     |