class Guy
  def initialize(name)
    @name = name
  end

  def info
    puts "My name is #{@name}"
  end
end

man = Guy.new("Jeff")
man.info