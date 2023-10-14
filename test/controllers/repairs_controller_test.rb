require "test_helper"

class RepairsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @repair = repairs(:one)
  end

  test "should get index" do
    get repairs_url
    assert_response :success
  end

  test "should get new" do
    get new_repair_url
    assert_response :success
  end

  test "should create repair" do
    assert_difference("Repair.count") do
      post repairs_url, params: { repair: { customer_id: @repair.customer_id, description: @repair.description, estimateddate: @repair.estimateddate, typestate_id: @repair.typestate_id, user_id: @repair.user_id, vehicle_id: @repair.vehicle_id } }
    end

    assert_redirected_to repair_url(Repair.last)
  end

  test "should show repair" do
    get repair_url(@repair)
    assert_response :success
  end

  test "should get edit" do
    get edit_repair_url(@repair)
    assert_response :success
  end

  test "should update repair" do
    patch repair_url(@repair), params: { repair: { customer_id: @repair.customer_id, description: @repair.description, estimateddate: @repair.estimateddate, typestate_id: @repair.typestate_id, user_id: @repair.user_id, vehicle_id: @repair.vehicle_id } }
    assert_redirected_to repair_url(@repair)
  end

  test "should destroy repair" do
    assert_difference("Repair.count", -1) do
      delete repair_url(@repair)
    end

    assert_redirected_to repairs_url
  end
end
