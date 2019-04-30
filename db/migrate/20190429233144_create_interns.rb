class CreateInterns < ActiveRecord::Migration[5.2]
  def change
    create_table :interns do |t|
      t.string :name
      t.string :email
      t.string :school
      t.string :education
      t.string :html
      t.string :javascript
      t.string :java
      t.string :database
      t.string :ai
      t.integer :hours

      t.timestamps
    end
  end
end
