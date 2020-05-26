class SubstitutionsController < ApplicationController

  def new
    require_logged_in
    @substitution = Substitution.new
  end

  def edit
  end

  def show
  end
end
