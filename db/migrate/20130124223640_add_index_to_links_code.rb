class AddIndexToLinksCode < ActiveRecord::Migration
  def change

  	add_index :links, :code, unique: true
  	change_column :links, :url, :text
  end
end
