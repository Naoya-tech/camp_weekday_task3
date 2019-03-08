module Common
  extend ActiveSupport::Concern
  #計算ロジックのみ以下に移動
  def calculation
    @result = case @operator
              when "addition"
                @num1 + @num2
              when "subtraction"
                @num1 - @num2
              when "multiplication"
                @num1 * @num2
              when "division"
                begin
                  quotient = @num1 / @num2
                  remainder = @num1 % @num2
                  @result = "#{quotient} .. #{remainder}"
                rescue ZeroDivisionError => e                  
                  @result = e
                end
              #:operatorにミスがある場合の処理を追加
              else
                "URLが正しくありません"
              end
              
  end
end