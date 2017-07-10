module Smart
  def method_name

  end
end
class Mobile
  attr_accessor :model, :cost
  attr_reader :manufactural, :operating_system
  @@number_of_mobile = 0

  def initialize(manufactural, operating_system, model, cost)
    @manufactural = manufactural
    @operating_system = operating_system
    @model = model
    @cost = cost
    @@number_of_mobile += 1
  end

  def get_model
    puts "The model of your phone is #{self.model}"
  end

  def get_cost
    puts "The cost of your phone is #{self.cost}"
  end
end

class Andriod < Mobile
  include Smart
  def get_model
    puts "This is an Andriod mobile #{model}"
  end
end

class Blackberry < Mobile
  def get_model
    puts "This is an Andriod mobile #{model}"
  end
end

mobile = Mobile.new("Nokia", "Win8", "Lumia",10000)
puts mobile.get_model
andriod = Andriod.new("Samsung", "Android", "Grand",30000)
puts andriod.get_model
blackberry = Blackberry.new("BlackB", "RIM", "Curve",20000)
puts blackberry.get_model
puts blackberry.get_cost

puts Andriod.ancestors
