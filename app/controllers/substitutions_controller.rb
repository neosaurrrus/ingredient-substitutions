class SubstitutionsController < ApplicationController

  def new
    require_logged_in
    @substitution = Substitution.new
  end

  def create
    binding.pry

    # Build Original Ingredient if no original_id, set @new_original_ingredient
    # Build subbed ingredient if no subbed_id, set @new_subbed_ingredient




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
      params.require(:substitution).permit(:same_quantity,:description, :issues,:original_id, :sub_id)
      params.require(:ingredient).permit(:name_original, :description_original, :vegan_original, :vegetarian_original, :name_subbed, :description_subbed, :vegan_subbed, :vegetarian_subbed, :category_id)
      
    end
end
