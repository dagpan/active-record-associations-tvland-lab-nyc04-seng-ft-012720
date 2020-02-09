

class AddColumnsToShows < ActiveRecord::Migration[5.1]
    #to make an additive change to a schema we create
    #a new migration, and then in the change method,
    #we make the change.
    def change
      add_column :shows, :day, :string
      add_column :shows, :genre, :string
      add_column :shows, :season, :string
    end
  end


#   For the last couple of tests, update the shows table with a new migration. This
#   migration should add a `day` column to indicate which day of the week the show
#   is on, a `genre` column for the show genre, and `season` to indicate which
#   season the show is currently on. All three should be strings.
  