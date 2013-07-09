require "peelr/version"
module Kernel
  def peelr!      
    caller_method, caller_parent = if Kernel.respond_to?(:caller_locations)
       [caller_locations(1,1)[0], caller_locations(2,1)[0]]
    else
       [caller[0], caller[1]]
    end
    
    catch(:no_parent) do
      throw(:no_parent) unless caller_parent
      
      if Kernel.respond_to?(:caller_locations)
        puts "### '#{caller_method.label}' called inside '#{caller_parent.label}' (#{caller_parent.path}:#{caller_parent.lineno})"
      else
        caller_method_parts = caller_method.split(":")
        caller_method_name = caller_method_parts[2].scan(/\w+/).last

        caller_parent_parts = caller_parent.split(":")
        caller_parent_file = caller_parent_parts[0]
        caller_parent_line = caller_parent_parts[1]
        caller_parent_name = (label=caller_parent_parts[2]) ? label.scan(/\w+/).last : "<main>"

        puts "### '#{caller_method_name}' called inside '#{caller_parent_name}' (#{caller_parent_file}:#{caller_parent_line})"
      end    
    end      
  end
end