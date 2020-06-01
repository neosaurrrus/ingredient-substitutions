class SubstitutionsController < ApplicationController

  def new
    require_logged_in
    @substitution = Substitution.new
  end

  def create
    
    original_id = params[:substitution][:original_id].present?
    sub_id = params[:substitution][:sub_id].present?

    if !original_id # If there is a new original ingredient
      new_original_ingredient = current_user.ingredients.create(ingredient_original_params)
      params[:substitution][:original_id] = new_original_ingredient.id
    end

    if !sub_id # if there is a new sub ingredient
      new_sub_ingredient = current_user.ingredients.create(ingredient_sub_params)
      params[:substitution][:sub_id] = new_sub_ingredient.id
    end
    
    
    @new_params = params
    @new_params = @new_params.except([:ingredient_original])
    @new_params = @new_params.except([:ingredient_sub])

    @substitution = current_user.substitutions.create(substitution_params)

    if @substitution.save 
      redirect_to @substitution
    else 
      redirect_to(controller: 'substitutions', action: 'new')
    end
  end





  def edit
  end

  def show
    @substitution = Substitution.find_by(id:params[:id])
   
  end

  private
    def substitution_params
      @new_params.require(:substitution).permit(:same_quantity,:description, :issues, :original_id, :sub_id, ingredient_sub: [:name, :description, :vegan, :vegetarian, :category_id],ingredient_original: [:name, :description, :vegan, :vegetarian, :category_id])
    end
    def ingredient_original_params
      params.require(:ingredient_original).permit(:name, :description, :vegan, :vegetarian)
    end
    def ingredient_sub_params
      params.require(:ingredient_sub).permit(:name, :description, :vegan, :vegetarian)
    end
end
