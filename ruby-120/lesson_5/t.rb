module ProcessedFood
  class Goldfish
    def eat
      puts 'That was yummy'
    end
  end
end

food = ProcessedFood::Goldfish.new
p food
food.eat