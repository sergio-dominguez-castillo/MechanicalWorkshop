require "application_system_test_case"

class RepairsTest < ApplicationSystemTestCase
  setup do
    @repair = repairs(:one)
  end

  test "visiting the index" do
    visit repairs_url
    assert_selector "h1", text: "Repairs"
  end

  test "should create repair" do
    visit repairs_url
    click_on "New repair"

    fill_in "Customer", with: @repair.customer_id
    fill_in "Description", with: @repair.description
    fill_in "Estimateddate", with: @repair.estimateddate
    fill_in "Typestate", with: @repair.typestate_id
    fill_in "User", with: @repair.user_id
    fill_in "Vehicle", with: @repair.vehicle_id
    click_on "Create Repair"

    assert_text "Repair was successfully created"
    click_on "Back"
  end

  test "should update Repair" do
    visit repair_url(@repair)
    click_on "Edit this repair", match: :first

    fill_in "Customer", with: @repair.customer_id
    fill_in "Description", with: @repair.description
    fill_in "Estimateddate", with: @repair.estimateddate
    fill_in "Typestate", with: @repair.typestate_id
    fill_in "User", with: @repair.user_id
    fill_in "Vehicle", with: @repair.vehicle_id
    click_on "Update Repair"

    assert_text "Repair was successfully updated"
    click_on "Back"
  end

  test "should destroy Repair" do
    visit repair_url(@repair)
    click_on "Destroy this repair", match: :first

    assert_text "Repair was successfully destroyed"
  end
end
