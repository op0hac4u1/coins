#encoding:  UTF-8

require 'sinatra'
require 'sinatra/reloader'


class Dog

 def initialize
 	@weight = 0.5
 	@age = 1
 end

 def my_weight
 	@weight.to_s
 end

 def eat
 	@weight = @weight + 0.5
 	
 end

 def run 
 	
 end

 def walk
 	
 end

end


aaaaa = Dog.new
bbbbb = Dog.new
aaaaa.run
aaaaa.my_weight
aaaaa.eat
aaaaa.my_weight

# 강아지
# 먹는다
# 뛴다
# 걷는다 