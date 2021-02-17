GameStudio.destroy_all
Game.destroy_all
Review.destroy_all
User.destroy_all 

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'rubygems'
# require 'rest-client'
# require 'json'

game_studios = [
   {name: "Blizzard", location: "Blizzard Entertainment P.O. Box 18979 Irvine, CA 92623" },
   {name: "Square Enix", location: "SHINJUKU EASTSIDE SQUARE 6-27-30 Shinjuku, Shinjuku-ku, Tokyo 160-8430, Japan" },
   {name: "Bethesda Game Studio", location: "Bethesda Softworks LLC a ZeniMax Media company 1370 Piccard Drive, Suite 120 Rockville, MD 20850" },
   {name: "BioWare", location: "10423 101 St NW #1800, Edmonton, AB T5H 0E7, Canada" },
  ]

  game_studios.each {|game_studio| GameStudio.create(game_studio)}

  user = User.create! :username => 'Gabriel Castro', :email => 'gabriel.castro1028@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'

games = [  
  {name: "Warcraft III: Reforged", released: "2002-03-07", game_studio_id: 1, image: "/images/wc3.jpg" },
  {name: "Diablo", released: "1996-12-31" , game_studio_id: 1 },
  {name: "Diablo 2", released: "2000-06-29", game_studio_id: 1 },
  {name: "Diablo 3", released: "2012-05-01", game_studio_id: 1  },
  {name: "Starcraft", released: "1998-03-31", game_studio_id: 1 },
  {name: "Starcraft 2", released: "2010-07-27", game_studio_id: 1  },
  {name: "World Of Warcraft" , released: "2004-11-23", game_studio_id: 1},
  {name: "Finaly Fantasy 7", released: "1997-01-31", game_studio_id: 2},
  {name: "Finaly Fantasy 10", released: "2001-07-19", game_studio_id: 2},
  {name: "Star Wars: The Old Republic", released: "2011-12-20", game_studio_id: 4},
  {name: "Anthem", released: "2019-02-22", game_studio_id: 4},
  {name: "Mass Effect: Andromeda", released: "2017-03-21", game_studio_id: 4},
  {name: "Dragon Age: Inquistion", released: "2014-12-18", game_studio_id: 4}
]

games.each {|game| Game.create(game)}

reviews = [
{reviewed_game: "this game was a blast!!!", rating:"5", user_id: 1, game_id: 1}
]

reviews.each {|review| Review.create(review)}
  

puts "seeds working!!"