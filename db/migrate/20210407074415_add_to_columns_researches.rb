class AddToColumnsResearches < ActiveRecord::Migration[5.2]
  def change
    add_column :researches, :title, :string
    add_column :researches, :imgSrc, :text
    add_column :researches, :content, :text    
  end
end
