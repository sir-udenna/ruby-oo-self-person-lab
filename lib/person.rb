# your code goes her
require 'pry'
class Person
    def initialize(name)
        @name = name
        @balance = 25
        @happiness = 8
        @hygiene = 8
    end

    def name
        @name
    end

    def bank_account
        @balance
    end

    def bank_account=(balance)
        @balance = balance
    end

    def happiness
        @happiness.clamp(0,10)
    end

    def happiness=(happiness)
        @happiness = happiness
    end

    def hygiene
        @hygiene.clamp(0,10)
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
    end
end
