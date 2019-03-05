class CalcsController < ApplicationController

  def show
    @number1 = params[:number1]
    @number2 = params[:number2]
    quotient = @number1.to_i / @number2.to_i
    remainder = @number1.to_i % @number2.to_i

    if params[:operator] == "addition"
        @operator = @number1.to_i + @number2.to_i
    elsif params[:operator] == "subtraction"
        @operator = @number1.to_i - @number2.to_i
    elsif params[:operator] == "multiplication"
        @operator =  @number1.to_i * @number2.to_i
    elsif params[:operator] == "division"
        @operator = "#{quotient} .. #{remainder}"
    end

  end

end
