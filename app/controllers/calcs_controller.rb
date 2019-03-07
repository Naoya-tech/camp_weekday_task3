class CalcsController < ApplicationController
  include Common
  def show
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operator = params[:result]
    calculation
  end

end
