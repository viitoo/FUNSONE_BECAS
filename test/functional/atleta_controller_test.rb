require 'test_helper'

class AtletaControllerTest < ActionController::TestCase
  setup do
    @atletum = atleta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:atleta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create atletum" do
    assert_difference('Atletum.count') do
      post :create, atletum: { apellidos: @atletum.apellidos, cedula: @atletum.cedula, disciplina: @atletum.disciplina, nombres: @atletum.nombres, telefono: @atletum.telefono }
    end

    assert_redirected_to atletum_path(assigns(:atletum))
  end

  test "should show atletum" do
    get :show, id: @atletum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @atletum
    assert_response :success
  end

  test "should update atletum" do
    put :update, id: @atletum, atletum: { apellidos: @atletum.apellidos, cedula: @atletum.cedula, disciplina: @atletum.disciplina, nombres: @atletum.nombres, telefono: @atletum.telefono }
    assert_redirected_to atletum_path(assigns(:atletum))
  end

  test "should destroy atletum" do
    assert_difference('Atletum.count', -1) do
      delete :destroy, id: @atletum
    end

    assert_redirected_to atleta_path
  end
end
