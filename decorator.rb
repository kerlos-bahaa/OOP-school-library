# Base Decorator class
require_relative 'person'

class Decorator < Nameable
    attr_accessor :nameable
  
    def initialize(nameable)
      @nameable = nameable
    end
  

    def correct_name
      @nameable.correct_name
    end
end

# CapitalizeDecorator class
class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

# TrimmerDecorator class
class TrimmerDecorator < Decorator
  def correct_name
    @nameable.correct_name[0..9]
  end
end
