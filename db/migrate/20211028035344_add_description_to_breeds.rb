class AddDescriptionToBreeds < ActiveRecord::Migration[5.2]
  def change
    add_column :breeds, :description, :text
  end
end
