module ApplicationHelper
  
  def contact_types_collection
    ContactType.all.collect {|c| [c.name, c.id]}
  end
  
  def exercise_groups_collection
    ExerciseGroup.all.collect {|g| [g.name, g.id]}
  end
  
  
end
