class CalcsController < ApplicationController

  def show
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    operator = params[:operator]

    @result = case operator

              when "addition"
              @number1 + @number2

              when "subtraction"
              @number1 - @number2

              when "multiplication"
              @number1 * @number2

              when "division"
                if @number2 == 0
                  "ゼロでは計算できません"
                else
                  @number1 / @number2.to_f
                end
              end
              
  end

end
