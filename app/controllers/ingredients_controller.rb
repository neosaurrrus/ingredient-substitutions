class IngredientsController < ApplicationController
  before_action :get_category, only: [:index, :new,:edit,:create,:update,:destroy]
  before_action :get_ingredient, only: [:show,:edit,:update,:destroy]

  def index
  end

  def show
    binding.pry
  end


  def new
    @ingredient = Ingredient.new(category_id: @category.id)
  end

  def create
    @ingredient = @category.ingredients.create(ingredient_params)
    if @ingredient.save
      redirect_to category_ingredients_path, notice: "Ingredient successfully added"
    else 
      render :new
    end
  end

  def edit
  end
    

  def update
    @ingredient.update(ingredient_params)
    redirect_to category_ingredients_path, notice: "Ingredient successfully edited"
  end


  def destroy
    @ingredient.destroy
    redirect_to category_ingredients_path, notice: "Ingredient successfully deleted"
  end


  


  private
  def ingredient_params
    params.require(:ingredient).permit(:name, :description, :category_id, :vegan, :vegetarian, :user_id)
  end

  def get_category
    @category = Category.find_by(id: params[:category_id])
  end
  def get_ingredient
    @ingredient = Ingredient.find_by(id: params[:id])
  end

end
