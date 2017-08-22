class EntitiesController < ApplicationController
  before_action :set_entity, except: [:index, :new, :create]

  def index
    @entities = Entity.all
  end

  def show
  end

  def new
    @entity = Entity.new
    @entity.build_property_list
  end

  def create
    @entity = Entity.new(entity_params)
    if @entity.valid?
      # @entity.save
      binding.pry
    else
      render :new
    end
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

  def entity_params
    params.require(:entity).permit(
      :name,
      property_list_attributes: [
        :organization,
        :metabolism,
        :homeostasis,
        :growth,
        :reproduction,
        :response,
        :evolution
      ]
    )
  end
end
