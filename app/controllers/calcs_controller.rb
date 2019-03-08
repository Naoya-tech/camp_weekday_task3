class CalcsController < ApplicationController

  def show
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    operator = params[:operator]

    @result = case operator

              when "addition"
              @num1 + @num2

              when "subtraction"
              @num1 - @num2

              when "multiplication"
              @num1 * @num2

              when "division"
                if @num2 == 0
                  "ゼロでは計算できません"
                else
                  @num1 / @num2.to_f
                end
              # :operatorが正しくないときの処理を追加
              else
                "URLが正しくありません"
              end
              
  end

end
