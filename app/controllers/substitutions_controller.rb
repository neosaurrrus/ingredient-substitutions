class SubstitutionsController < ApplicationController

  def new
    require_logged_in
    @substitution = Substitution.new
  end

  def create
    binding.pry
  end

  def edit
  end

  def show
  end

  private
    def substitution_params
      params.require(:substitution).permit(:same_quantity,:description, :issues,:ingredient_attributes => [:original_id, :sub_id])
    end
end
