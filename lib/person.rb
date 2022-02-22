# your code goes here
class Person
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    attr_reader :name, :bank_account, :happiness, :hygiene
    attr_writer :bank_account
    def happiness=(change)
        @happiness = change
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end
    def hygiene=(change)
        @hygiene = change
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end
    def happy?
        if @happiness > 7 then true else false end
    end
    def clean?
        if @hygiene > 7 then true else false end
    end
    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end
    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene-=3
        self.happiness+=2
        return "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness+=3
        friend.happiness+=3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(person, topic)
        if topic == "politics" then
            self.happiness-=2
            person.happiness-=2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather" then
            self.happiness+=1
            person.happiness+=1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end


end