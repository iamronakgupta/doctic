# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
## db/seeds.rb

# Destroy existing data to avoid duplicates during reseeding
User.destroy_all
Patient.destroy_all

# Create users
doctor1 = User.create!(
  name: "Dr. John Doe",
  phone: "1234567890",
  type: "Doctor",
  email: "john.doe@example.com",
  password: "password",
  password_confirmation: "password",
  confirmed_at: Time.now
)

doctor2 = User.create!(
  name: "Dr. Jane Smith",
  phone: "0987654321",
  type: "Doctor",
  email: "jane.smith@example.com",
  password: "password",
  password_confirmation: "password",
  confirmed_at: Time.now
)

receptionist1 = User.create!(
  name: "Alice Johnson",
  phone: "1122334455",
  type: "Receptionist",
  email: "alice.johnson@example.com",
  password: "password",
  password_confirmation: "password",
  confirmed_at: Time.now
)

receptionist2 = User.create!(
  name: "Bob Brown",
  phone: "5566778899",
  type: "Receptionist",
  email: "bob.brown@example.com",
  password: "password",
  password_confirmation: "password",
  confirmed_at: Time.now
)

# Create patients
Patient.create!(
  name: "Patient One",
  phone: "1010101010",
  email: "patient.one@example.com",
  disease: "Flu",
  appointment_active: true,
  appointment_date: Date.today,
  appointment_time: Time.now,
  receptionist_type: "User",
  receptionist_id: receptionist1.id,
  doctor_type: "User",
  doctor_id: doctor1.id
)

Patient.create!(
  name: "Patient Two",
  phone: "2020202020",
  email: "patient.two@example.com",
  disease: "Cold",
  appointment_active: false,
  appointment_date: Date.today + 1,
  appointment_time: Time.now + 1.hour,
  receptionist_type: "User",
  receptionist_id: receptionist2.id,
  doctor_type: "User",
  doctor_id: doctor2.id
)

Patient.create!(
  name: "Patient Three",
  phone: "3030303030",
  email: "patient.three@example.com",
  disease: "Allergy",
  appointment_active: true,
  appointment_date: Date.today + 2,
  appointment_time: Time.now + 2.hours,
  receptionist_type: "User",
  receptionist_id: receptionist1.id,
  doctor_type: "User",
  doctor_id: doctor1.id
)

puts "Seeding completed!"