class Question
  attr_accessor :num1, :num2, :answer

  def initialize
    @num1 = rand(10)
    @num2 = rand(10)
    @answer = @num1 + @num2
  end

  
end
