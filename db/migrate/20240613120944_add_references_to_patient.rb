class AddReferencesToPatient < ActiveRecord::Migration[7.1]
  def change
    add_reference :patients, :receptionist, polymorphic: true, null: false
    add_reference :patients, :doctor, polymorphic: true, null: false
  end
end
