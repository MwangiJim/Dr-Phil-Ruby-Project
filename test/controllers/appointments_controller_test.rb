require "test_helper"

class AppointmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appointment = appointments(:one)
  end

  test "should get index" do
    get appointments_url
    assert_response :success
  end

  test "should get new" do
    get new_appointment_url
    assert_response :success
  end

  test "should create appointment" do
    assert_difference("Appointment.count") do
      post appointments_url, params: { appointment: { age: @appointment.age, appointment_date: @appointment.appointment_date, appointment_time: @appointment.appointment_time, patient_f_name: @appointment.patient_f_name, patient_l_name: @appointment.patient_l_name, pre_existing_condition: @appointment.pre_existing_condition, sex: @appointment.sex, weight: @appointment.weight } }
    end

    assert_redirected_to appointment_url(Appointment.last)
  end

  test "should show appointment" do
    get appointment_url(@appointment)
    assert_response :success
  end

  test "should get edit" do
    get edit_appointment_url(@appointment)
    assert_response :success
  end

  test "should update appointment" do
    patch appointment_url(@appointment), params: { appointment: { age: @appointment.age, appointment_date: @appointment.appointment_date, appointment_time: @appointment.appointment_time, patient_f_name: @appointment.patient_f_name, patient_l_name: @appointment.patient_l_name, pre_existing_condition: @appointment.pre_existing_condition, sex: @appointment.sex, weight: @appointment.weight } }
    assert_redirected_to appointment_url(@appointment)
  end

  test "should destroy appointment" do
    assert_difference("Appointment.count", -1) do
      delete appointment_url(@appointment)
    end

    assert_redirected_to appointments_url
  end
end
