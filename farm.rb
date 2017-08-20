require_relative 'field'
require_relative 'corn'
require_relative 'wheat'

class Farm

  def initialize(name)
    puts "OK! Here we are at #{name}'s farm."
    @total_food = total_corn + total_wheat
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
    field_size = gets.chomp.to_i

    puts "OK! You added a #{field_type} field of #{field_size} hectares!"
  end

  def harvest_field

  end

  def status_of_field

    puts "The farm has #{@total_food} food so far."
  end

  def take_break

  end

end


farm = Farm.new("Kaiser")

farm.options
