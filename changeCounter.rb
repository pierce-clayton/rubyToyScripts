#!/usr/bin/ruby
# returns a string of all the denominations included for that much change. 
# entered number must be whole number, dollars * 100
def changeCounter(change)
    till = [10000,5000,2000,1000,500,100,25,10,5,1]
    toReturn = []
    till.each_with_index do |denom, index|
        toReturn[index] = change / denom
        change = change - toReturn[index] * denom
    end
    retStr = "The change is"
    toReturn.each_with_index do |denom, index|
        denom > 0 ? (retStr << ", #{denom} x $#{till[index] * 0.01}") :
        nil        
    end
    puts retStr
end

changeCounter(ARGV[0].to_i)