require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "creating a User" do
    visit users_url
    click_on "New User"

    fill_in "Accepts coc", with: @user.accepts_coc
    fill_in "Active", with: @user.active
    fill_in "Discord", with: @user.discord_id
    fill_in "Name", with: @user.name
    check "Over 18" if @user.over_18
    fill_in "Primary email", with: @user.primary_email
    fill_in "Pronouns", with: @user.pronouns
    fill_in "Roles", with: @user.roles
    fill_in "Secondary emails", with: @user.secondary_emails
    fill_in "Users", with: @user.users_id
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "updating a User" do
    visit users_url
    click_on "Edit", match: :first

    fill_in "Accepts coc", with: @user.accepts_coc
    fill_in "Active", with: @user.active
    fill_in "Discord", with: @user.discord_id
    fill_in "Name", with: @user.name
    check "Over 18" if @user.over_18
    fill_in "Primary email", with: @user.primary_email
    fill_in "Pronouns", with: @user.pronouns
    fill_in "Roles", with: @user.roles
    fill_in "Secondary emails", with: @user.secondary_emails
    fill_in "Users", with: @user.users_id
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "destroying a User" do
    visit users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User was successfully destroyed"
  end
end
