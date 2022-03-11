# This migration comes from do_addon_connector (originally 1)
class CreateDoAddonConnectorCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :do_addon_connector_customers do |t|
      t.integer :owner_id
      t.string :owner_type
      t.string :key
      t.json :metadata
      t.string :plan
      t.string :email
      t.string :creator_uuid
      
      t.timestamps
    end
    add_index :do_addon_connector_customers, :key
  end
end
