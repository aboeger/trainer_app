require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post :create, contact: { birth_date: @contact.birth_date, city: @contact.city, email: @contact.email, first_name: @contact.first_name, height: @contact.height, last_name: @contact.last_name, primary_number: @contact.primary_number, secondary_number: @contact.secondary_number, state: @contact.state, street_address1: @contact.street_address1, street_address2: @contact.street_address2, type_id: @contact.type_id, weight: @contact.weight, zip_code: @contact.zip_code }
    end

    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should show contact" do
    get :show, id: @contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact
    assert_response :success
  end

  test "should update contact" do
    patch :update, id: @contact, contact: { birth_date: @contact.birth_date, city: @contact.city, email: @contact.email, first_name: @contact.first_name, height: @contact.height, last_name: @contact.last_name, primary_number: @contact.primary_number, secondary_number: @contact.secondary_number, state: @contact.state, street_address1: @contact.street_address1, street_address2: @contact.street_address2, type_id: @contact.type_id, weight: @contact.weight, zip_code: @contact.zip_code }
    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete :destroy, id: @contact
    end

    assert_redirected_to contacts_path
  end
end
