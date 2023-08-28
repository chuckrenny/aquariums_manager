class AquariumMaintenanceLogsController < ApplicationController
  def index
    @aquarium = Aquarium.find(params[:id])
    @maintenance_logs = @aquarium.maintenance_logs
  end
end