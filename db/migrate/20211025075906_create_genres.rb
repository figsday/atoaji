class CreateGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :genres do |t|
      t.string :genre,    null: false
      t.references :post, null: false, foreign_key: true
      t.timestamps
    end
  end
end
