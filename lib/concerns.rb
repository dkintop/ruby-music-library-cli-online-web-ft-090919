module Concerns::Findable
  
 def find_by_name(name)
    all.find do |instance|
        instance.name == name
    end
  end
  
  def find_or_create_by_name(name)
    if !find_by_name
      self.create(name)
    else
    find_by_name(name)
    
  end 
  
end