class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :desription
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
