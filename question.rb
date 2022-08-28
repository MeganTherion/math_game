class Question
  attr_reader :int1, :int2, :answer

  def initialize
    @int_1 = rand(1..20)
    @int_2 = rand(1..20)
    @ops = [:+, :-, :*, :/] 
    @op = @ops.sample
  end

  def question
    puts q = "What does #{@int_1} #{@op} #{@int_2} equal?"
  end

  def answer
    @int_1.send(@op, @int_2)
  end
end

 
        