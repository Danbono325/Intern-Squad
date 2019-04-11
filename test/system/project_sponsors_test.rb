require "application_system_test_case"

class ProjectSponsorsTest < ApplicationSystemTestCase
  setup do
    @project_sponsor = project_sponsors(:one)
  end

  test "visiting the index" do
    visit project_sponsors_url
    assert_selector "h1", text: "Project Sponsors"
  end

  test "creating a Project sponsor" do
    visit project_sponsors_url
    click_on "New Project Sponsor"

    fill_in "Project description", with: @project_sponsor.ProjectDesc
    fill_in "Project Name", with: @project_sponsor.ProjectName
    fill_in "Project Sponsor Link", with: @project_sponsor.ProjectSponsorLink
    fill_in "Project Sponsor Name", with: @project_sponsor.ProjectSponsorName
    click_on "Create Project sponsor"

    assert_text "Project Sponsor Form was Successful Submited"
    click_on "Back"
  end
end
