# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user1 = User.create({ name: 'Ryan', email: 'ryan@ryan.com'})
user2 = User.create({ name: 'Shell',email: 'shell@shell.com'})
user3 = User.create({ name: 'Nels', email: 'nels@nels.com'})

# users=[user1,user2,user3]
user1.products.create(title: 'book', description: 'Yellow-book', deadline: Time.now)
user2.products.create(title: 'table', description: 'Yellow-table' ,deadline: Time.now)
user3.products.create(title: 'chair',  description: 'Yellow-chair', deadline: Time.now)