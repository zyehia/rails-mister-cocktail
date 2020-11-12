class AddRatingDescriptionToCocktail < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :rating, :integer, default: 3
    add_column :cocktails, :description, :string
  end
end
