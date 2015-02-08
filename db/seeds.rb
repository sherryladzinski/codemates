# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
locations = Location.create([{location: 'Atlanta', picture: 'http://www.doityourselftermitecontrol.com/images/Atlanta.jpg'}, 
	{location: 'Austin', picture: ''}, 
	{location: 'Boston', picture: ''}, 
	{location: 'Chicago', picture: ''}, 
	{location: 'Los Angeles', picture: ''}, 
	{location: 'New York', picture: ''}, 
	{location: 'San Francisco', picture: ''}, 
	{location: 'Seattle', picture: ''}, 
	{location: 'Washington DC', picture: ''}])

posts = Post.create(name: 'Bob', contact: 'email', about_me: 'fun', location_id: 1, user_id: 1)