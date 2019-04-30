require "application_system_test_case"

class InternsTest < ApplicationSystemTestCase
  setup do
    @intern = interns(:one)
  end

  test "visiting the index" do
    visit interns_url
    assert_selector "h1", text: "Interns"
  end

  test "creating a Intern" do
    visit interns_url
    click_on "New Intern"

    fill_in "Name", with: @intern.name
    fill_in "Ai", with: @intern.ai
    fill_in "Database", with: @intern.database
    fill_in "Education", with: @intern.education
    fill_in "Email", with: @intern.email
    fill_in "Hours", with: @intern.hours
    fill_in "Html", with: @intern.html
    fill_in "Java", with: @intern.java
    fill_in "Javascript", with: @intern.javascript
    fill_in "School", with: @intern.school
    click_on "Create Intern"

    assert_text "Intern was successfully created"
    click_on "Back"
  end

  test "updating a Intern" do
    visit interns_url
    click_on "Edit", match: :first

    fill_in "Name", with: @intern.name
    fill_in "Ai", with: @intern.ai
    fill_in "Database", with: @intern.database
    fill_in "Education", with: @intern.education
    fill_in "Email", with: @intern.email
    fill_in "Hours", with: @intern.hours
    fill_in "Html", with: @intern.html
    fill_in "Java", with: @intern.java
    fill_in "Javascript", with: @intern.javascript
    fill_in "School", with: @intern.school
    click_on "Update Intern"

    assert_text "Intern was successfully updated"
    click_on "Back"
  end

  test "destroying a Intern" do
    visit interns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Intern was successfully destroyed"
  end
end
