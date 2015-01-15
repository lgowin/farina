require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { owner: @project.owner, product_line: @project.product_line, program_id: @project.program_id, proj_notes: @project.proj_notes, proj_status: @project.proj_status, proj_status_prev: @project.proj_status_prev, project_name: @project.project_name, project_phase: @project.project_phase, project_priority: @project.project_priority, sponsor: @project.sponsor }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: { owner: @project.owner, product_line: @project.product_line, program_id: @project.program_id, proj_notes: @project.proj_notes, proj_status: @project.proj_status, proj_status_prev: @project.proj_status_prev, project_name: @project.project_name, project_phase: @project.project_phase, project_priority: @project.project_priority, sponsor: @project.sponsor }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
