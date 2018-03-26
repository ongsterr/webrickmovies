require 'sequel'

DB = Sequel.connect('sqlite://development') # Create a file called "movies"
movies_table = DB[:movies]

class Movie < Sequel::Model
    
end