module Concerns::Findable
  
 def find_by_name(name)
    all.find do |instance|
        instance.name == name
    end
  end
  
  
  
end