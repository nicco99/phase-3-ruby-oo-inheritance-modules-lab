module Findable
    def find_by_name(name)
        all.detect{|a| a.name == name}   #filtering the artist by name to call this we do class nama i find by name and pass in a name 
      end
    
end