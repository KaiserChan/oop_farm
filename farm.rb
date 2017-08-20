require_relative 'field'
require_relative 'corn'
require_relative 'wheat'

class Farm

  def initialize(name)
    puts "OK! Here we are at #{name}'s farm."
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


      # while user_input > 7 || user_input < 1
      #   puts "Invalid option. Please select from the main menu options and enter option number."
      #   user_input = gets.chomp.to_i
      # end
      # call_option(user_input)
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

  end

  def harvest_field

  end

  def status_of_field

  end

  def take_break

  end

end


farm = Farm.new("Kaiser")

farm.options
