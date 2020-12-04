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

games = [  
  {name: "Warcraft 3", released: "2002-03-07", game_studio_id: 1 },
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

users = [
    {username: "David@gmail.com", password: "12356" },
    {username: "Daniel@aol.com", password: "3456"} ,
    {username: "April@yahoo.com", password: "4567"},
    {username: "Alice@msn.com", password: "9899"},
    {username: "Jason@cox.net", password: "12356" },
    {username: "Alvin@apple.com", password: "3456"} ,
    {username: "Erin@ymail.com", password: "4567"},
    {username: "Jackson@gmail.com", password: "9899"}
  ]
  
  users.each {|user| User.create(user)}

  reviews = [
  
  {reviewed_game: "******* One of the best games on PS4 hands down.
    I have played Diablo since the first one on PC and even though nothing can beat 2 in my opinion this is close.
    The vanilla version is nothing compared to Reaper of Souls, it added a whole new game to Diablo, with rifts and greater rifts and the new chapter V and also adventure mode where its endless and you can farm high end gear. Blizzard are still releasing patches adding new seasons and content so you get ALOT of gameplay and content for the price.
    Its so good I have got platinum on 3 different versions and still go back to it every now and again.
    It also has multiplayer of up to 4 players which is also fun, challenging and more rewarding.
    I bought this for my son for Christmas so we can play multiplayer even though I have full level 70 characters *****", rating: 5},
  {reviewed_game: "******Ignore the negative reviews, all the dlc downloads automatically so who cares if it’s on the disc or not. Played the original version on PS3 which was good but this PS4 version is 100 times better! If you love character building RPGs like Baldur’s Gate and Champions of Norrath get this now*****"},
  {reviewed_game: "******The base game is good i had it on previous console generation. But the expansions really make the game re-playable. Just a disappointing price for a very old game. they do bring out new seasons and some content tweaks, so it does keep the game fresh. worth a play.******", rating: 5},
  {reviewed_game: "*****This Game was ok, I have def played better ones! ******", rating: 3},
  {reviewed_game: "******* One of the best games on PS4 hands down.
    I have played Diablo since the first one on PC and even though nothing can beat 2 in my opinion this is close.
    The vanilla version is nothing compared to Reaper of Souls, it added a whole new game to Diablo, with rifts and greater rifts and the new chapter V and also adventure mode where its endless and you can farm high end gear. Blizzard are still releasing patches adding new seasons and content so you get ALOT of gameplay and content for the price.
    Its so good I have got platinum on 3 different versions and still go back to it every now and again.
    It also has multiplayer of up to 4 players which is also fun, challenging and more rewarding.
    I bought this for my son for Christmas so we can play multiplayer even though I have full level 70 characters *****", rating: 5},
  {reviewed_game: "******Ignore the negative reviews, all the dlc downloads automatically so who cares if it’s on the disc or not. Played the original version on PS3 which was good but this PS4 version is 100 times better! If you love character building RPGs like Baldur’s Gate and Champions of Norrath get this now*****", rating: 5},
  {reviewed_game: "******The base game is good i had it on previous console generation. But the expansions really make the game re-playable. Just a disappointing price for a very old game. they do bring out new seasons and some content tweaks, so it does keep the game fresh. worth a play.******", rating: 5},
  {reviewed_game: "*****This Game was ok, I have def played better ones! ******", rating: 3},
  {reviewed_game: "******* One of the best games on PS4 hands down.
    I have played Diablo since the first one on PC and even though nothing can beat 2 in my opinion this is close.
    The vanilla version is nothing compared to Reaper of Souls, it added a whole new game to Diablo, with rifts and greater rifts and the new chapter V and also adventure mode where its endless and you can farm high end gear. Blizzard are still releasing patches adding new seasons and content so you get ALOT of gameplay and content for the price.
    Its so good I have got platinum on 3 different versions and still go back to it every now and again.
    It also has multiplayer of up to 4 players which is also fun, challenging and more rewarding.
    I bought this for my son for Christmas so we can play multiplayer even though I have full level 70 characters *****", rating: 5},
  {reviewed_game: "******Ignore the negative reviews, all the dlc downloads automatically so who cares if it’s on the disc or not. Played the original version on PS3 which was good but this PS4 version is 100 times better! If you love character building RPGs like Baldur’s Gate and Champions of Norrath get this now*****", rating: 5},
  {reviewed_game: "******The base game is good i had it on previous console generation. But the expansions really make the game re-playable. Just a disappointing price for a very old game. they do bring out new seasons and some content tweaks, so it does keep the game fresh. worth a play.******", rating: 5},
  {reviewed_game: "*****This Game was ok, I have def played better ones! ******", rating: 3},
  ]
  reviews.each {|review| Review.create(review)}

  puts "seeds working!!"