require_relative 'field'

class Corn < Field

  def initialize(field_type, hectares)
    super(field_type, hectares)
    @food_per_hectare = 20
    @total_corn
  end

  def field_type
    super
  end

  def field_size
    super
  end

  def food_per_hectare
    @food_per_hectare
  end

  def get_total_corn
    @total_corn = field_size * food_per_hectare
  end

  def total_corn
    @total_corn
  end

end
