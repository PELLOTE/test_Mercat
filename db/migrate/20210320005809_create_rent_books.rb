class CreateRentBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :rent_books do |t|
      t.integer :user_id
      t.integer :book_id
      t.datetime :rent_at
      t.datetime :must_return_at
      t.datetime :return_at

      t.timestamps
    end
  end
end
