class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.references :author, null: false, foreign_key: true
      t.string :title
      t.string :genre
      t.string :publish_date

      t.timestamps
    end
  end
end
