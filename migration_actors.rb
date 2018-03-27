require 'sequel'
DB = Sequel.connect('sqlite://development')

# Create a database

DB.create_table :actors do
  primary_key :id
  String :fname
  String :lname
  Integer :age
end

puts "Database table <actors> created"