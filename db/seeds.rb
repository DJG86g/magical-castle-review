# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  parks = Park.create([
            {name: "Magic Kingdom",address: "1180 Seven Seas Dr",city: "Lake Buena Vista",state: "FL",zip: 32830 ,description: "The park is represented by Cinderella Castle, inspired by the fairy tale castle seen in the 1950 film."},
            {name: "Epcot",address: "200 Epcot Center Dr",city: "Orlando",state: "FL",zip: 32821 ,description: "A mixture of rides and world fare."},
            {name: "Hollywood Studios",address: "351 S Studio Dr",city: "Orlando",state: "FL",zip: 32830 ,description: "Hollywood Studios initially opened as both a theme park and an operating production studio"},
            {name: "Animal Kingdom",address: "2901 Osceola Pkwy",city: "Orlando",state: "FL",zip: 32830 ,description: "Park is dedicated and themed entirely around the natural environment and animal conservation"}
          ])


          
