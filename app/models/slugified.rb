module Slugified
  module Instance_methods
    
    def slug
    self.name.downcase.split.join("-")
    end
    
  end
end