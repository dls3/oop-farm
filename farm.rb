# You are a farmer that wishes to keep track of the fields on your farm. You want to be able to add fields of various types
# - for example, corn and wheat - and to keep track of the harvest. You will be keeping track of the total amount of
# food your farm has ever produced.
#
# Each field type produces a different amount of food per hectare:
#
# corn: 20
# wheat: 30
# You can add fields of choice to your farm by specifying their type (eg. "corn") and their total area in hectares (eg. 100).
#
# When you harvest, you must collect food from every one of your fields and record how much total food you have collected.
# It should display all of this information.
#
# Sometimes a farmer wants to relax. In doing so, you will get a chance to enjoy the beauty of each one of your fields
# (without harvesting them).
#
# You can also check the status of each field, which is a more direct way of observing the status of your fields
# (their size and type). It should also tell you how much total food you have produced up until this point.
#
# The program should provide a list of input options whenever it asks you to enter one.

class Farm

  @@fields = []

  attr_reader :fields

  def add(new_field)
    @@fields << new_field
  end

  def total_food
    food_tot = 0

    @@fields.each do |field|
      food_tot += field.food
    end
    food_tot
  end

end


end



class Field

  def initialize(type, area, food)
    @type = type
    @area = area
    @food = food
  end

end


class Corn < Field

  def initialize(type, area, food)
    @food_per_corn = 20
    super(type, area)
  end

end


class Wheat < Field

  def initialize(type, area, food)
    @food_per_wheat = 30
    super(type, area)
  end



end
