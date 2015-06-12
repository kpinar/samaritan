# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Report.delete_all

Report.create! report_type: "Theft", description: "Ian stole my heart", address: "1600 Pennsylvania Avenue Northwest, Washington, DC 20500, United States", latitude: "38.8977", longitude: "77.0366"
Report.create! report_type: "Harassment", description: "Erica won't stop asking if I need help", address: "1 World Trade Center, New York, NY 10007, United States", latitude: "40.7117", longitude: "74.0125"
Report.create! report_type: "Vandalism", description: "Ian broke my stand", address: "100 Washington Ave, St. Louis, MO 63102, United States", latitude: "38.6245", longitude: "90.1847"
Report.create! report_type: "Stalking", description: "Santa keeps following us places", address: "73 Kloof St, Gardens, Cape Town, 8001, South Africa", latitude: "33.93035", longitude: "18.41077"
Report.create! report_type: "Assault", description: "Kate pushed Pavi down the stairs for taking her headphones", address: "19 Park Road, Gardens, Cape Town, 8001, South Africa", latitude: "33.92863", longitude: "18.41033"
Report.create! report_type: "Sexual Assault", description: "Mariella tickled Ian's elbow lovingly without permission", address: "51 Kloof Street, Gardens, Cape Town, 8001, South Africa", latitude: "33.9291", longitude: "18.41176"
Report.create! report_type: "Disorderly Conduct", description: "Seth had a temper tantrum when Mrs. Fuchs made him come home before his 9PM curfew", address: "34 Kloof St, Cape Town, 8001, South Africa", latitude: "33.928767", longitude: "18.411678"
Report.create! report_type: "Drug", description: "SMJ sighting", address: "60 Kloof St, Cape Town, 8001, South Africa", latitude: "33.93076", longitude: "18.40948"
Report.create! report_type: "Shooting", description: "Gun show at RBSI gym", address: "183 Bree St, Cape Town, 8001, South Africa", latitude: "33.92443", longitude: "18.41482"
Report.create! report_type: "Hate Crime", description: "Aaron said Session 1 is bad at coding", address: "8 Kloof St, Cape Town, 8001, South Africa", latitude: "33.92743", longitude: "18.413035"
Report.create! report_type: "Vandalism", description: "Seth broke Bailey's door and won't admit it", address: "77 Kloof St, Cape Town, 8001, South Africa", latitude: "33.93041", longitude: "18.41066"
Report.create! report_type: "Homicide", description: "Long st at night ahhhhhhhhhhh help", address: "228 Long St, Cape Town City Centre, Cape Town, 8000, South Africa
Latitude: -33.92552 | Longitude: 18.415815", latitude: "33.92552", longitude: "18.415815"
Report.create! report_type: "Theft", description: "Ben got mugged!!", address: "992 Kloof St, Gardens, Cape Town, 8001, South Africa
", latitude: "33.93344", longitude: "18.4077"
