class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :position,     null: false
      t.text   :description,  null: false
      t.string :employer,     null: false
      t.string :location,     null: false
      t.string :term,         null: false
      t.string :categories,   null: false

      t.timestamps
    end
  end
end
