# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Creating exercise groups"
exercise_groups = ["chest", "arms", "back", "core", "legs"]
exercise_groups.each do |group|
  exsist = ExerciseGroup.find_by_name(group)
  if !exsist
    new_group = ExerciseGroup.create(name: group)
    new_group.save!
  end
end

puts "Creating contact types"
contact_types = [{name: "client", description: "person who has purchased"}, {name: "prospect", description: "future client"}]
contact_types.each do |type|
  exsist = ContactType.find_by_name(type[:name])
  if !exsist
    new_type = ContactType.create(type)
    new_type.save!
  end
end

