class AddUserIdToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :user_id, :integer
  end
end

# I like that you added additional columns using additional migrations instead of editing existing ones.
