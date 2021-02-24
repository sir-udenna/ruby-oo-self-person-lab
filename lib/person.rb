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

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @balance += salary
        "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        self.hygiene = @hygiene
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @hygiene -= 3
        self.hygiene = @hygiene
        @happiness += 2
        self.happiness = @happiness
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend) #friend = the person who is being called.
        @happiness += 3
        self.happiness = @happiness #self = current person who is making the call. (stella. call_friend (felix))
        friend.happiness += 3
        "Hi #{self.name}! It's #{friend.name}. How are you?"
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            @happiness -= 2
            self.happiness = @happiness
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        end

        if topic == "weather"
            @happiness += 1
            self.happiness = @happiness
            friend.happiness += 1
            return "blah blah sun blah rain"
        end
        
        if topic != "weather" and topic != "politics"
            return "blah blah blah blah blah"
        end
    end
end
