require 'test_helper'

class EventRemindersControllerTest < ActionController::TestCase
  setup do
    @event_reminder = event_reminders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_reminders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_reminder" do
    assert_difference('EventReminder.count') do
      post :create, event_reminder: { end: @event_reminder.end, notes: @event_reminder.notes, start: @event_reminder.start, title: @event_reminder.title }
    end

    assert_redirected_to event_reminder_path(assigns(:event_reminder))
  end

  test "should show event_reminder" do
    get :show, id: @event_reminder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_reminder
    assert_response :success
  end

  test "should update event_reminder" do
    patch :update, id: @event_reminder, event_reminder: { end: @event_reminder.end, notes: @event_reminder.notes, start: @event_reminder.start, title: @event_reminder.title }
    assert_redirected_to event_reminder_path(assigns(:event_reminder))
  end

  test "should destroy event_reminder" do
    assert_difference('EventReminder.count', -1) do
      delete :destroy, id: @event_reminder
    end

    assert_redirected_to event_reminders_path
  end
end
