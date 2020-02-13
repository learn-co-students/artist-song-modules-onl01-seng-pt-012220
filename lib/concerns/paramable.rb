module Paramable
  module InstanceMethods
    #def initialize
    #  self.all << self
    #end
    def to_param
      self.name.downcase.gsub(' ', '-')
    end
  end
end
