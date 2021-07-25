# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Gym.create(name: "L.A.Fitness", address:'Suite 981 1795 Leida Fords, Nataliemouth, TN 14377-4979')
Gym.create(name: "Planet Firness", address:'7768 David Avenue, Greenside, PA 67475-3655')

Client.create(name: "Casie Effertz", age:18)
Client.create(name: "Dorris Bogan", age:52)
Client.create(name: "Bernie Schiller", age:44)
Client.create(name: "Manie Dare", age:29)

Membership.create(gym_id:1 , client_id:1, charge:15 )

Membership.create(gym_id:2 , client_id:1, charge:15 )

Membership.create(gym_id:2 , client_id:2, charge:15 )
Membership.create(gym_id:1 , client_id:3, charge:15 )
Membership.create(gym_id:1 , client_id:4, charge:15 )
Membership.create(gym_id:2 , client_id:4, charge:15 )