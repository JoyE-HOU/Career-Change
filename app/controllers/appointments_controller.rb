class AppointmentsController < ApplicationController

    def new
        @appointment = Appointment.new
    end

    def create
        @appointment = Appointment.create(appointment_params)

        redirect_to client_path(@appointment.client)
    end

    def edit
        @appointment = Appointment.find(params[:id]) 
    end

    def update
        @appointment = Appointment.find_by(id: params[:id])
        @appointment.update(appointment_params)

        redirect_to @appointment.client
    end

    def destroy
        @appointment = Appointment.find_by(id: params[:id])
        @appointment.destroy

        redirect_to clients_path
    end

    private
    def appointment_params
        params.require(:appointment).permit(:client_id, :date, :time, :project_type, :location, :timeline, :budget, :designer_id)
    end

end
