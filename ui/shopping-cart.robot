*** Test Cases ***
คุณพ่อ ต้องการซื้อของเล่นให้ลูก โดยส่งผ่าน Kerry จ่ายเงินด้วย Visa Card และใช้แต้มบางส่วน และต้องการ SMS Noti
    Select Toys             ID=10    Name=Princess Training Bicycle   Price=119.95
    ...                     Point=39
    Add to Shopping Cart    ID=10    
    ...                     Name=Princess Training Bicycle
    ...                     Price=119.95
    ...                     Brand=SportsFun
    ...                     Qty=1
    ...                     Exchange Rate=33.02
    ...                     Order Date=18/01/2022
    ...                     Description= ???
    ...                     Price Baht=3,960.75
    ...                     Point=39
    Calculate Total         Total Qty=2
    ...                     Total=4,388.36
    ...                     Point=43
    More Toys
    Select Shipping Method
    Add Shipping Charges
    Enter Shipping Info
    Select Payment Method
    Verify creadit info and complete transction
    Notification

*** Keywords ***
Select Toys
    [Arguments]   ${ID}    ${Name}   ${Price}    ${Point}
    Open Browser      http://uat.shopping-cart.com     chrome
    Wait Until Page Contain     Call us now
    Element Text Should Be    id=name_10_label    ${Name}
    Element Text Should Be    id=price_10_label    ${Price}

    Click Image    id=product_10_image
    Wait Until Element Is Enabled   id=add_to_cart_button

    Element Text Should Be    id=name_label    ${Name}
    Element Text Should Be    id=price_and_point_label    ${Price} (${Point} Points)

Add to Shopping Cart    
    [Arguments]             ${ID}=10    
    ...                     Name=Princess Training Bicycle
    ...                     Price=119.95
    ...                     Brand=SportsFun
    ...                     Qty=1
    ...                     Exchange Rate=33.02
    ...                     Order Date=18/01/2022
    ...                     Description= ???
    ...                     Price Baht=3,960.75
    ...                     Point=39