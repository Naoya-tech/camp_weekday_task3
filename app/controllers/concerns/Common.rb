module Common
  extend ActiveSupport::Concern
  def calculation
    @result = case @operator

              when "addition"
              @number1 + @number2

              when "subtraction"
              @number1 - @number2

              when "multiplication"
              @number1 * @number2

              when "division"
                begin
                  quotient = @number1 / @number2
                  remainder = @number1 % @number2
                  @result = "#{quotient} .. #{remainder}"

                  rescue => e
                  
                  @result = e
                end
              end
              
  end
end