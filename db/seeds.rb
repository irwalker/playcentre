# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

members = Member.create([
 {
   family_id: 'HO101',
   attending_parent: 'Hodor',
   date_joined: Date.new(2021, 1, 1),
   comments: 'Hold the door!',
   parents: 'Mr. Hodor & Bran',
   parents_email: 'hodor@westeros.net',
   alternate_contact: '',
   mobile: '0271234567',
   address: 'Winterfell',
   first_aid_expiry: Date.new(2022, 1, 1),
   duty_day: 'Monday',
   staff: false,
   life_member: false
 },
 {
   family_id: 'JO102',
   attending_parent: 'Joe Bloggs',
   date_joined: Date.new(2021, 1, 1),
   parents: 'Joe & Sheila',
   parents_email: 'joe@gmail.com',
   mobile: '0271234567',
   address: 'Lower Hutt',
   duty_day: 'Tuesday',
   staff: true,
   life_member: false
 }
])
