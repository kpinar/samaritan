# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Report.delete_all

Report.create! report_type: "Theft", description: "Ian stole my heart", address: "1600 Pennsylvania Avenue Northwest, Washington, DC 20500, United States", latitude: "38.8977", longitude: "77.0366"
Report.create! report_type: "Harassment", description: "Ian always asks if I need help", address: "1 World Trade Center, New York, NY 10007, United States", latitude: "40.7117", longitude: "74.0125"
Report.create! report_type: "Vandalism", description: "Ian broke my stand", address: "100 Washington Ave, St. Louis, MO 63102, United States", latitude: "38.6245", longitude: "90.1847"
Report.create! report_type: "Stalking", description: "Santa keeps following us to the bars", address: "73 Kloof St, Gardens, Cape Town, 8001, South Africa", latitude: "33.93035", longitude: "18.41077"