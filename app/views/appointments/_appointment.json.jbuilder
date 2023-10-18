json.extract! appointment, :id, :patient_f_name, :patient_l_name, :age, :sex, :weight, :pre_existing_condition, :appointment_date, :appointment_time, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
