# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

roles = Role.create([{ name: 'System Admin' }, { name: 'Conference Manager' }, { name: 'MUN Director' }])
users = User.create([{ email: 'teami3s.2012@gmail.com', password: '123456', password_confirmation: '123456', role_ids: roles[0]}])