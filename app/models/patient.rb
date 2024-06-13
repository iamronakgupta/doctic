class Patient < ApplicationRecord

  #Validations
  validates :name, :phone, :disease :appointment_date, appointment_time, appointment_active, presence: true

  #association
  belongs_to :receptionist
  belongs_to :doctor
end
