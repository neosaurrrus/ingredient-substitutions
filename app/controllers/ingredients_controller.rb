class IngredientsController < ApplicationController
  before_action :get_category, only: [:index, :new,:edit,:create,:update,:destroy]

  def index
  end

  def new
    @ingredient = Ingredient.new(category_id: @category.id)
  end

  def create
    @ingredient = @category.ingredients.create(ingredient_params)
    if @ingredient.save

      redirect_to category_ingredients_path
    else 
      render :new
    end
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end
    

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params)
    redirect_to @ingredient
  end




  def show
    @ingredient = Ingredient.find(params[:id])
  end



  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :description, :category_id, :vegan, :vegetarian, :user_id)
  end

  def get_category
    @category = Category.find_by(id: params[:category_id])
  end

end
