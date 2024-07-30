require "test_helper"

class ReportsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @start_date = '2024-07-01'
    @end_date = '2024-07-31'
  end

  test "should get index" do
    get reports_url
    assert_response :success
  end

  test "should get report_by_category" do
    get reports_by_category_url, params: { start_date: @start_date, end_date: @end_date }
    assert_response :success

    assert_not_nil assigns(:categories)
    assert_not_nil assigns(:amounts)
  end

  test "should get report_by_date" do
    get reports_by_date_url, params: { start_date: @start_date, end_date: @end_date }
    assert_response :success

    assert_not_nil assigns(:dates)
    assert_not_nil assigns(:income_data)
    assert_not_nil assigns(:expense_data)
  end
end
