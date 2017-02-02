class RenamePartyguestsTable < ActiveRecord::Migration[5.0]
  def change
    rename_table :partyguests, :widgets
  end
end
