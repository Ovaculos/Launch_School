class MinilangError < StandardError; end
class EmptyStackError < MinilangError; end

class Minilang
  def initialize(code)
    @raw_code_string = code
    @register = 0
    @stack = []
  end

  def eval
    @code_arr = clean_code_array

    @code_arr.each do |token|
      if token.class == Integer
        @register = token
      else
        begin
          self.send(token)
        rescue NoMethodError
          puts "Not valid token: #{token}"
        end
      end
    end
  end

  private

  def clean_code_array
    @raw_code_string.split.map do |token|
      token =~ /\A[-+]?\d+\z/ ? token.to_i : token.downcase.to_sym
    end
  end

  def push
    @stack << @register
  end

  def add
    @register += @stack.pop
  end

  def sub
    @register -= @stack.pop
  end

  def mult
    @register *= @stack.pop
  end

  def div
    @register /= @stack.pop
  end

  def mod
    @register %= @stack.pop
  end

  def pop
    @register = @stack.pop
  end

  def print
    begin
      raise EmptyStackError if @stack.empty? && @register == nil
      puts @register
    rescue EmptyStackError
      puts "Empty stack, and register is `nil`."
    end
  end
end

Minilang.new('PRINT').eval
# 0

Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)

