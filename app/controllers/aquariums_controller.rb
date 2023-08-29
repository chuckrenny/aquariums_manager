class AquariumsController < ApplicationController
  def index
    @aquariums = Aquarium.order(created_at: :desc)
  end

  # def new
  # end

  # def create
  #   # require 'pry';binding.pry
  #   aquarium = Aquarium.new({
  #     name: params[:name],
  #     water_type: params[:water_type],
  #     dirty: params[:dirty],
  #     gal_size: params[:gal_size].to_i
  #   })
  #   aquarium.save
  #   redirect_to '/aquariums'
  # end

  def show
    @aquarium = Aquarium.find(params[:id])
    @number_of_maintenance_logs = @aquarium.maintenance_logs.count
  end

  # def edit
  #   @aquarium = Aquarium.find(params[:id])
  # end

  # def update
  #   aquarium = Aquarium.find(params[:id])
  #   aquarium.update({
  #     name: params[:name],
  #     water_type: params[:water_type],
  #     dirty: params[:dirty],
  #     gal_size: params[:gal_size].to_i
  #     })
  #   aquarium.save
  #   redirect_to "/aquariums/#{aquarium.id}"
  # end

  # def destroy
  #   Aquarium.destroy(params[:id])
  #   redirect_to '/aquariums'
  # end
end