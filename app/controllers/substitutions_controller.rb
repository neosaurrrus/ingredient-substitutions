class SubstitutionsController < ApplicationController

  def new
    require_logged_in
    @substitution = Substitution.new
  end

  def create
    @new_ingredients = params[:substitution][:ingredient]
    original_id = params[:substitution][:original_id].present?
    sub_id = params[:substitution][:sub_id].present?




    # New original AND Sub Ingredient
    if !original_id && !sub_id
      @original_ingredient = Ingredient.new(name: @new_ingredients[:name_original], description: @new_ingredients[:description_original], vegan: @new_ingredients[:vegan_original], vegetarian: @new_ingredients[:vegetarian_original], category_id: params[:substitutons[:category_id_original]], user_id: current_user.id)
      @sub_ingredient = Ingredient.new(name: @new_ingredients[:name_sub], description: @new_ingredients[:description_sub], vegan: @new_ingredients[:vegan_sub], vegetarian: @new_ingredients[:vegetarian_sub], category_id: params[:substitutons][:category_id_sub], user_id: current_user.id)
    
      @original_ingredient = current_user.ingredients.create(ingredient_original_params)
      @sub_ingredient = current_user.ingredients.create(ingredient_sub_params)

      params[:substitution][:original_id] = @original_ingredient.id
      params[:substitution][:sub_id] = @sub_ingredient.id


    
    # New original and EXISTING sub ingredient  
    elsif !original_id && sub_id

      @original_ingredient = Ingredient.new(name: @new_ingredients[:name_original], description: @new_ingredients[:description_original], vegan: @new_ingredients[:vegan_original], vegetarian: @new_ingredients[:vegetarian_original], category_id: params[:substitutons][:category_id_original], user_id: current_user.id)
      @original_ingredient = current_user.ingredients.create(@original_ingredient)
      params[:substitution][:original_id] = @original_ingredient.id
     
 


    # Existing Original and New Sub
    elsif original_id && !sub_id

     @sub_ingredient = Ingredient.new(name: @new_ingredients[:name_sub], description: @new_ingredients[:description_sub], vegan: @new_ingredients[:vegan_sub], vegetarian: @new_ingredients[:vegetarian_sub], category_id: params[:substitutons][:category_id_sub], user_id: current_user.id)
     @sub_ingredient = current_user.ingredients.create(ingredient_sub_params)
     params[:substitution][:sub_id] = @sub_ingredient.id


    end
    binding.pry
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
      params.require(:substitution).permit(:same_quantity,:description, :issues, :original_id, :sub_id, :category_id_original, :category_id_sub)
      

    end
    def ingredient_original_params
      params.require(:ingredients).permit(:name_original, :description_original, :vegan_original, :vegetarian_original, :name_sub, :description_sub, :vegan_sub, :vegetarian_sub )
      params.require(:substitution).permit(:category_id_original)
    end
    def ingredient_sub_params
      params.require(:ingredients).permit(:name_sub, :description_sub, :vegan_sub, :vegetarian_sub)
      params.require(:substitution).permit(:category_id_sub)
    end
end
