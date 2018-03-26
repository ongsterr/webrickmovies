require 'sequel'
DB = Sequel.connect('sqlite://movies')

DB.drop_table(:movies)