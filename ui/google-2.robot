*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหาคำว่า 1112 ใน Google จะต้องเจอคำว่า 1112 The Pizza Company
    เปิด Chrome และ เข้า google.co.th
    พิมพ์คำค้นหาว่า    1112
    กด Enter
    ตรวจสอบผลลัพท์จะต้องเจอ     เดอะ พิซซ่า xxxxคอมปะนี 1112

ค้นหาคำว่า บิตคอยน์ ใน google จะต้องเจอ Bitcoin is ...
    เปิด Chrome และ เข้า google.co.th
    พิมพ์คำค้นหาว่า    บิตคอยน์
    กด Enter
    ตรวจสอบผลลัพท์จะต้องเจอ     บิตคอยน์ เป็นคริปโทเคอร์เรนซี

*** Keywords ***
เปิด Chrome และ เข้า google.co.th
    Open Browser    http://www.google.co.th    chrome
    
พิมพ์คำค้นหาว่า
    [Arguments]     ${search text}
    Input Text    q    ${search text}

กด Enter
    Press Keys    q    RETURN
    Wait Until Page Contains    ผลการค้นหาประมาณ

ตรวจสอบผลลัพท์จะต้องเจอ
    [Arguments]    ${search result}
    Page Should Contain    ${search result}
    Close Browser