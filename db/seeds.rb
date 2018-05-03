
users = User.create!([
          {username: "Freddy01", first_name: "Fred", last_name: "Flintstone", email: "fflintstone@rock.com", date_of_birth: Date.new(05-10-1975), password: "password"},
          {username: "Masteralice", first_name: "Alice", last_name: "Cooper", email: "alice@nightswithalicecooper.com", date_of_birth: Date.new(02-04-1948), password: "password1"},
          {username: "Princeofdarkness", first_name: "Ozzy", last_name: "Osbourne", email: "ozzy@blacksabbath.com", date_of_birth: Date.new(12-3-1948), password: "password2"},
          {username: "Iambobdole", first_name: "Bob", last_name: "Dole", email: "bobdole@bobdole.com", date_of_birth: Date.new(07-22-1923), password: "password3"},
          {username: "Kpilk", first_name: "Karl", last_name: "Pilkington", email: "karl.pilkington@xfm.co.uk", date_of_birth: Date.new(9-23-1972), password: "password4"}
         ])

parks = Park.create!([
            {name: "Magic Kingdom",address: "1180 Seven Seas Dr",city: "Lake Buena Vista",state: "FL",zip: 32830 ,description: "The park is represented by Cinderella Castle, inspired by the fairy tale castle seen in the 1950 film."},
            {name: "Epcot",address: "200 Epcot Center Dr",city: "Orlando",state: "FL",zip: 32821 ,description: "A mixture of rides and world fare."},
            {name: "Hollywood Studios",address: "351 S Studio Dr",city: "Orlando",state: "FL",zip: 32830 ,description: "Hollywood Studios initially opened as both a theme park and an operating production studio"},
            {name: "Animal Kingdom",address: "2901 Osceola Pkwy",city: "Orlando",state: "FL",zip: 32830 ,description: "Park is dedicated and themed entirely around the natural environment and animal conservation"}
          ])


rides = Ride.create!([
            {name: "Big thunder mountain",description: "a mine train roller coaster",park_id: 1},
            {name: "Space mountain",description: "one of walts magical tours",park_id: 1},
            {name: "Seven dwarfs mine train",description: "one of walts magical tours",park_id: 1},
            {name: "The barnstormer",description: "one of walts magical tours",park_id: 1},
            {name: "Tomorrowland people mover",description: "one of walts magical tours",park_id: 1},
            {name: "The magic carpets of Aladdin",description: "one of walts magical tours",park_id: 1},
            {name: "Walt Disneys carousel of progress",description: "one of walts magical tours",park_id: 1},
            {name: "Wild Disney world railroad",description: "one of walts magical tours",park_id: 1},
            {name: "Dumbo the flying elephant",description: "one of walts magical tours",park_id: 1},
            {name: "Its a small world ",description: "The greatest cruise to ever sail.",park_id: 1},
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

reviews = Review.create!([
            {title: "Greatest Ride Ever!", body: "This ride was good. You should go on it.", rating: 5, user_id: 1, ride_id: 1},
            {title: "I hate this ride!", body: "This ride sucks. Whoever made this deserves to be dragged out into the street and shot!", rating: 1, user_id: 4 , ride_id: 7},
            {title: "It was alright.", body: "This ride is alright and that. You know I did it once don't need to again but it was ok.", rating: 3, user_id: 5, ride_id: 5},
            {title: "It was good, not great.", body: "I went on the ride and enjoyed it at the time. However, I ended up vomiting on the person next to me and I don't think they liked that.", rating: 4, user_id: 2, ride_id: 3}
          ])
