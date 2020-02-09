
class CreateCharacters < ActiveRecord::Migration[5.1]
    def change
      create_table :characters do |c|
        #primary key of :id is created for us!
        c.string :name
        c.integer :actor_id
        c.integer :show_id
      end
    end
  end


# - Write a migration for the characters table. A character should have a `name`,
# `actor_id`, and a `show_id`––a character will belong to a show (the show
# migration is already provided) and an actor, and we'll keep track of this
# relationship with these database table columns.
