class Patient < ApplicationRecord

  #Validations
  validates :name, :phone, :disease, :appointment_date, :appointment_time, presence: true

  #association
  belongs_to :receptionist, polymorphic: true
  belongs_to :doctor, polymorphic: true
end
