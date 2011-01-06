module Swiz
  class ContextGenerator < FlashSDK::ClassGenerator
    include SwizHelper
    
    def manifest
      if(!input.match(/Test$/))
        directory context_directory do
          template "#{class_name}.as", 'SwizContext.as'
        end
      end

      if test_class
        generator :test_class, :input => "#{fully_qualified_class_name}Test"
      end
    end
    
    def context_directory
      src_array = [] << src
      src_array += package_directory
    end
    
    def package_name
      default_package_name.dup
    end
    
  end
end
