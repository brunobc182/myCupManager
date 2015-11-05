require 'test_helper'

class DeathmatchesControllerTest < ActionController::TestCase
  setup do
    @deathmatch = deathmatches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deathmatches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deathmatch" do
    assert_difference('Deathmatch.count') do
      post :create, deathmatch: { competitors: @deathmatch.competitors, modality: @deathmatch.modality, name: @deathmatch.name, type_competitors: @deathmatch.type_competitors }
    end

    assert_redirected_to deathmatch_path(assigns(:deathmatch))
  end

  test "should show deathmatch" do
    get :show, id: @deathmatch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deathmatch
    assert_response :success
  end

  test "should update deathmatch" do
    patch :update, id: @deathmatch, deathmatch: { competitors: @deathmatch.competitors, modality: @deathmatch.modality, name: @deathmatch.name, type_competitors: @deathmatch.type_competitors }
    assert_redirected_to deathmatch_path(assigns(:deathmatch))
  end

  test "should destroy deathmatch" do
    assert_difference('Deathmatch.count', -1) do
      delete :destroy, id: @deathmatch
    end

    assert_redirected_to deathmatches_path
  end
end
