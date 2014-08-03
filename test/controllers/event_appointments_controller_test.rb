require 'test_helper'

class EventAppointmentsControllerTest < ActionController::TestCase
  setup do
    @event_appointment = event_appointments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_appointments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_appointment" do
    assert_difference('EventAppointment.count') do
      post :create, event_appointment: { end: @event_appointment.end, notes: @event_appointment.notes, start: @event_appointment.start, title: @event_appointment.title }
    end

    assert_redirected_to event_appointment_path(assigns(:event_appointment))
  end

  test "should show event_appointment" do
    get :show, id: @event_appointment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_appointment
    assert_response :success
  end

  test "should update event_appointment" do
    patch :update, id: @event_appointment, event_appointment: { end: @event_appointment.end, notes: @event_appointment.notes, start: @event_appointment.start, title: @event_appointment.title }
    assert_redirected_to event_appointment_path(assigns(:event_appointment))
  end

  test "should destroy event_appointment" do
    assert_difference('EventAppointment.count', -1) do
      delete :destroy, id: @event_appointment
    end

    assert_redirected_to event_appointments_path
  end
end
