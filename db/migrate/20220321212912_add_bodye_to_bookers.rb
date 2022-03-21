class AddBodyeToBookers < ActiveRecord::Migration[6.1]
  def change
    add_column :bookers, :body, :string
  end
end
