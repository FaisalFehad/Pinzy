class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.text :description
      t.string :picture

      t.timestamps null: false
    end
  end
end
