class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.string :patient_f_name
      t.string :patient_l_name
      t.integer :age
      t.string :sex
      t.integer :weight
      t.string :pre_existing_condition
      t.date :appointment_date
      t.time :appointment_time

      t.timestamps
    end
  end
end
