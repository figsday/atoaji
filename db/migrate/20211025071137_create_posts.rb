class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title,          null: false
      t.integer :aftertaste_id, null: false
      t.text :impression,       null: false
      t.references :user,       null: false, foreign_key: true
      t.timestamps
    end
  end
end
