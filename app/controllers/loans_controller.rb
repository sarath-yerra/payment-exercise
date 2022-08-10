class LoansController < ApplicationController
  def index
    render json: Loan.all.to_json(:methods => :outstanding_balance)
  end

  def show
    @loan = Loan.find(params[:id])
    render json: @loan.to_json(:methods => :outstanding_balance)
  end
end
