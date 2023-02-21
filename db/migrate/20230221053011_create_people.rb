class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.string :title
      t.string :github
      t.string :linkedin
      t.string :location

      t.timestamps
    end
  end
end
