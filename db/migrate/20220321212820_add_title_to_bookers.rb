class AddTitleToBookers < ActiveRecord::Migration[6.1]
  def change
    add_column :bookers, :title, :string
  end
end
