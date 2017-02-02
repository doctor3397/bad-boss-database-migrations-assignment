#require_relative '20170202180428_add_quantity_to_parts'

class ChangeQuantityToParts < ActiveRecord::Migration[5.0]
  def change
    #revert AddQuantityToParts
    #change_column :parts, :quantity, :decimal

    reversible do |dir|
      dir.up do
        change_column :parts, :quantity, :decimal
      end

      dir.down do
        change_column :parts, :quantity, :integer
      end
    end

  end
end
