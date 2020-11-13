class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
    @blank_cocktail = Cocktail.new
  end

  def show 
    @cocktail = Cocktail.find(params[:id])
    @doses = Dose.where(cocktail_id: @cocktail.id)
  end

  def create 
    p strong_params
    cocktail = Cocktail.new(strong_params)
    cocktail.image="knowledge.jpg"
    cocktail.save
    ingredient_ids = params[:cocktail][:ingredients].reject {|i| i.empty?}
    ingredient_ids.each do |ingredient|
      Dose.create(ingredient_id: ingredient.to_i, cocktail_id: cocktail.id, description: "You still need to fill out the unit")
    end

    redirect_to cocktails_path
  end

  def strong_params
    params.require(:cocktail).permit(:name, :description, :photo)
  end

end
