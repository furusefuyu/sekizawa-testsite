class AddToColumnsMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :classification, :string
    add_column :members, :status, :string
    add_column :members, :name_jp, :string
    add_column :members, :name_en, :string
    add_column :members, :graduateYear, :string
  end
end
