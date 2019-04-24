class AddUserIdTolibraries < ActiveRecord::Migration[5.0]
  def change
      add_column :libraries, :book_id, :integer
      add_column :libraries, :user_id, :integer
  end
end
