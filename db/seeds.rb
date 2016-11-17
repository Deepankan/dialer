# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



#----------------------------User Creation ----------------------------------

role1 = Role.create(name: ADMIN)
role2 = Role.create(name: DEALER)
role3 = Role.create(name: CUSTOMER)

user = User.create(email: "admin@dialer.com", password: "12345678", role_id: role1.id, user_name: ADMIN )

#--------------------------------------------------------------------------
