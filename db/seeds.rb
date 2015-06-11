# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

test = Report.create([title: 'crime', time:"2015-06-11 08:30:45", 
	description: "armed robbery", latitude: '40.0397', longitude: '-76.30144'])

