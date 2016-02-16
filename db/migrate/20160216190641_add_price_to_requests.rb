class AddPriceToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :price, :decimal
  end
end
