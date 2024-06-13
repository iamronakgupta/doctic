class AddReferencesToPatient < ActiveRecord::Migration[7.1]
  def change
    add_reference :patients, :receptionist, null: false, foreign_key: true
    add_reference :patients, :doctor, null: false, foreign_key: true
  end
end
