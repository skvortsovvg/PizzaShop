class OrdersTable < ActiveRecord::Migration
  def change
	create_table :orders do |t|
		t.text 	:content, :name, :phone, :adress
		t.timestamps		
	end
  end
end
