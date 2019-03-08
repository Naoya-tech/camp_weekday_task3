module Common
  extend ActiveSupport::Concern
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

                  rescue => e
                  
                  @result = e
                end
              end
              
  end
end