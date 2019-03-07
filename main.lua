local disTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 100, 600, 110 )
disTextField.id = "d textField"

local diameterisTextField = display.newText( "Enter Diameter", display.contentCenterX, display.contentCenterY - 10, native.systemFont, 80 )
diameterisTextField.id = "diameter textField"
diameterisTextField:setFillColor( 1, 1, 1 )

local circumferenceisTextField = display.newText( "cumference", display.contentCenterX, display.contentCenterY - 430, native.systemFont, 80 )
circumferenceisTextField.id = "cience textField"
circumferenceisTextField:setFillColor( 1, 1, 1 )

local areaisTextField = display.newText( "Area", display.contentCenterX, display.contentCenterY - 330, native.systemFont, 80 )
areaisTextField.id = "area textField"
areaisTextField:setFillColor( 1, 1, 1 )



local calculate = display.newImageRect( "calbut.png", 800, 600 )
calculate.x = display.contentCenterX
calculate.y = 1500
calculate.id = "calbut"
display.setDefault("background", 255, 0, 255)

function round(number, numberDecimalPlaces)
  local multiply = 10^(numberDecimalPlaces or 2)
  return math.floor(number * multiply + 0.5) / multiply
end
 
local function calculateTouch( event )
    
    local diameteris
    local circumferenceis
    local areais
 
  dis = disTextField.text
    areais = ((dis / 2) * (dis / 2)) * 3.141592653
    areais = (areais)
    circumferenceis = (dis / 2) * 2 * 3.141592653
    circumferenceis = (circumferenceis)

    areaisTextField.text = "The area is " .. areais
     circumferenceisTextField.text = "circumference is " .. circumferenceis

local calculate = display.newImageRect( "yay.png", 700, 500 )
calculate.x = display.contentCenterX
calculate.y = 200
calculate.id = "yay"

    return true
end

calculate:addEventListener( "touch", calculateTouch )