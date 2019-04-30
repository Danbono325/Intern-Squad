class Intern < ApplicationRecord
    validates :name, :email, :school, :education, :hours, presence: true
end
