class EntitiesController < ApplicationController
  before_action :set_entity, except: [:index, :new, :create]

  def index
    @entities = Entity.all
  end

  def show
  end

  def new
    @entity = Entity.new
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
