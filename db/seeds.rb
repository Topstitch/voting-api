# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Candidate.create(name:'Sally Smartypants', party:'Goat')
Candidate.create(name:'Olivia Openminded', party:'Goat')
Candidate.create(name:'Johnny Justice', party:'Sheep')
Candidate.create(name:'Colleen Caring', party:'Sheep')

Voter.create(name:'Alice', party:'Goat')
Voter.create(name:'Brian', party:'Goat')
Voter.create(name:'Caroline', party:'Goat')
Voter.create(name:'Donald', party:'Sheep')
Voter.create(name:'Elizabeth', party:'Sheep')
Voter.create(name:'Frank', party:'Sheep')

Vote.create(voter_id: 1, candidate_id: 1)
Vote.create(voter_id: 2, candidate_id: 1)
Vote.create(voter_id: 3, candidate_id: 1)
Vote.create(voter_id: 4, candidate_id: 2)
Vote.create(voter_id: 5, candidate_id: 3)
Vote.create(voter_id: 6, candidate_id: 4)
