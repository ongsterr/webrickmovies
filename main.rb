require 'sequel'

DB = Sequel.connect('sqlite://development') # Create a database file called "development"
movies_table = DB[:movies]
actors_table = DB[:actors]

class Movie < Sequel::Model # The name of the model does matter! Sequel is smarter than I thought.
    
end

class Actor < Sequel::Model

end

# puts Movie.table_name
# puts Actor.table_name