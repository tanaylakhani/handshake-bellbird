class AlarmsController < ApplicationController
  before_action :set_alarm, only: [:show, :edit, :update, :destroy]

  # GET /alarms
  # GET /alarms.json
  def index
    @alarms = Alarm.all.order(created_at: :desc)
  end

  # GET /alarms/1
  # GET /alarms/1.json
  def show
  end

  # GET /alarms/new
  def new
    @alarm = Alarm.new
  end

  # GET /alarms/1/edit
  def edit
  end

  # POST /alarms
  # POST /alarms.json
  def create
    alarm_params[:message].upcase!
    @alarm = Alarm.new(alarm_params)
    if @alarm.save
      redirect_to @alarm, notice: 'Alarm was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /alarms/1
  # PATCH/PUT /alarms/1.json
  def update
    alarm_params[:message].upcase!
    if @alarm.update(alarm_params)
      redirect_to @alarm, notice: 'Alarm was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /alarms/1
  # DELETE /alarms/1.json
  def destroy
    if @alarm.destroy
      redirect_to alarms_url, notice: 'Alarm was successfully destroyed.'
    else
      render :edit
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alarm
      @alarm = Alarm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alarm_params
      params.require(:alarm).permit(:message)
    end
end
