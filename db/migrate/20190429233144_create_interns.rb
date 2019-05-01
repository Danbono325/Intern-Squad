class CreateInterns < ActiveRecord::Migration[5.2]
  def change
    create_table :interns do |t|
      t.string :name
      t.string :email
      t.string :school
      t.string :education
      t.boolean :html
      t.boolean :javascript
      t.boolean :java
      t.boolean :database
      t.boolean :ai
      t.integer :hours
     

      t.timestamps
    end
  end
end
