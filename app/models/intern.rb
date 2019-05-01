class Intern < ApplicationRecord
    validates :name, :email, :school, :education, :hours, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
