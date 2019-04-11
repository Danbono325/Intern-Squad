class CreateProjectSponsors < ActiveRecord::Migration[5.2]
  def change
    create_table :project_sponsors do |t|
      t.string :ProjectName
      t.string :ProjectDesc
      t.string :ProjectSponsorName
      t.string :ProjectSponsorLink

      t.timestamps
    end
  end
end
