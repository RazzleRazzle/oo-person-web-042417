require 'pry'

class Person

  attr_reader :name
  attr_accessor :bank_account


  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness) #writer
    if happiness > 10
      @happiness = 10
    elsif happiness < 0
      @happiness = 0
    else
      @happiness = happiness
    end
  end

  def happiness     #reader
    @happiness
  end

  def hygiene=(hygiene) #writer
    if hygiene > 10
      @hygiene = 10
    elsif hygiene < 0
      @hygiene = 0
    else
      @hygiene = hygiene
    end
  end

  def hygiene     #reader
    @hygiene
  end

  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end

  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    return 'all about the benjamins'
  end

  def take_bath
    @hygiene += 4
    self.hygiene=(hygiene)
    #binding.pry
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene -= 3
    @happiness += 2
    self.hygiene=(hygiene)
    self.happiness=(happiness)
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    @happiness += 3
    friend.happiness += 3
    self.happiness=(happiness)
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      @happiness -= 2
      friend.happiness -= 2
      self.happiness=(happiness)
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      @happiness += 1
      friend.happiness += 1
      self.happiness=(happiness)
      return 'blah blah sun blah rain'
    else
      return 'blah blah blah blah blah'
    end
  end

end
