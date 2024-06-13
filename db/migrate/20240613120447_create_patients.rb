class CreatePatients < ActiveRecord::Migration[7.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :disease
      t.boolean :appointment_active
      t.date :appointment_date
      t.time :appointment_time
      t.timestamps
    end
  end
end
