class AddResumeToIntern < ActiveRecord::Migration[5.2]
  def change
    add_column :interns, :resume, :string
  end
end
