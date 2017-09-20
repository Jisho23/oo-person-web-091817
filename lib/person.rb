# your code goes here


class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8

  end

  def happiness=(value)
    if value > 10
      @happiness = 10
    elsif value < 0
      @happiness = 0
    else
      @happiness = value
    end
  end

  def hygiene=(value)

    if value > 10
      @hygiene = 10
    elsif value < 0
      @hygiene = 0
    else
      @hygiene = value
    end

  end

  def clean?
    if hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    if self.happiness > 7
      true
    else
      false
    end
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def get_paid(sum)
    @bank_account += sum.to_i
    return "all about the benjamins"
  end

  def take_bath
     self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def call_friend(friend)
    if friend.is_a? Person
      self.happiness += 3

      friend.happiness += 3
     return "Hi #{friend.name}! It's #{name}. How are you?"
    end
  end

  def start_conversation(friend, topic)
    if friend.is_a? Person
      if topic.downcase == "politics"
        self.happiness -= 2
        friend.happiness -= 2
        return "blah blah partisan blah lobbyist"

      elsif topic.downcase == "weather"
        self.happiness += 1
        friend.happiness += 1
        return "blah blah sun blah rain"

      else
        return "blah blah blah blah blah"
      end
    else
      return "That's not a person!"
    end
  end

end
