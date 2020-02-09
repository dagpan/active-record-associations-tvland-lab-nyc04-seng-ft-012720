
class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  def say_that_thing_you_say
      p "#{self.name} always says: #{self.catchphrase}"
  end
end

# Define a method in the `Character` class, `#say_that_thing_you_say`, using a
#   given character's catchphrase. Using Tyrion as an example again, the returned
#   string should look like the following:

#     ```ruby
#     tyrion.catchphrase = 'A Lannister always pays his debts'
#     tyrion.say_that_thing_you_say
#     #=> 'Tyrion Lannister always says: A Lannister always pays his debts'