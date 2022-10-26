module Memorable
module  ClassMethods
 def reset_all
    self.all.clear       # clears all number of artists
  end

  def count
    self.all.count  # countes the number of artists 
  end
end
module InstanceMethods
def initialize
self.class.all << self
end
end

end