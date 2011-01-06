module Swiz
  
  module SwizHelper
    
    def fully_qualified_class_name
      package_name.dup << "." << class_name
    end
    
  end
  
end
