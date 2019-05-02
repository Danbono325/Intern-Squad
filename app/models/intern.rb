class Intern < ApplicationRecord
    mount_uploader :resume, ResumeUploader 
    validates :name, :email, :school, :education, :hours, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
