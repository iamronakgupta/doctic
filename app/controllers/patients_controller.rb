class PatientsController < ApplicationController

  def index
    @patients = current_user.patients
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    @patient.receptionist_type = "User"
    @patient.doctor_type = "User"
    @patient.receptionist = current_user if current_user.type = "Receptionist"
    @patient.appointment_active = true

    if @patient.save
      redirect_to patients_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def patient_params
      params.require(:patient).permit(:name, :phone, :disease, :doctor_id,
        :receptionist_id, :appointment_date, :appointment_time)
    end
end
