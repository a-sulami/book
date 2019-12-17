class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :bith_date
      t.string :country
      t.string :bith_place

      t.timestamps
    end
  end
end
