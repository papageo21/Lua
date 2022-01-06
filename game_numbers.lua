function add(number1, number2)
    return number1 + number2
end
function sub(num1, num2)
    return num1 - num2
end
function pro(num1, num2)
    return num1 * num2
end
function div(num1, num2)
    return num1 / num2
end
function power(num1, num2)
    return num1 ^ num2
end

function counter()
    local count = 0
    return function()
        count = 1 + count 
        return count

    end
end

math.randomseed(os.time())
local play = true
local error = counter()
local score = 0
local tries = counter()
local f_s = 0

while play do
    
    print("---Menu---\n")

    print("1.Game ")
    print("2.Exit \n")
    local player = io.read()

    if player == '1' then
        print("\n1.add ")
        print("2.sub ")
        print("3.pro ")
        print("4.power ")
        print("5.div ")
        print("**Press E for exit at any time!!")
        player = io.read()

        if player == "1" then
            for i = 1, 10, 1 do
                math.randomseed(os.time())
                local num1 = math.random(2, 100)
                local num2 = math.random(2, 100)
                print(num1.." + "..num2.." = " )
                local result = add(num1, num2)
                local choice = io.read()
                
                if tonumber(choice) ==  result then
                    print("\nBravo!!")
                    score = score + 1
                    print("\nCorrect: "..score)
                    print("False:"..f_s)
                    print("Tries: "..tries().."/10\n")
                elseif choice == 'E' then
                    print("--Your score-- \n")
                    print("Correct: "..score)
                    print("False:"..f_s)
                    print("Tries: "..tries().."/10\n")
                    print("Bye Bye")    
                    os.exit()
                else
                    f_s = f_s + 1
                    print("\nCorrect: "..score)
                    print("False: "..f_s)
                    print("Tries: "..tries().."/10\n")  
                    if f_s == 5 then
                         print("Game over..")
                         os.exit()
                    end     
                 end
                if i == 10 then
                    if score > 5 then
                        print("\nVery Good job..Level 2\n")
                        for i = 1, 10, 1 do
                            math.randomseed(os.time())
                            local num1 = math.random(101, 1000)
                            local num2 = math.random(101, 1000)
                            print(num1.." + "..num2.." = " )
                            local result = add(num1, num2)
                            local choice = io.read()
                            
                            if tonumber(choice) ==  result then
                                print("\nBravo!!")
                                score = score + 1
                                print("\nCorrect: "..score)
                                print("False:"..f_s)
                                print("Tries: "..tries().."/20\n")
                            elseif choice == 'E' then
                                print("--Your score-- \n")
                                print("Correct: "..score)
                                print("False:"..f_s)
                                print("Tries: "..tries().."/10\n")
                                print("Bye Bye")    
                                os.exit()    
                            else
                                f_s = f_s + 1
                                print("\nCorrect: "..score)
                                print("False: "..f_s)
                                print("Tries: "..tries().."/20\n")  
                                if f_s == 10 then
                                    print("Game over..")
                                    os.exit()
                                end     
                             end
                            if i == 10 then
                                if score >= 17 then
                                    print("Congratulations..You 're the best!!!\n")
                                elseif score >= 11 and score < 17 then
                                    print("Very Good..Keep it up\n")
                                else
                                    print("Good job..try again.\n")    
                                   
                                end
                            end 
                    
                        end   
                    else
                        print("Try again..")
                    end  
                end  
            end
        elseif player == "2" then
                for i = 1, 10, 1 do
                    math.randomseed(os.time())
                    local num1 = math.random(2, 100)
                    local num2 = math.random(2, 100)
                    print(num1.." - "..num2.." = " )
                    local result = sub(num1, num2)
                    local choice = io.read()
                    
                    if tonumber(choice) ==  result then
                        print("\nBravo!!")
                        score = score + 1
                        print("\nCorrect: "..score)
                        print("False:"..f_s)
                        print("Tries: "..tries().."/10\n")
                    elseif choice == 'E' then
                        print("--Your score-- \n")
                        print("Correct: "..score)
                        print("False:"..f_s)
                        print("Tries: "..tries().."/10\n")
                        print("Bye Bye")    
                        os.exit()    
                    else
                        f_s = f_s + 1
                        print("\nCorrect: "..score)
                        print("False: "..f_s)
                        print("Tries: "..tries().."/10\n")  
                         if f_s == 5 then
                            print("Game over..")
                            os.exit()
                         end       
                     end
                    if i == 10 then
                        if score >= 5 then
                            print("\nVery Good job..Level 2\n")
                            for i = 1, 10, 1 do
                                math.randomseed(os.time())
                                local num1 = math.random(101, 1000)
                                local num2 = math.random(101, 1000)
                                print(num1.." - "..num2.." = " )
                                local result = sub(num1, num2)
                                local choice = io.read()
                                                      
                                if tonumber(choice) ==  result then
                                    print("\nBravo!!")
                                    score = score + 1
                                    print("\nCorrect: "..score)
                                    print("False:"..f_s)
                                    print("Tries: "..tries().."/20\n")
                                elseif choice == 'E' then
                                    print("--Your score-- \n")
                                    print("Correct: "..score)
                                    print("False:"..f_s)
                                    print("Tries: "..tries().."/10\n")
                                    print("Bye Bye")    
                                    os.exit()    
                                else
                                    f_s = f_s + 1
                                    print("\nCorrect: "..score)
                                    print("False: "..f_s)
                                    print("Tries: "..tries().."/20\n")  
                                    if f_s == 10 then
                                        print("Game over..")
                                        os.exit()
                                    end     
                                 end

                                 if i == 10 then
                                    if score >= 17 then
                                        print("Congratulations..You 're the best!!!\n")
                                    elseif score >= 11 and score < 17 then
                                        print("Very Good..Keep it up\n")
                                    else
                                        print("Good job..try again.\n")  
                                    end
                                end 
                        
                            end   
                        else
                            print("Try again..")
                        end  
                    end   
                end
            elseif player == "3" then
                for i = 1, 10, 1 do
                    math.randomseed(os.time())
                    local num1 = math.random(2, 100)
                    local num2 = math.random(2, 100)
                    print(num1.." * "..num2.." = " )
                    local result = pro(num1, num2)
                    local choice = io.read()
                    
                    if tonumber(choice) ==  result then
                        print("\nBravo!!")
                        score = score + 1
                        print("\nCorrect: "..score)
                        print("False:"..f_s)
                        print("Tries: "..tries().."/10\n")
                    elseif choice == 'E' then
                        print("--Your score-- \n")
                        print("Correct: "..score)
                        print("False:"..f_s)
                        print("Tries: "..tries().."/10\n")
                        print("Bye Bye")    
                        os.exit()    
                    else
                        f_s = f_s + 1
                        print("\nCorrect: "..score)
                        print("False: "..f_s)
                        print("Tries: "..tries().."/10\n")  
                         if f_s == 5 then
                            print("Game over..")
                            os.exit()
                         end                           
                     end 
                    if i == 10 then
                        if score >= 5 then
                            print("\nVery Good job..Level 2\n")
                            for i = 1, 10, 1 do
                                math.randomseed(os.time())
                                local num1 = math.random(101, 1000)
                                local num2 = math.random(101, 1000)
                                print(num1.." * "..num2.." = " )
                                local result = pro(num1, num2)
                                local choice = io.read()
                                
                                
                                if tonumber(choice) ==  result then
                                    print("\nBravo!!")
                                    score = score + 1
                                    print("\nCorrect: "..score)
                                    print("False:"..f_s)
                                    print("Tries: "..tries().."/20\n")
                                elseif choice == 'E' then
                                    print("--Your score-- \n")
                                    print("Correct: "..score)
                                    print("False:"..f_s)
                                    print("Tries: "..tries().."/10\n")
                                    print("Bye Bye")    
                                    os.exit()    
                                else
                                    f_s = f_s + 1
                                    print("\nCorrect: "..score)
                                    print("False: "..f_s)
                                    print("Tries: "..tries().."/20\n")  
                                    if f_s == 10 then
                                        print("Game over..")
                                        os.exit()
                                    end     
                                 end
                                 if i == 10 then
                                    if score >= 17 then
                                        print("Congratulations..You 're the best!!!\n")
                                    elseif score >= 11 and score < 17 then
                                        print("Very Good..Keep it up\n")
                                    else
                                        print("Good job..try again.\n")     
                                    end
                                end  
                        
                            end   
                        else
                            print("Try again..")
                        end   
                    end
                end
            elseif player == "4" then
                for i = 1, 10, 1 do
                    math.randomseed(os.time())
                    local num1 = math.random(2, 100)
                    local num2 = math.random(2, 100)
                    print(num1.." ^ "..num2.." = " )
                    local result = power(num1, num2)
                    local choice = io.read()
                    
                    if tonumber(choice) ==  result then
                        print("\nBravo!!")
                        score = score + 1
                        print("\nCorrect: "..score)
                        print("False:"..f_s)
                        print("Tries: "..tries().."/10\n")
                    elseif choice == 'E' then
                        print("--Your score-- \n")
                        print("Correct: "..score)
                        print("False:"..f_s)
                        print("Tries: "..tries().."/10\n")
                        print("Bye Bye")    
                        os.exit()    
                    else
                        f_s = f_s + 1
                        print("\nCorrect: "..score)
                        print("False: "..f_s)
                        print("Tries: "..tries().."/10\n")  
                         if f_s == 5 then
                            print("Game over..")
                            os.exit()
                         end                           
                     end  
                     if i == 10 then
                        if score >= 5 then
                            print("\nVery Good job..Level 2\n")
                            for i = 1, 10, 1 do
                                math.randomseed(os.time())
                                local num1 = math.random(101, 1000)
                                local num2 = math.random(101, 1000)
                                print(num1.." ^ "..num2.." = " )
                                local result = power(num1, num2)
                                local choice = io.read()
                                
                                if tonumber(choice) ==  result then
                                    print("\nBravo!!")
                                    score = score + 1
                                    print("\nCorrect: "..score)
                                    print("False:"..f_s)
                                    print("Tries: "..tries().."/20\n")
                                elseif choice == 'E' then
                                    print("--Your score-- \n")
                                    print("Correct: "..score)
                                    print("False:"..f_s)
                                    print("Tries: "..tries().."/10\n")
                                    print("Bye Bye")    
                                    os.exit()    
                                else
                                    f_s = f_s + 1
                                    print("\nCorrect: "..score)
                                    print("False: "..f_s)
                                    print("Tries: "..tries().."/20\n")  
                                    if f_s == 10 then
                                        print("Game over..")
                                        os.exit()
                                    end     
                                 end
                                 if i == 10 then
                                    if score >= 17 then
                                        print("Congratulations..You 're the best!!!\n")
                                    elseif score >= 11 and score < 17 then
                                        print("Very Good..Keep it up\n")
                                    else
                                        print("Good job..try again.\n")       
                                    end
                                end 
                            end   
                        else
                            print("Try again..")
                        end  
                    end  
                end
            elseif player == "5" then
                for i = 1, 10, 1 do
                    math.randomseed(os.time())
                    local num1 = math.random(2, 100)
                    local num2 = math.random(2, 100)
                    print(num1.." / "..num2.." = " )
                    local result = div(num1, num2)
                    local choice = io.read()
                   
                    if tonumber(choice) ==  result then
                        print("\nBravo!!")
                        score = score + 1
                        print("\nCorrect: "..score)
                        print("False:"..f_s)
                        print("Tries: "..tries().."/10\n")
                    elseif choice == 'E' then
                        print("--Your score-- \n")
                        print("Correct: "..score)
                        print("False:"..f_s)
                        print("Tries: "..tries().."/10\n")
                        print("Bye Bye")    
                        os.exit()    
                    else
                        f_s = f_s + 1
                        print("\nCorrect: "..score)
                        print("False: "..f_s)
                        print("Tries: "..tries().."/10\n")  
                         if f_s == 5 then
                            print("Game over..")
                            os.exit()
                         end                           
                     end  
                     if i == 10 then
                        if score >= 5 then
                            print("\nVery Good job..Level 2\n")
                            for i = 1, 10, 1 do
                                math.randomseed(os.time())
                                local num1 = math.random(101, 1000)
                                local num2 = math.random(101, 1000)
                                print(num1.." / "..num2.." = " )
                                local result = div(num1, num2)
                                local choice = io.read()
                                                                
                                if tonumber(choice) ==  result then
                                    print("\nBravo!!")
                                    score = score + 1
                                    print("\nCorrect: "..score)
                                    print("False:"..f_s)
                                    print("Tries: "..tries().."/20\n")
                                elseif choice == 'E' then
                                    print("--Your score-- \n")
                                    print("Correct: "..score)
                                    print("False:"..f_s)
                                    print("Tries: "..tries().."/10\n")
                                    print("Bye Bye")    
                                    os.exit()    
                                else
                                    f_s = f_s + 1
                                    print("\nCorrect: "..score)
                                    print("False: "..f_s)
                                    print("Tries: "..tries().."/20\n")  
                                    if f_s == 10 then
                                        print("Game over..")
                                        os.exit()
                                    end     
                                 end
                                 if i == 10 then
                                    if score >= 17 then
                                        print("Congratulations..You 're the best!!!\n")
                                    elseif score >= 11 and score < 17 then
                                        print("Very Good..Keep it up\n")
                                    else
                                        print("Good job..try again.\n")       
                                    end
                                end 
                            end   
                        else
                            print("Try again..")
                        end  
                    end  
                end 
            else if player == 'E' then
                os.exit()
            else
                print("\nChoice again..\n")              
            end
        
        end   
    else 
        print("Goodbye!")
        play = false
    end
end