class Brother < ActiveRecord::Base
    has_many :chore_assignments
    has_many :chores, through: :chore_assignments
end
