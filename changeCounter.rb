#!/usr/bin/ruby
# global var for the till in use. could be any set of denominations
$till = [10000,5000,2000,1000,500,100,25,10,5,1]
# returns a string of all the denominations included for that much change. 
# entered number must be whole number, dollars * 100
def changeCounter(change)    
    toReturn = []
    $till.each_with_index do |denom, index|
        toReturn[index] = change / denom
        change = change - toReturn[index] * denom
    end   
    return toReturn
end

# puts a string of what the change consists of per denomination, like a change dispenser.
def changeMachine(changeTill)
    retStr = "The change is"
    changeTill.each_with_index do |denom, index|
        denom > 0 ? (retStr << ", #{denom} x $#{$till[index] * 0.01}") :
        nil
    end
    puts retStr
end

changeMachine(changeCounter(ARGV[0].to_i))