module ApplicationHelper
  
  def contact_types_collection
    ContactType.all.collect {|c| [c.name, c.id]}
  end
  
  
end
