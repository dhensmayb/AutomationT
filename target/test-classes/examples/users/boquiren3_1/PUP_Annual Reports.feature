@smoke
Feature: PUP_Website_History

  Scenario Outline: History of PUP Website <name>
    Given def step0 = 'Using Chrome as browser'
    * configure driver = {type:'chrome', executable: 'C:/Program Files/Google/Chrome/Application/chrome.exe'}
    And def step1 = 'Browser navigates to PUP Website'
    * driver 'https://www.pup.edu.ph/'
    And def step2 = 'Maximize Browser'
    * maximize()
    And def step3 = 'Click About PUP'
    * click('<btn1>')
    And def step4 = 'Click Annual Reports'
    * click('<btn2>')
    Then waitForUrl('<expected>')

    Examples:
      | name               | btn1              | btn2                  | expected                   |
      | History of PUP     | {a}About PUP      | {a}Annual Reports     | www.pup.edu.ph/about/annualreports     |