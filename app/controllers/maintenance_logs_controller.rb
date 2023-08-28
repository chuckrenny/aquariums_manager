class MaintenanceLogsController < ApplicationController
  def index
    @maintenance_logs = MaintenanceLog.all
  end
  
  def show
    @maintenance_log = MaintenanceLog.find(params[:id])
  end
end