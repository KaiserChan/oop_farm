class Field

  def initialize(field_type, hectares)
    @field_type = field_type
    @hectares = hectares
  end

  def field_type
    @field_type
  end

  def field_size
    @hectares
  end

end
