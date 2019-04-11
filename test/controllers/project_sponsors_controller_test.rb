require 'test_helper'

class ProjectSponsorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_sponsor = project_sponsors(:one)
  end

  test "should get index" do
    get project_sponsors_url
    assert_response :success
  end

  test "should get new" do
    get new_project_sponsor_url
    assert_response :success
  end

  test "should create project_sponsor" do
    assert_difference('ProjectSponsor.count') do
      post project_sponsors_url, params: { project_sponsor: { ProjectDesc: @project_sponsor.ProjectDesc, ProjectName: @project_sponsor.ProjectName, ProjectSponsorLink: @project_sponsor.ProjectSponsorLink, ProjectSponsorName: @project_sponsor.ProjectSponsorName, ^: @project_sponsor.^ } }
    end

    assert_redirected_to project_sponsor_url(ProjectSponsor.last)
  end

  test "should show project_sponsor" do
    get project_sponsor_url(@project_sponsor)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_sponsor_url(@project_sponsor)
    assert_response :success
  end

  test "should update project_sponsor" do
    patch project_sponsor_url(@project_sponsor), params: { project_sponsor: { ProjectDesc: @project_sponsor.ProjectDesc, ProjectName: @project_sponsor.ProjectName, ProjectSponsorLink: @project_sponsor.ProjectSponsorLink, ProjectSponsorName: @project_sponsor.ProjectSponsorName, ^: @project_sponsor.^ } }
    assert_redirected_to project_sponsor_url(@project_sponsor)
  end

  test "should destroy project_sponsor" do
    assert_difference('ProjectSponsor.count', -1) do
      delete project_sponsor_url(@project_sponsor)
    end

    assert_redirected_to project_sponsors_url
  end
end
