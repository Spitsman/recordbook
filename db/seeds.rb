# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin = User.create(first_name: "admin", last_name: "admin", role: "admin", email: "admin@mail.ru", password: 'qwerty')
grehan = User.create(first_name: "grehan", last_name: "solovey", role: "student", email: "grehan@mail.ru", password: 'qwerty')
sanya = User.create(first_name: "sanya", last_name: "spitsman", role: "student", email: "sanya@mail.ru", password: 'qwerty')
