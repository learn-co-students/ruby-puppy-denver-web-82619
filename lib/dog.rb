# Add your code here
require 'pry'
class Dog
    attr_accessor :name
    @@all = []
    def save
        @@all << self
    end
    def initialize(name)
        @name = name
        save
    end
    def self.all
        @@all
    end
    def self.clear_all
        @@all.clear
    end
    def self.print_all
        method = self.all.map do |dog|
            dog.name
        end
        x = method.join("\n")
        puts x
    end
end