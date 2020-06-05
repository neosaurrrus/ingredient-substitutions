class SubstitutionsController < ApplicationController

  def index
    @last_5_substitutions = Substitution.last_5
  end
  def new
    require_logged_in
    @substitution = Substitution.new
  end

  def create
    require_logged_in
    original_id = params[:substitution][:original_id].present?
    sub_id = params[:substitution][:sub_id].present?
    substitution_params = params[:substitution]

    if !original_id # If there is a new original ingredient
      @new_original_ingredient = Ingredient.create(substitution_params.require(:ingredient_original).permit(:name, :description, :vegan, :vegetarian, :category_id, :user_id))
      params[:substitution][:original_id] = @new_original_ingredient.id
    end

    if !sub_id # if there is a new sub ingredient
      @new_sub_ingredient = Ingredient.create(substitution_params.require(:ingredient_sub).permit(:name, :description, :vegan, :vegetarian, :category_id, :user_id))
      params[:substitution][:sub_id] = @new_sub_ingredient.id
    end
    
    params[:substitution] = params[:substitution].except(:ingredient_original).except(:ingredient_sub)
    @substitution = current_user.substitutions.create(params.require(:substitution).permit(:same_quantity,:description, :issues, :original_id, :sub_id, :user_id))

    if @substitution.save 
      redirect_to @substitution
    else 
      render :new
    end

  end

  def edit
    require_logged_in
    @attraction = Substitution.find_by(id: params[:id])
  end

  def update
    @attraction = Substitution.find_by(id: params[:id])
    if @attraction.update(params.require(:substitution).permit(:same_quantity,:description, :issues, :original_id, :sub_id, :user_id)) 
      redirect_to @substitution
    else 
      render :new
    end

  end

  def show
    @substitution = Substitution.find_by(id:params[:id])
  end

  def destroy
    @substitution = Substitution.find_by(id:params[:id])
    @substitution.destroy
    redirect_to user_path(current_user)
  end



  private
    # def substitution_params
    #   params.require(:substitution).permit(:same_quantity,:description, :issues, :original_id, :sub_id, :user_id)
    # end
    # def ingredient_original_params
    #   substitution_params.require(:ingredient_original).permit(:name, :description, :vegan, :vegetarian, :category_id, :user_id)
    # end
    # def ingredient_sub_params
    #   substitution_params.require(:ingredient_sub).permit(:name, :description, :vegan, :vegetarian, :category_id, :user_id)
    # end

  
end
