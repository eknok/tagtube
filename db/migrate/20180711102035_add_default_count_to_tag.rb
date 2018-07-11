class AddDefaultCountToTag < ActiveRecord::Migration[5.1]
  def change
    change_column :tags, :count, :integer, default: 0
  end
end
