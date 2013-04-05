class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :project_id
      t.string :title
      t.text :description
      t.integer :completed

      t.timestamps
    end
  end
end
