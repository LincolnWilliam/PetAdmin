module Admin
  class ScheduledsController < Fae::BaseController
    before_action :adjust_enum, only: [:create, :update]
 
    def adjust_enum
      params[:scheduled][:status] = params[:scheduled][:status].to_i
    end
  end
end
