class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :product_line
      t.integer :program_id
      t.string :project_priority
      t.string :project_phase
      t.string :sponsor
      t.integer :person_id
      t.string :proj_status
      t.string :proj_status_prev
      t.text :proj_notes

      t.timestamps null: false
    end
  end
end
