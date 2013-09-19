class InstitutionController < ApplicationController
  def new
  end

  def create
  end

  def show
    @institution = Institution.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
    @institutions = Institution.all 
  end
end
