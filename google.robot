*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหาคำว่า บิตคอยน์ ใน google จะต้องเจอ Bitcoin is ...
    # เปิด Chrome
    # เข้า google.co.th
    Open Browser    http://www.google.co.th    headlesschrome
    
    # พิมพ์คำค้นหาว่าบิตคอยน์
    Input Text    q    บิตคอยน์

    # กด Enter
    Press Keys    q    RETURN
    # รอจนกว่าจะขึ้นคำว่า ผลการค้นหาประมาณ
    Wait Until Page Contains    ผลการค้นหาประมาณ
    
    # ตรวจสอบผลลัพท์จะต้องเจอ Bitcoin is a decentralized digital currency
    Page Should Contain    บิตคอยน์ เป็นคริปโทเคอร์เรนซี

    Close Browser