#module Shout
#  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end

#  def self.yelling_happily(words)
#    words + "!!!" + " :)"
#  end
#end

#p Shout.yell_angrily("I'm mad")
#p Shout.yelling_happily("I'm happy")

#------------------------------------------

module Shout
  def yelling_happily(words)
    words + "!!!" + " :)"
  end

  def yell_angrily(words)
    words + "!!!" + " :("
  end
end

class Coach
  include Shout
end

class Cheerleader
  include Shout
end

coach = Coach.new
p coach.yelling_happily("I'm happy")
p coach.yell_angrily("I'm angry")

cheerleader = Cheerleader.new
p cheerleader.yelling_happily("I'm happy")
p cheerleader.yell_angrily("I'm angry")