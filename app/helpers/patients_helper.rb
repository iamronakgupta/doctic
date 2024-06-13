module PatientsHelper
  def appointment(patient)
    "#{patient.appointment_date} at #{patient.appointment_time.strftime("%I:%M%p")
    }"
  end

  def active_or_inactive(patient)
    return "Active" if patient.appointment_active
    "Inactive"
  end
end
