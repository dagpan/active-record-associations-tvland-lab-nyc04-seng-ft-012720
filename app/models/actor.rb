
class Actor < ActiveRecord::Base
   has_many :characters
   has_many :shows, through: :characters
   def full_name
       p "#{self.first_name} #{self.last_name}"
   end
   def list_roles
       result = []
       self.characters.each do |c|
         result << "#{c.name} - #{c.show.name}"
    
       end
       p result.uniq

   end
end

# - Associate the `Actor` model with the `Character` and `Show` model. An actor
#   should have many characters and many shows through characters.
# - Write a method in the `Actor` class, `#full_name`, that returns the first and
#   last name of an actor.
# - Write a method in the `Actor` class, `#list_roles`, that lists all of the
#   characters that actor has alongside the show that the character is in. So, for
#   instance, if we had an actor, Peter Dinklage, a character, Tyrion Lannister,
#   and a show, Game of Thrones, we with
# ```ruby
#     peter = Actor.new(:first_name => "Peter", :last_name => "Dinklage")
#     tyrion = Character.new(:name => "Tyrion Lannister")
#     tyrion.actor = peter
#     thrones = Show.new(:name => "Game of Thrones")
#     tyrion.show = thrones
#     tyrion.save
#     ```

#   And then, when we run `peter.list_roles`, we would get an Array containing a
#   string with both the character and the show:

#     ```ruby
#     ['Tyrion Lannister - Game of Thrones']
#     ```