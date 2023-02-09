# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
bertha = User.create(
  name: 'Bertha',
  email: 'bertha@lewagon.com',
  password: 'berthatest',
  phone: 5_554_474_545,
  pay_rate: 50.00
)
member1 = Membership.new
bertha.membership = member1

member1.leader = true
frank = User.create(
  name: 'frank',
  email: 'frank@lewagon.com',
  password: 'franktest',
  phone: 5_554_474_546,
  pay_rate: 45.50
)
member2 = Membership.new
frank.membership = member2

aplha = Team.create(
  name: 'aplha',
  location: 'remote'
)

member1.team = aplha
member2.team = aplha

project = Project.create(
  title: 'work',
  due_date: Date.today + 10,
  description: 'work work',
  team_id: aplha.id
)
