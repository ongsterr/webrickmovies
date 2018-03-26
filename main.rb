require 'sequel'

DB = Sequel.connect('sqlite://movies') # Create a file called "movies"
movies_table = DB[:movies]

class Movie < Sequel::Model
    
end

movies = Movie.all

# movies.each do |x|
#     puts "#{x.title}: #{x.description}"
# end