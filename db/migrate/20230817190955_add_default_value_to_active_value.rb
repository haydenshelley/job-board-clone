class AddDefaultValueToActiveValue < ActiveRecord::Migration[7.0]
  def change
    change_column :jobs, :active, :boolean, default: true
  end
end
