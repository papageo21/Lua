local mod = require("func")
local menu = true

while menu do
    
    print("..Menu..".."\n")
    print("1.calculator")
    print("2.exit \n")

    local choice = io.read()

    print('\n')
    if choice == '1' then
        print("Give first number: ")
        local num1 = io.read()

        print("\nGive second number: ")
        local num2 = io.read()

        local wrong = true

        while wrong do
            
            print("\nAct: (+,-,/,*,^,%): ")
            local act = io.read()
    
            if act == '+' then
                print("To apotelesma einai: "..mod.add(num1, num2))
                wrong = false
                
            elseif act == '-' then
                print("To apotelesma einai: "..mod.sub(num1, num2))
                wrong = false
                     
            elseif act == '*' then
                print("To apotelesma einai: "..mod.pro(num1, num2))
                wrong = false
                
            elseif act == '^' then
                print("To apotelesma einai: "..mod.power(num1, num2))
                wrong = false
                
            elseif act == '/' then
                print("To apotelesma einai: "..mod.div(num1, num2))
                wrong = false
                
            elseif act == '%' then
                print("To apotelesma einai: "..mod.id(num1, num2))
                wrong = false  
            else
                print("\nError act..choice again")         
            end
        end  

        print("\n")
        print([[
            For continue press C
                                else press any button for exit.. ]])
        local cont = io.read()
            if cont == 'C' then
                menu = true
            else 
                print("Goodbye..")
                menu = false    
            end
        else
     print("\n Goodbye..")       
     menu = false
    end
    os.execute("cls")
    
end