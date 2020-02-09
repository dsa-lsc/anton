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
      post users_url, params: { user: { accepts_coc: @user.accepts_coc, active: @user.active, discord_id: @user.discord_id, name: @user.name, over_18: @user.over_18, primary_email: @user.primary_email, pronouns: @user.pronouns, roles: @user.roles, secondary_emails: @user.secondary_emails, users_id: @user.users_id } }
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
    patch user_url(@user), params: { user: { accepts_coc: @user.accepts_coc, active: @user.active, discord_id: @user.discord_id, name: @user.name, over_18: @user.over_18, primary_email: @user.primary_email, pronouns: @user.pronouns, roles: @user.roles, secondary_emails: @user.secondary_emails, users_id: @user.users_id } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
