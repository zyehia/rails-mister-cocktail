class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
    @blank_cocktail = Cocktail.new
  end

  def show 
    @cocktail = Cocktail.find(params[:id])
    @doses = Dose.where(cocktail_id: @cocktail.id)
  end

  def new 
    @cocktail = Cocktail.new
  end

  def create 
    @cocktail = Cocktail.new(strong_params)
    if @cocktail.valid?
      ingredients = [ params[:ingredient1], params[:ingredient2], params[:ingredient3] ]
      amounts = [ params[:ingredient1_amount], params[:ingredient2_amount], params[:ingredient3_amount] ]
      pairings = ingredients.zip(amounts)

      doses = []

      pairings.each do |ingredient_name, amount|
        doses << Dose.new(ingredient: Ingredient.where(name:ingredient_name).first, cocktail: @cocktail, description: amount)
      end

      if doses.all? { |dose| dose.valid? }
        doses.each { |dose| dose.save }
        redirect_to cocktails_path
      else
        render :new
      end
    else
      render :new
    end
  end

  def strong_params
    params.require(:cocktail).permit(:name, :description, :photo)
  end

end
