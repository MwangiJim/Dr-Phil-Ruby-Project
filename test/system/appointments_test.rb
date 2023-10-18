require "application_system_test_case"

class AppointmentsTest < ApplicationSystemTestCase
  setup do
    @appointment = appointments(:one)
  end

  test "visiting the index" do
    visit appointments_url
    assert_selector "h1", text: "Appointments"
  end

  test "should create appointment" do
    visit appointments_url
    click_on "New appointment"

    fill_in "Age", with: @appointment.age
    fill_in "Appointment date", with: @appointment.appointment_date
    fill_in "Appointment time", with: @appointment.appointment_time
    fill_in "Patient f name", with: @appointment.patient_f_name
    fill_in "Patient l name", with: @appointment.patient_l_name
    fill_in "Pre existing condition", with: @appointment.pre_existing_condition
    fill_in "Sex", with: @appointment.sex
    fill_in "Weight", with: @appointment.weight
    click_on "Create Appointment"

    assert_text "Appointment was successfully created"
    click_on "Back"
  end

  test "should update Appointment" do
    visit appointment_url(@appointment)
    click_on "Edit this appointment", match: :first

    fill_in "Age", with: @appointment.age
    fill_in "Appointment date", with: @appointment.appointment_date
    fill_in "Appointment time", with: @appointment.appointment_time
    fill_in "Patient f name", with: @appointment.patient_f_name
    fill_in "Patient l name", with: @appointment.patient_l_name
    fill_in "Pre existing condition", with: @appointment.pre_existing_condition
    fill_in "Sex", with: @appointment.sex
    fill_in "Weight", with: @appointment.weight
    click_on "Update Appointment"

    assert_text "Appointment was successfully updated"
    click_on "Back"
  end

  test "should destroy Appointment" do
    visit appointment_url(@appointment)
    click_on "Destroy this appointment", match: :first

    assert_text "Appointment was successfully destroyed"
  end
end
