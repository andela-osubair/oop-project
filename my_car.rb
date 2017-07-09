module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :model, :year
  @@number_of_vehicles = 0

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles"
  end

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def accelerate(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number}mph"
  end

  def current_speed
    puts "You are now going #{@current_speed}mph"
  end

  def brake(number)
    @current_speed =+ number
    puts "You push the brake and decelerate #{number}mph."
  end

  def park_car
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  def spray_paint(color)
    self.color = color
    puts "You changed the color of your #{@model} to #{self.color} and it looks great!!!"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def age
    "Your #{self.model} is #{years_old} years old."
  end

  private

  def years_old
    Time.now.year - self.year
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "My car is a #{color}, #{year}, #{@model}!"
  end
end

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2
end

my_car = MyCar.new('2017', 'Red', 'Ford')
my_car.current_speed
my_car.accelerate(30)
my_car.current_speed
my_car.brake(10)
my_car.current_speed
my_car.park_car
my_car.current_speed
my_car.spray_paint("Blue")
my_car.color = "Yellow"
puts my_car.color
puts my_car.year
MyCar.gas_mileage(13, 351)
my_car = MyCar.new("2010", "silver", "Ford Focus")
puts my_car
puts "---method lookup---"
puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors
