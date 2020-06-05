class IngredientsController < ApplicationController


  def new
    @ingredient = Ingredient.new(category_id: params[:category_id])
  end

  def create
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  private

  def post_params
    params.require(:ingredient).permit(:name, :description, :category_id, :vegan, :vegetarian)
  end

end
