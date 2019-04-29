class CreateInterns < ActiveRecord::Migration[5.2]
  def change
    create_table :interns do |t|
      t.string :name
      t.string :email
      t.string :school
      t.string :education
      t.binary :html
      t.binary :javascript
      t.binary :java
      t.binary :database
      t.binary :ai
      t.integer :hours

      t.timestamps
    end
  end
end
