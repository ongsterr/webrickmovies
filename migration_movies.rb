require 'sequel'
DB = Sequel.connect('sqlite://development')

# Create a database

DB.create_table :movies do
  primary_key :id
  String :title
  String :description
end

puts "Database table <movies> created"