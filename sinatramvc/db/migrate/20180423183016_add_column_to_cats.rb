class AddColumnToCats < ActiveRecord::Migration[5.2]
  def change
    add_column :cats, :owner_id, :integer
  end
end

#show this as example for adding cats owner id to a table for the FK/PK relatonsjip and what they keywords are