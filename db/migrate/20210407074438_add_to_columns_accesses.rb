class AddToColumnsAccesses < ActiveRecord::Migration[5.2]
  def change
    add_column :accesses, :className, :string
    add_column :accesses, :title, :string
    add_column :accesses, :address, :text
  end
end
