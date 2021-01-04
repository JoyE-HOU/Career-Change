# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

des1 = Designer.create(name: "Joy", yrs_exp: 10, bio: "I love designing vast spaces.")
des2 = Designer.create(name: "Anzhela", yrs_exp: 10, bio: "I love designing vast spaces.")
des3 = Designer.create(name: "Lynda", yrs_exp: 15, bio: "I love designing vast spaces.")

client1 = Client.create(name: "Carol Green", location: "Sugar Land,TX", phone_number: "832-123-4567", email: "carolgreen@yahoo.com")
client2 = Client.create(name: "Brittany Brown", location: "Houston,TX", phone_number: "832-123-4568", email: "brittanybrown@yahoo.com")
client3 = Client.create(name: "Tommy Blue", location: "Missouri City,TX", phone_number: "832-123-4569", email: "tommyblue@yahoo.com")

# Appointment.create(client_id: client1, designer_id: des1, project_type: "Kitchen", location: "Houston,TX", timeline: "3 months", budget: 7000)
# Lines 17 is the other reason why when you run rails c the Appointment.all class doesn't show (missing .id after instance).
Appointment.create(client_id: client1.id, designer_id: des1.id, date: "12/25/20", time: "9am", project_type: "Kitchen", location: "Houston,TX", timeline: "3 months", budget: 7000)
