class Reader

  attr_reader :name, :email, :street, :house

  def initialize(name, email, street, house)
    @name = name
    @email = email
    @street = street
    @house = house
  end
end