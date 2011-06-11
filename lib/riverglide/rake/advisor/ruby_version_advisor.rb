module RiverGlide
  module Rake
    module Advisor
      class RubyVersionExpert
        #TODO: Consider making this a 'version' object that is comparable
        def self.are_we_using? desired_ruby_version, compared=:exactly
          return RUBY_VERSION == desired_ruby_version if compared == :exactly
          if compared == :or_higher
            desired_version = desired_ruby_version.split('.').collect { |n| n.to_i }
            current_version = RUBY_VERSION.split('.').collect { |n| n.to_i }
            same_or_higher = []
            (0..2).each do |i|
              same_or_higher[i] = current_version[i] >= desired_version[i]
            end
            same_or_higher.all?
          end
        end
      end
    end
  end
end