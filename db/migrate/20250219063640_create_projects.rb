class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.references :user, null: false
      t.string :name, null: false
      t.string :slug, null: false
      t.string :description
      t.integer :status, null: false, default: 0

      t.timestamps
    end
    add_index :projects, :slug, unique: true
  end
end
