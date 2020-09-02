#!/usr/bin/ruby

# takes input in cents and counts change back by denomination
class ChangeManager
    def initialize
        @till = [10000,5000,2000,1000,500,100,25,10,5,1] # USD * 100
        @change = ARGV[0].to_i
        @countOut = []
        counter # run the counter to fill the countOut array
    end
    def counter
        @till.each_with_index do |denom, index|
            @countOut[index] = @change / denom
            @change = @change - @countOut[index] * denom
        end
    end
    def machine
        delivery = "The change is"
        @countOut.each_with_index do |denom, index|
            denom > 0 ? (delivery << ", #{denom} x $#{'%.2f' % (@till[index] * 0.01)}") : nil
        end
        puts delivery
    end
end


transactionBlah = ChangeManager.new
transactionBlah.machine
