class CreateSwords < ActiveRecord::Migration[6.0]
  def change
    create_table :swords do |t|
      t.string :name
      t.string :category
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
