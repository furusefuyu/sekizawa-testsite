class AddToColumnsHomes < ActiveRecord::Migration[5.2]
  def change
    add_column :homes, :title, :string
    add_column :homes, :content, :text
    add_column :homes, :imgSrc, :text
    add_column :homes, :kind, :string
  end
end
