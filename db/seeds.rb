# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  parks = Park.create!([
            {name: "Magic Kingdom",address: "1180 Seven Seas Dr",city: "Lake Buena Vista",state: "FL",zip: 32830 ,description: "The park is represented by Cinderella Castle, inspired by the fairy tale castle seen in the 1950 film."},
            {name: "Epcot",address: "200 Epcot Center Dr",city: "Orlando",state: "FL",zip: 32821 ,description: "A mixture of rides and world fare."},
            {name: "Hollywood Studios",address: "351 S Studio Dr",city: "Orlando",state: "FL",zip: 32830 ,description: "Hollywood Studios initially opened as both a theme park and an operating production studio"},
            {name: "Animal Kingdom",address: "2901 Osceola Pkwy",city: "Orlando",state: "FL",zip: 32830 ,description: "Park is dedicated and themed entirely around the natural environment and animal conservation"}
          ])


  rides = Ride.create!([
            {name: "Big thunder mountain",description: "one of walts magical tours",park_id: 1},
            {name: "Space mountain",description: "one of walts magical tours",park_id: 1},
            {name: "Seven dwarfs mine train",description: "one of walts magical tours",park_id: 1},
            {name: "The barnstormer",description: "one of walts magical tours",park_id: 1},
            {name: "Tomorrowland people mover",description: "one of walts magical tours",park_id: 1},
            {name: "The magic carpets of Aladdin",description: "one of walts magical tours",park_id: 1},
            {name: "Walt Disneys carousel of progress",description: "one of walts magical tours",park_id: 1},
            {name: "Wild Disney world railroad",description: "one of walts magical tours",park_id: 1},
            {name: "Dumbo the flying elephant",description: "one of walts magical tours",park_id: 1},
            {name: "Its a small world ",description: "one of walts magical tours",park_id: 1},
            {name: "Western river expedition",description: "one of walts magical tours",park_id: 1},
            {name: "Under the sea: journey of the little mermaid",description: "one of walts magical tours",park_id: 1},
            {name: "Buzz lightyears space ranger spin",description: "one of walts magical tours",park_id: 1},
            {name: "Pirates of the Caribbean",description: "one of walts magical tours",park_id: 1},
            {name: "Haunted mansion",description: "one of walts magical tours",park_id: 1},
            {name: "Mickeys toon town fair",description: "one of walts magical tours",park_id: 1},
            {name: "Splash mountain",description: "one of walts magical tours",park_id: 1},
            {name: "Spaceship earth",description: "one of walts magical tours",park_id: 2},
            {name: "Journey into imagination with figment",description: "one of walts magical tours",park_id: 2},
            {name: "Frozen ever after",description: "one of walts magical tours",park_id: 2},
            {name: "living with the land",description: "one of walts magical tours",park_id: 2},
            {name: "Gran fiesta tour starring the three caballeros",description: "one of walts magical tours",park_id: 2},
            {name: "Soarin",description: "one of walts magical tours",park_id: 2},
            {name: "The twilight zone tower of terror",description: "one of walts magical tours",park_id: 3},
            {name: "Rock n roller coaster",description: "one of walts magical tours",park_id: 3},
            {name: "Startours",description: "one of walts magical tours",park_id: 3},
            {name: "Toy story midway mania",description: "one of walts magical tours",park_id: 3},
            {name: "Slinky dog dash",description: "one of walts magical tours",park_id: 3},
            {name: "Expedition Everest",description: "one of walts magical tours",park_id: 4},
            {name: "Kali river rapids",description: "one of walts magical tours",park_id: 4},
            {name: "Kilimanjaro safaris",description: "one of walts magical tours",park_id: 4},
            {name: "Dinosaur",description: "one of walts magical tours",park_id: 4},
            {name: "Primeval",description: "one of walts magical tours",park_id: 4},
            {name: "Navi river journey",description: "one of walts magical tours",park_id: 4},
            {name: "Triceratop spin",description: "one of walts magical tours",park_id: 4}
          ])
