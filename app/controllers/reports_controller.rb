class ReportsController < ApplicationController
  def index
  end

  def report_by_category
    @start_date = params[:start_date].to_date
    @end_date = params[:end_date].to_date

    operation_data = Operation.where(odate: @start_date..@end_date.end_of_day).group(:category).sum(:amount)
    @categories = operation_data.keys.map(&:name)
    @amounts = operation_data.values
  end

  def report_by_date
    @start_date = params[:start_date].to_date
    @end_date = params[:end_date].to_date

    incomes = Operation.incomes.where(odate: @start_date..@end_date.end_of_day).group_by_day(:odate).sum(:amount)
    expenses = Operation.expenses.where(odate: @start_date..@end_date.end_of_day).group_by_day(:odate).sum(:amount)

    @dates = (@start_date..@end_date).map { |date| date.strftime("%Y-%m-%d") }
    @income_data = @dates.map { |date| incomes[Date.parse(date)] || 0 }
    @expense_data = @dates.map { |date| expenses[Date.parse(date)] || 0 }
  end
end
