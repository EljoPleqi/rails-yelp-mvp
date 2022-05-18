class RenameCatergoryColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :restaurants, :catergory, :category
  end
end
