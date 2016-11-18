require 'test_helper'

class DialerPricesControllerTest < ActionController::TestCase
  setup do
    @dialer_price = dialer_prices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dialer_prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dialer_price" do
    assert_difference('DialerPrice.count') do
      post :create, dialer_price: {  }
    end

    assert_redirected_to dialer_price_path(assigns(:dialer_price))
  end

  test "should show dialer_price" do
    get :show, id: @dialer_price
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dialer_price
    assert_response :success
  end

  test "should update dialer_price" do
    patch :update, id: @dialer_price, dialer_price: {  }
    assert_redirected_to dialer_price_path(assigns(:dialer_price))
  end

  test "should destroy dialer_price" do
    assert_difference('DialerPrice.count', -1) do
      delete :destroy, id: @dialer_price
    end

    assert_redirected_to dialer_prices_path
  end
end
