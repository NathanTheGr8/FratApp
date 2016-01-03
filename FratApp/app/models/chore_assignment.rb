class ChoreAssignment < ActiveRecord::Base
    belongs_to :brother
    belongs_to :chore
end
