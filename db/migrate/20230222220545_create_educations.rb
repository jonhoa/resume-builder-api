class CreateEducations < ActiveRecord::Migration[7.0]
  def change
    create_table :educations do |t|
      t.string :start
      t.string :end
      t.string :job
      t.string :company
      t.text :details

      t.timestamps
    end
  end
end
