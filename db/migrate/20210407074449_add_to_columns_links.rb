class AddToColumnsLinks < ActiveRecord::Migration[5.2]
  def change
    add_column :links, :className, :string
    add_column :links, :title, :string
    add_column :links, :contents, :text
  end
end
