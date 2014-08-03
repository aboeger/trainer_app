class EventAppointmentsController < ApplicationController
  before_action :set_event_appointment, only: [:show, :edit, :update, :destroy]

  # GET /event_appointments
  # GET /event_appointments.json
  def index
    @event_appointments = EventAppointment.all
  end

  # GET /event_appointments/1
  # GET /event_appointments/1.json
  def show
  end

  # GET /event_appointments/new
  def new
    @event_appointment = EventAppointment.new
  end

  # GET /event_appointments/1/edit
  def edit
  end

  # POST /event_appointments
  # POST /event_appointments.json
  def create
    @event_appointment = EventAppointment.new(event_appointment_params)

    respond_to do |format|
      if @event_appointment.save
        format.html { redirect_to @event_appointment, notice: 'Event appointment was successfully created.' }
        format.json { render :show, status: :created, location: @event_appointment }
      else
        format.html { render :new }
        format.json { render json: @event_appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_appointments/1
  # PATCH/PUT /event_appointments/1.json
  def update
    respond_to do |format|
      if @event_appointment.update(event_appointment_params)
        format.html { redirect_to @event_appointment, notice: 'Event appointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_appointment }
      else
        format.html { render :edit }
        format.json { render json: @event_appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_appointments/1
  # DELETE /event_appointments/1.json
  def destroy
    @event_appointment.destroy
    respond_to do |format|
      format.html { redirect_to event_appointments_url, notice: 'Event appointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_appointment
      @event_appointment = EventAppointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_appointment_params
      params.require(:event_appointment).permit(:title, :start, :end, :notes)
    end
end
