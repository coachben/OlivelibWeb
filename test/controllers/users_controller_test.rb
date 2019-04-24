require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { admin: @user.admin, card_exp_month: @user.card_exp_month, card_exp_year: @user.card_exp_year, card_last4: @user.card_last4, card_type: @user.card_type, email: @user.email, name: @user.name, stripe_id: @user.stripe_id, stripe_subscription_id: @user.stripe_subscription_id, subscr: @user.subscr } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { admin: @user.admin, card_exp_month: @user.card_exp_month, card_exp_year: @user.card_exp_year, card_last4: @user.card_last4, card_type: @user.card_type, email: @user.email, name: @user.name, stripe_id: @user.stripe_id, stripe_subscription_id: @user.stripe_subscription_id, subscr: @user.subscr } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
