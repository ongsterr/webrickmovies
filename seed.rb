# Seeding = populating our database with data

require 'sequel'
DB = Sequel.connect('sqlite://development')
movies_table = DB[:movies] # The data you insert must have the structure you set up in the migration file incl. the name of the columns

movies = [
    {
        title: 'Spider-man',
        description: 'A movie about a super human with spider-like abilities',
    },
    {
        title: 'Batman',
        description: 'A movie about a super human with bat-like abilities',
    },
    {
        title: 'Antman',
        description: 'A movie about a super human with ant-like abilities',
    },
    {
        title: 'Superman',
        description: 'A movie about a super human from some planet',
    }
]

# movies_table.multi_insert(movies)

actors_table = DB[:actors]

actors = [
    {
        fname: 'James',
        lname: 'Bond',
        age: 34,
    },
    {
        fname: 'Jeniffer',
        lname: 'Lawrence',
        age: 30,
    },
]

actors_table.multi_insert(actors)