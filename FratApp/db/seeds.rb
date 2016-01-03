# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Brother.create(name: 'Jacob Walker Trueb', initials: 'JWT', pledge_class: 'Desertmen', major: 'Computer Science', grad_year: '2018', phone: '618-910-2186')
Brother.create(name: 'A B C', initials: 'ABC', pledge_class: 'Testmen', major: 'Btch Pls', grad_year: '2000', phone: '123-867-5309')
Chore.create(name: 'Kitchen', description: 'Clean everything in the kitchen.')
Chore.create(name: 'Basement', description: 'Take out the trash in the basement. Remove kitchen stuffs.')
Chore.create(name: 'Steam Cleaning', description: 'Use steam cleaner on all couches until super wet.')
ChoreAssignment.create(chore_id: 1, brother_id: 1, bro_assigned: 'JWT', bro_did: 'X')
ChoreAssignment.create(chore_id: 2, brother_id: 2, bro_assigned: 'ABC', bro_did: 'X')
ChoreAssignment.create(chore_id: 3, brother_id: 1, bro_assigned: 'ABC', bro_did: 'JWT')
