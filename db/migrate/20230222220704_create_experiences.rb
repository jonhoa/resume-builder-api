class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.string :start
      t.string :end
      t.string :job
      t.string :company
      t.text :details

      t.timestamps
    end
  end
end
