class Patient < ApplicationRecord

  #Validations
  validates :name, :phone, :disease :appointment_date, appointment_time, appointment_active, presence: true
end
