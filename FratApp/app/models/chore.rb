class Chore < ActiveRecord::Base
    has_many :chore_assignments
    has_many :brothers, through: :chore_assignments
end
