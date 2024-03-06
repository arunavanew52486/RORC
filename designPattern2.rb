class AnimalFactory
    def create_animal(type)
        case type
            when 'dog'
                Dog.new
            when 'cat'
                Cat.new
            else
                raise "unknown animal type: #{type}"
        end
    end
end

class Dog
    def speak
        "Woof!"
    end
end

class Cat
    def speak
        "Meow!"
    end
end

factory = AnimalFactory.new
dog = factory.create_animal('dog')
cat = factory.create_animal('cat')

puts dog.speak
puts cat.speak





