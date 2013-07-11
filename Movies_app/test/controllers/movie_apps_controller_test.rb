require 'test_helper'

class MovieAppsControllerTest < ActionController::TestCase
  setup do
    @movie_app = movie_apps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movie_apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movie_app" do
    assert_difference('MovieApp.count') do
      post :create, movie_app: { string: @movie_app.string, title: @movie_app.title }
    end

    assert_redirected_to movie_app_path(assigns(:movie_app))
  end

  test "should show movie_app" do
    get :show, id: @movie_app
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movie_app
    assert_response :success
  end

  test "should update movie_app" do
    patch :update, id: @movie_app, movie_app: { string: @movie_app.string, title: @movie_app.title }
    assert_redirected_to movie_app_path(assigns(:movie_app))
  end

  test "should destroy movie_app" do
    assert_difference('MovieApp.count', -1) do
      delete :destroy, id: @movie_app
    end

    assert_redirected_to movie_apps_path
  end
end
