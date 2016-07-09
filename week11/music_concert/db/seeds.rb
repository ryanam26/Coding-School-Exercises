# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


 concert = Concert.create([{artist: 'Shakira',venue:"American Arena",city:"Miami",date: Time.now,description:"Hello hello",price:150.00 },
 							{artist: 'Jay Z',venue:"Boston Arena",city:"Boston",date: Time.now,description:"Yo YO",price:160.00},
 							{artist: 'P Diddy',venue:"New York Arena",city:"New York",date: Time.now,description:"Im in New Your",price:100.00}])
 					  