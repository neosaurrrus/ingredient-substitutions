class SubstitutionsController < ApplicationController
  before_action :get_substitution, only: [:show,:edit,:update,:destroy]
  before_action :ownership_check, only: [:edit,:update,:destroy]

  def index
  end

  def last_5
    @last_5_substitutions = Substitution.last_5
  end

  def show
  end

  
  def new
    require_logged_in
    @substitution = Substitution.new
  end

  def create
    require_logged_in
    prep_params # Sub-optimal solution!
    @substitution = current_user.substitutions.create(substitution_params)
    if @substitution.save 
      redirect_to @substitution, notice: "Substitution created"
    else 
      render :new, alert: "Substitution could not be saved"
    end

  end

  def edit
  end

  def update
    prep_params #Sub-optimal solution!
    if @substitution.update(substitution_params) 
      redirect_to @substitution, notice: "Substitution edited"
    else 
      render :edit
    end
  end

  def destroy
    @substitution.destroy
    redirect_to user_path(current_user), notice: "Substitution deleted"
  end

  private
    def substitution_params
      params.require(:substitution).permit(:same_quantity,:description, :issues, :original_id, :sub_id, :user_id)
    end
    def ingredient_original_params
      params[:substitution].require(:ingredient_original).permit(:name, :description, :vegan, :vegetarian, :category_id, :user_id)
    end
    
    def ingredient_sub_params
      params[:substitution].require(:ingredient_sub).permit(:name, :description, :vegan, :vegetarian, :category_id, :user_id)
    end

    def get_substitution
      @substitution = Substitution.find_by(id: params[:id])
    end

    def ownership_check
      check_if_belongs_to_user(@substitution)
    end

    def prep_params
      new_original_name = params[:substitution][:ingredient_original][:name].present?
      new_sub_name = params[:substitution][:ingredient_sub][:name].present?
      create_and_set_new_original_ingredient if new_original_name  # If there is a new original ingredient
      create_and_set_new_sub_ingredient if new_sub_name # if there is a new sub ingredient
      params[:substitution] = params[:substitution].except(:ingredient_original).except(:ingredient_sub)
    end
    def create_and_set_new_original_ingredient
      @new_original_ingredient = Ingredient.create(ingredient_original_params)
      params[:substitution][:original_id] = @new_original_ingredient.id
    end
    def create_and_set_new_sub_ingredient
      @new_sub_ingredient = Ingredient.create(ingredient_sub_params)
      params[:substitution][:sub_id] = @new_sub_ingredient.id
    end

end
