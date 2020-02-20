class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :title
      t.string :description
      t.date :deadline
      t.string :status
      t.string :category
      t.string :attach_link
      t.belongs_to :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
