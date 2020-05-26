class SubstitutionsController < ApplicationController

  def new
    require_logged_in
    @substitution = Substitution.new
  end

  def create


    @substitution = current_user.substitutions.create(substitution_params)
   binding.pry
    if @substitution.save 
      redirect_to @substitution
    else 
      redirect_to(controller: 'substitutions', action: 'new')
    end
  end

  def edit
  end

  def show
  end

  private
    def substitution_params
      params.require(:substitution).permit(:same_quantity,:description, :issues,:original_id, :sub_id)
    end
end
