class EntitiesController < ApplicationController
  before_action :set_entity, except: [:index, :new, :create]

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_entity
    @entity = Entity.find(params[:id])
  end
end
