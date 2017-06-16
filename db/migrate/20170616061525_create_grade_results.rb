class CreateGradeResults < ActiveRecord::Migration[5.1]
  def change
    create_table :grade_results do |t|
      t.string :name
      t.integer :stundent_id
      t.integer :score

      t.timestamps
    end
  end
end
