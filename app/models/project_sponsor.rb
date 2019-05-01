class ProjectSponsor < ApplicationRecord
     validates :ProjectSponsorName, :ProjectName, :ProjectDesc, :ProjectScope, presence: true
end
