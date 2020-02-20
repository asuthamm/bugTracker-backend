# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


alex = User.create(username: 'suthamm', password: 'a', name: 'Alex Suthammanont', role: 'Admin', email: 'asuthamm@gmail.com', img_url: 'https://ca.slack-edge.com/T02MD9XTF-UQLTN7R37-dcc5ff846fc6-48')

proj1 = Project.create(name: 'bugTracker', desription: 'A simple bug tracking app that helps you manage bugs easily', user: alex)

tix1 = Ticket.create(title: 'Bug-1', description: 'This is my first bug.', deadline: "2020/10/20", status: 'New', category: 'Bug', attach_link: 'https://ca.slack-edge.com/T02MD9XTF-UQLTN7R37-dcc5ff846fc6-48', project: proj1)


tix2 = Ticket.create(title: 'Bug-2', description: 'front-end broken', deadline: "2020/10/20", status: 'New', category: 'Frontend', attach_link: 'https://ca.slack-edge.com/T02MD9XTF-UQLTN7R37-dcc5ff846fc6-48', project: proj1)