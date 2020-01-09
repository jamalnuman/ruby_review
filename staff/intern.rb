
require_relative "./employee.rb"
require_relative "./reportable.rb"

module Actualize
  class Intern
    include Reportable
  end
end


