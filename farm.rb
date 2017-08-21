require_relative 'field'
require_relative 'corn'
require_relative 'wheat'

class Farm

  def initialize(name)
    puts "OK! Here we are at #{name}'s farm."
    @corn_field = []
    @total_corn = []
    @wheat_field = []
    @total_wheat = []
  end

  def options
    while true
      options_display
      user_input = gets.chomp

      if user_input == "field"
        add_new_field

      elsif user_input == "harvest"
        harvest_field

      elsif user_input == "status"
        status_of_field

      elsif user_input == "relax"
        take_break

      elsif user_input == "exit"
        abort("Thank you for your effort. You ended your day of hard work.")

      else
        puts "Invalid option. Please select from the main menu options above."
        user_input = gets.chomp.to_i
      end
    end
  end


  def options_display
    puts "What are we doing today? Please choose from the following optoins:"
    puts "field -> Adds a new field"
    puts "harvest -> harvests crops and adds to total harvested"
    puts "status -> displays some information about the farm"
    puts "relax -> provides lovely descriptions of your fields"
    puts "exit -> exits the program"
    puts "Please enter your selection here: "
  end

  def add_new_field
    puts "What kind of field is it? corn or wheat?"
    field_type = gets.chomp

    until field_type == "corn" || field_type == "wheat"
      puts "Sorry but your farm is only capable to produce either corn or wheat ..."
      puts "What kind of field is it? Choose either corn or wheat."
      field_type = gets.chomp
    end

    puts "OK, so how large is the field in hectares?"
    hectares = gets.chomp.to_i

    puts "OK! You added a #{field_type} field of #{hectares} hectares!"

    if field_type == "corn"
      corn_field = Corn.new(field_type, hectares)
      @corn_field << corn_field
      return @corn_field
    elsif field_type == "wheat"
      wheat_field = Wheat.new(field_type, hectares)
      @wheat_field << wheat_field
      return @wheat_field
    end

  end

  def harvest_field
    puts "OK its time to harvest everything."
    puts "The farm has a total food production of #{total_food} food ..."
    puts "... and you just harvested all #{total_food} food!"
    puts "Now all your fields are empty. You need to create new fields if you want to grow more food."
    corn_field.clear
    wheat_field.clear
  end

  def status_of_field
    @corn_field.each do |check|
      puts "#{check.field_type} field is #{check.field_size} hectares big."
      puts "This field produces #{check.get_total_corn} food."
      @total_corn << check.get_total_corn
    end

    @wheat_field.each do |check|
      puts "#{check.field_type} field is #{check.field_size} hectares big."
      puts "This field produces #{check.get_total_wheat} food."
      @total_wheat << check.get_total_wheat
    end

    puts "The farm has 0 food harvested so far."
  end

  def take_break
    puts "Whatever field you are staring at, you are not really staring at it ..."
    puts "Cus you are too tired and dozed off ...zzz..z...zz..."
  end

  def corn_field
    @corn_field
  end

  def wheat_field
    @wheat_field
  end

  def total_corn
    @total_corn
  end

  def total_wheat
    @total_wheat
  end

  def total_food
      total_corn.sum + total_wheat.sum
  end

end


farm = Farm.new("Old McDonald")

farm.options
